@interface _MFPlaceholderComposeRecipient
- (void)setDisplayString:(id)a3;
@end

@implementation _MFPlaceholderComposeRecipient

- (void)setDisplayString:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->super._displayString] & 1) == 0)
  {
    objc_storeStrong(&self->super._displayString, a3);
  }
}

@end