@interface SKEState
@end

@implementation SKEState

void __SKEState_Create_block_invoke(uint64_t a1)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  v4 = -1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    SecKeyExchangeNodeCreateAsResponder(v2, *(v3 + 96), 0, 0, @"responder", &cf, &v4, v3 + 104);
  }

  SecKeyExchangeNodeCreateAsInitiator(*(v3 + 96), 0, 0, @"initiator", @"responder", 0, &cf, v3 + 104);
}

uint64_t __SKEState_CopyBlob_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  pthread_mutex_lock((v2 + 120));
  if (SKEState_CopyBlob_immediate(*(a1 + 40), *(a1 + 48), *(a1 + 32)))
  {
    v3 = malloc_type_malloc(0x18uLL, 0x10A00406B6A53AFuLL);
    if (v3)
    {
      *v3 = *(a1 + 32);
      v3[2] = *(a1 + 48);
      *(v3 + 2) = 0;
      v4 = (*(a1 + 40) + 72);
      do
      {
        v5 = v4;
        v6 = *v4;
        v4 = (*v4 + 16);
      }

      while (v6);
      *v5 = v3;
    }

    else
    {
      _Block_release(*(a1 + 32));
      v7 = *(a1 + 40);
      *(v7 + 112) = 2;
      *(v7 + 88) = 1;
      SKEState_CheckBlobCallbacks(v7);
      SKEState_CallSecretKeyCallbacks(v7);
    }
  }

  else
  {
    _Block_release(*(a1 + 32));
  }

  return pthread_mutex_unlock((v2 + 120));
}

void __SKEState_CopyBlobSync_block_invoke(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 64);
  if (v5 == a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *(*(*(a1 + 48) + 8) + 24) = a5;
    dispatch_semaphore_signal(*(*(*(a1 + 56) + 8) + 24));
    v7 = *(*(*(a1 + 56) + 8) + 24);

    dispatch_release(v7);
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], " ** Callback mismatch (%d != %d)", v5, a2);
  }
}

uint64_t __SKEState_CopySecretKey_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  pthread_mutex_lock((v2 + 120));
  v3 = *(a1 + 40);
  if (*(v3 + 88))
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], v4);
      v3 = *(a1 + 40);
    }

    else
    {
      Copy = 0;
    }

    v10 = *(v3 + 112);
    global_queue = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __SKEState_CopySecretKey_block_invoke_2;
    block[3] = &unk_278BD4350;
    block[4] = *(a1 + 32);
    block[5] = Copy;
    v15 = v10;
    dispatch_async(global_queue, block);
    _Block_release(*(a1 + 32));
  }

  else
  {
    v6 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v6)
    {
      *v6 = *(a1 + 32);
      v6[1] = 0;
      v7 = (*(a1 + 40) + 80);
      do
      {
        v8 = v7;
        v9 = *v7;
        v7 = (*v7 + 8);
      }

      while (v9);
      *v8 = v6;
    }

    else
    {
      _Block_release(*(a1 + 32));
      v13 = *(a1 + 40);
      *(v13 + 112) = 2;
      *(v13 + 88) = 1;
      SKEState_CheckBlobCallbacks(v13);
      SKEState_CallSecretKeyCallbacks(v13);
    }
  }

  return pthread_mutex_unlock((v2 + 120));
}

void __SKEState_CopySecretKeySync_block_invoke(void *a1, uint64_t a2, int a3)
{
  *(*(a1[4] + 8) + 24) = a2;
  *(*(a1[5] + 8) + 24) = a3;
  dispatch_semaphore_signal(*(*(a1[6] + 8) + 24));
  v4 = *(*(a1[6] + 8) + 24);

  dispatch_release(v4);
}

@end