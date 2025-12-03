@interface AVSerializedMostlySynchronousReentrantBlockScheduler
+ (void)initialize;
- (AVSerializedMostlySynchronousReentrantBlockScheduler)init;
- (void)dealloc;
- (void)scheduleBlock:(id)block;
@end

@implementation AVSerializedMostlySynchronousReentrantBlockScheduler

- (AVSerializedMostlySynchronousReentrantBlockScheduler)init
{
  v5.receiver = self;
  v5.super_class = AVSerializedMostlySynchronousReentrantBlockScheduler;
  v2 = [(AVSerializedMostlySynchronousReentrantBlockScheduler *)&v5 init];
  if (v2)
  {
    v2->_ivarAccessLock = FigSimpleMutexCreate();
    v2->_blocks = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_blockSerializationLock = FigReentrantMutexCreate();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVSerializedMostlySynchronousReentrantBlockScheduler;
  [(AVSerializedMostlySynchronousReentrantBlockScheduler *)&v3 dealloc];
}

- (void)scheduleBlock:(id)block
{
  FigSimpleMutexLock();
  v5 = [block copy];
  v6 = [(NSArray *)self->_blocks arrayByAddingObject:v5];

  self->_blocks = [(NSArray *)v6 copy];
  LODWORD(v6) = MEMORY[0x19A8CA9C0](self->_blockSerializationLock);

  FigSimpleMutexUnlock();
  if (v6)
  {
    FigSimpleMutexLock();
    if ([(NSArray *)self->_blocks count])
    {
      while (1)
      {
        v7 = objc_alloc(MEMORY[0x1E696ADD8]);
        indexSet = [MEMORY[0x1E696AC90] indexSet];
        v9 = [v7 initWithInsertIndexes:indexSet insertedObjects:0 removeIndexes:objc_msgSend(MEMORY[0x1E696AC90] removedObjects:{"indexSetWithIndex:", 0), 0}];
        v10 = [-[NSArray firstObject](self->_blocks "firstObject")];
        v11 = [(NSArray *)self->_blocks arrayByApplyingDifference:v9];

        self->_blocks = [(NSArray *)v11 copy];
        FigSimpleMutexUnlock();
        if (!v10)
        {
          break;
        }

        v10[2](v10);

        FigSimpleMutexLock();
        if (![(NSArray *)self->_blocks count])
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      FigSimpleMutexUnlock();
      FigSimpleMutexUnlock();
    }
  }

  else if (dword_1ED5AC2B8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end