@interface ABCCallbackInvoker
- (void)invoke;
@end

@implementation ABCCallbackInvoker

- (void)invoke
{
  if (ABAddressBookIsCallbackRegistered(self->ab, self->cb, self->context, [MEMORY[0x1E696AF00] currentThread]))
  {
    (self->cb)(self->ab, 0, self->context);
  }

  ab = self->ab;

  CFRelease(ab);
}

@end