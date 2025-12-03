@interface ABSCallbackInvoker
+ (void)invokeOnThread:(id)thread callback:(void *)callback withAddressBook:(void *)book context:(void *)context;
- (void)invoke;
@end

@implementation ABSCallbackInvoker

+ (void)invokeOnThread:(id)thread callback:(void *)callback withAddressBook:(void *)book context:(void *)context
{
  threadCopy = thread;
  v12 = objc_alloc_init(ABSCallbackInvoker);
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v11 = currentThread == threadCopy;

  CFRetain(book);
  v12->addressBook = book;
  v12->callback = callback;
  v12->context = context;
  [(ABSCallbackInvoker *)v12 performSelector:sel_invoke onThread:threadCopy withObject:0 waitUntilDone:v11];
}

- (void)invoke
{
  changeCallbacks = [self->addressBook changeCallbacks];
  callback = self->callback;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  LODWORD(callback) = [changeCallbacks hasExternalCallback:callback onThread:currentThread withContext:self->context];

  if (callback)
  {
    (self->callback)(self->addressBook, 0, self->context);
  }

  CFRelease(self->addressBook);
}

@end