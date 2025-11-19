@interface CPMemoryPoolFile
- (CPMemoryPoolFile)initWithLabel:(const char *)a3 slotCount:(unint64_t)a4 slotLength:(unint64_t)a5;
- (id)nextSlotWithBytes:(const void *)a3 length:(unint64_t)a4;
- (void)dealloc;
- (void)returnSlot:(void *)a3;
@end

@implementation CPMemoryPoolFile

- (CPMemoryPoolFile)initWithLabel:(const char *)a3 slotCount:(unint64_t)a4 slotLength:(unint64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CPMemoryPoolFile;
  v8 = [(CPMemoryPoolFile *)&v24 init];
  v9 = v8;
  if (v8)
  {
    v8->_fd = -1;
    v10 = *MEMORY[0x1E69E9AC8] + a5 * a4 - 1;
    v11 = -*MEMORY[0x1E69E9AC8];
    pthread_mutex_init(&v8->_mutex, 0);
    v9->_slots = -1;
    v9->_slotCount = a4;
    v9->_slotLength = a5;
    v12 = *MEMORY[0x1E695E480];
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], a4);
    v9->_usedSlots = Mutable;
    CFBitVectorSetCount(Mutable, a4);
    context.version = 0;
    memset(&context.retain, 0, 40);
    context.info = v9;
    context.deallocate = __deallocatorCallback;
    context.preferredSize = 0;
    v9->_deallocator = CFAllocatorCreate(v12, &context);
    bzero(__str, 0x400uLL);
    v14 = getenv("TMPDIR");
    v15 = "/tmp";
    if (v14)
    {
      v15 = v14;
    }

    if (snprintf(__str, 0x400uLL, "%s/%s.XXXXXX", v15, a3) != -1)
    {
      v16 = mkstemp(__str);
      v9->_fd = v16;
      if ((v16 & 0x80000000) == 0)
      {
        if (ftruncate(v16, v10 & v11) == -1)
        {
          close(v9->_fd);
          v9->_fd = -1;
        }

        else
        {
          v17 = open(__str, 0);
          if (v17 != -1)
          {
            v18 = v17;
            v9->_slots = mmap(0, v10 & v11, 1, 1, v17, 0);
            close(v18);
          }
        }

        unlink(__str);
      }
    }

    if (v9->_slots == -1)
    {
      fd = v9->_fd;
      if (fd)
      {
        close(fd);
        v9->_fd = -1;
      }

      v20 = mmap(0, v10 & v11, 3, 4098, -1, 0);
      v9->_slots = v20;
      if (v20 == -1)
      {

        v9 = 0;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  fd = self->_fd;
  if (fd != -1)
  {
    close(fd);
  }

  slots = self->_slots;
  if ((slots + 1) >= 2)
  {
    munmap(slots, (*MEMORY[0x1E69E9AC8] + self->_slotLength * self->_slotCount - 1) & -*MEMORY[0x1E69E9AC8]);
  }

  usedSlots = self->_usedSlots;
  if (usedSlots)
  {
    CFRelease(usedSlots);
  }

  deallocator = self->_deallocator;
  if (deallocator)
  {
    CFRelease(deallocator);
  }

  v7.receiver = self;
  v7.super_class = CPMemoryPoolFile;
  [(CPMemoryPoolFile *)&v7 dealloc];
}

- (id)nextSlotWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (self->_slotLength < a4)
  {
    [CPMemoryPoolFile nextSlotWithBytes:a2 length:self];
  }

  pthread_mutex_lock(&self->_mutex);
  usedSlots = self->_usedSlots;
  v21.length = CFBitVectorGetCount(usedSlots);
  v21.location = 0;
  FirstIndexOfBit = CFBitVectorGetFirstIndexOfBit(usedSlots, v21, 0);
  if (FirstIndexOfBit == -1)
  {
    goto LABEL_19;
  }

  v9 = FirstIndexOfBit;
  slotLength = self->_slotLength;
  CFBitVectorSetBitAtIndex(self->_usedSlots, FirstIndexOfBit, 1u);
  slots = self->_slots;
  v12 = &slots[(*MEMORY[0x1E69E9AC8] + self->_slotLength * self->_slotCount - 1) & -*MEMORY[0x1E69E9AC8]] > a3 && a3 + a4 > slots;
  v13 = a3;
  if (v12)
  {
    v13 = malloc_type_malloc(a4, 0xD0738A1DuLL);
    memcpy(v13, a3, a4);
  }

  v14 = slotLength * v9;
  fd = self->_fd;
  if (fd == -1)
  {
    memcpy(&self->_slots[v14], v13, a4);
    v16 = 1;
  }

  else
  {
    v16 = pwrite(fd, v13, a4, v14) >= 0;
  }

  if (v13 != a3)
  {
    free(v13);
  }

  if (!v16)
  {
    CFBitVectorSetBitAtIndex(self->_usedSlots, v9, 0);
    goto LABEL_19;
  }

  v17 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], &self->_slots[v14], self->_slotLength, self->_deallocator);
  if (!v17)
  {
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v18 = v17;
  v19 = self;
LABEL_20:
  pthread_mutex_unlock(&self->_mutex);
  return v18;
}

- (void)returnSlot:(void *)a3
{
  pthread_mutex_lock(&self->_mutex);
  CFBitVectorSetBitAtIndex(self->_usedSlots, (a3 - self->_slots) / self->_slotLength, 0);
  pthread_mutex_unlock(&self->_mutex);
}

@end