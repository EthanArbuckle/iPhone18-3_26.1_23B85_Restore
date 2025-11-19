@interface AVRoutingSerializedMostlySynchronousReentrantBlockScheduler
+ (void)initialize;
- (AVRoutingSerializedMostlySynchronousReentrantBlockScheduler)init;
- (void)dealloc;
- (void)scheduleBlock:(id)a3;
@end

@implementation AVRoutingSerializedMostlySynchronousReentrantBlockScheduler

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  blockSerializationLock = self->_blockSerializationLock;
  FigSimpleMutexDestroy();
  ivarAccessLock = self->_ivarAccessLock;
  FigSimpleMutexDestroy();
  v5.receiver = self;
  v5.super_class = AVRoutingSerializedMostlySynchronousReentrantBlockScheduler;
  [(AVRoutingSerializedMostlySynchronousReentrantBlockScheduler *)&v5 dealloc];
}

- (void)scheduleBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  ivarAccessLock = self->_ivarAccessLock;
  FigSimpleMutexLock();
  v6 = [a3 copy];
  v7 = [(NSArray *)self->_blocks arrayByAddingObject:v6];

  self->_blocks = [(NSArray *)v7 copy];
  LODWORD(v7) = MEMORY[0x1AC59F790](self->_blockSerializationLock);

  v8 = self->_ivarAccessLock;
  FigSimpleMutexUnlock();
  if (v7)
  {
    v9 = self->_ivarAccessLock;
    FigSimpleMutexLock();
    if ([(NSArray *)self->_blocks count])
    {
      while (1)
      {
        v10 = objc_alloc(MEMORY[0x1E696ADD8]);
        v11 = [MEMORY[0x1E696AC90] indexSet];
        v12 = [v10 initWithInsertIndexes:v11 insertedObjects:0 removeIndexes:objc_msgSend(MEMORY[0x1E696AC90] removedObjects:{"indexSetWithIndex:", 0), 0}];
        v13 = [-[NSArray firstObject](self->_blocks "firstObject")];
        v14 = [(NSArray *)self->_blocks arrayByApplyingDifference:v12];

        self->_blocks = [(NSArray *)v14 copy];
        v15 = self->_ivarAccessLock;
        FigSimpleMutexUnlock();
        if (!v13)
        {
          break;
        }

        v13[2](v13);

        v16 = self->_ivarAccessLock;
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
      blockSerializationLock = self->_blockSerializationLock;
      FigSimpleMutexUnlock();
      v18 = self->_ivarAccessLock;
      FigSimpleMutexUnlock();
    }

    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (dword_1EB46D5E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = *MEMORY[0x1E69E9840];
  }
}

- (AVRoutingSerializedMostlySynchronousReentrantBlockScheduler)init
{
  v5.receiver = self;
  v5.super_class = AVRoutingSerializedMostlySynchronousReentrantBlockScheduler;
  v2 = [(AVRoutingSerializedMostlySynchronousReentrantBlockScheduler *)&v5 init];
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

@end