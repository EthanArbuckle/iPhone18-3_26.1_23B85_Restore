@interface VCDispatchQueue
+ (id)defaultManager;
- (VCDispatchQueue)init;
- (id)getCustomRootQueueWithPriority:(int)priority isFixedPriority:(BOOL)fixedPriority;
- (void)dealloc;
@end

@implementation VCDispatchQueue

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[VCDispatchQueue defaultManager];
  }

  return _vcDispatchQueue;
}

VCDispatchQueue *__33__VCDispatchQueue_defaultManager__block_invoke()
{
  result = objc_alloc_init(VCDispatchQueue);
  _vcDispatchQueue = result;
  return result;
}

- (VCDispatchQueue)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCDispatchQueue;
  v2 = [(VCDispatchQueue *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_lock, 0);
    v3->_rootQueues = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  object = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rootQueues = self->_rootQueues;
  v4 = [(NSMutableArray *)rootQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(rootQueues);
        }

        [*(*(&v12 + 1) + 8 * i) getValue:&v9 size:16];
        if (object)
        {
          dispatch_release(object);
        }
      }

      v5 = [(NSMutableArray *)rootQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_rootQueues removeAllObjects];

  pthread_mutex_destroy(&self->_lock);
  v8.receiver = self;
  v8.super_class = VCDispatchQueue;
  [(VCDispatchQueue *)&v8 dealloc];
}

- (id)getCustomRootQueueWithPriority:(int)priority isFixedPriority:(BOOL)fixedPriority
{
  fixedPriorityCopy = fixedPriority;
  v29 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  rootQueues = self->_rootQueues;
  v8 = [(NSMutableArray *)rootQueues countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(rootQueues);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v23.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v23.__opaque = 0xAAAAAAAAAAAAAAAALL;
      [v12 getValue:&v23];
      if (LODWORD(v23.__sig) == priority && BYTE4(v23.__sig) == fixedPriorityCopy)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)rootQueues countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v14 = *v23.__opaque;
    if (*v23.__opaque)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v23.__opaque[24] = v15;
  *&v23.__opaque[40] = v15;
  *&v23.__sig = v15;
  *&v23.__opaque[8] = v15;
  pthread_attr_init(&v23);
  v22 = 0xAAAAAAAAAAAAAAAALL;
  pthread_attr_getschedparam(&v23, &v22);
  v22.sched_priority = priority;
  pthread_attr_setschedparam(&v23, &v22);
  pthread_attr_setschedpolicy(&v23, 4);
  v20 = -1431655766;
  priorityCopy = priority;
  LOBYTE(v20) = fixedPriorityCopy;
  v17 = MEMORY[0x1E69E9820];
  LOBYTE(v18) = fixedPriorityCopy;
  v21 = dispatch_pthread_root_queue_create();
  if (v21)
  {
    -[NSMutableArray addObject:](self->_rootQueues, "addObject:", [MEMORY[0x1E696B098] value:&priorityCopy withObjCType:{"{?=iB@}", v17, 3221225472, __66__VCDispatchQueue_getCustomRootQueueWithPriority_isFixedPriority___block_invoke, &__block_descriptor_33_e5_v8__0l, v18}]);
  }

  pthread_attr_destroy(&v23);
  v14 = v21;
LABEL_17:
  pthread_mutex_unlock(&self->_lock);
  return v14;
}

uint64_t __66__VCDispatchQueue_getCustomRootQueueWithPriority_isFixedPriority___block_invoke(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    return MEMORY[0x1EEE742F0]();
  }

  return result;
}

@end