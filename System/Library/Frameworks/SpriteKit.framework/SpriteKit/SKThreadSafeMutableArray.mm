@interface SKThreadSafeMutableArray
- (SKThreadSafeMutableArray)init;
- (SKThreadSafeMutableArray)initWithNSMutableArray:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
- (void)removeObjectsInArray:(id)a3;
@end

@implementation SKThreadSafeMutableArray

- (SKThreadSafeMutableArray)initWithNSMutableArray:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SKThreadSafeMutableArray;
  v5 = [(SKThreadSafeMutableArray *)&v10 init];
  v6 = v5;
  if (v5)
  {
    pthread_mutex_init(&v5->_storageLock, 0);
    v7 = [v4 copy];
    storage = v6->_storage;
    v6->_storage = v7;
  }

  return v6;
}

- (SKThreadSafeMutableArray)init
{
  v7.receiver = self;
  v7.super_class = SKThreadSafeMutableArray;
  v2 = [(SKThreadSafeMutableArray *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pthread_mutex_init(&v2->_storageLock, 0);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  pthread_mutex_init((v5 + 8), 0);
  pthread_mutex_lock(&self->_storageLock);
  v6 = [(NSMutableArray *)self->_storage copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  pthread_mutex_unlock(&self->_storageLock);
  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  [v4 selector];
  if (objc_opt_respondsToSelector())
  {
    pthread_mutex_lock(&self->_storageLock);
    [v4 invokeWithTarget:self->_storage];
    pthread_mutex_unlock(&self->_storageLock);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SKThreadSafeMutableArray;
    [(SKThreadSafeMutableArray *)&v5 forwardInvocation:v4];
  }
}

- (void)removeObjectsInArray:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_storageLock);
  [(NSMutableArray *)self->_storage removeObjectsInArray:v4];

  pthread_mutex_unlock(&self->_storageLock);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = SKThreadSafeMutableArray;
  v5 = [(SKThreadSafeMutableArray *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(NSMutableArray *)self->_storage methodSignatureForSelector:a3];
  }

  return v5;
}

@end