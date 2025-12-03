@interface _MFPlaceholderComposeRecipient
- (void)setDisplayString:(id)string;
@end

@implementation _MFPlaceholderComposeRecipient

- (void)setDisplayString:(id)string
{
  stringCopy = string;
  if (([stringCopy isEqualToString:self->super._displayString] & 1) == 0)
  {
    objc_storeStrong(&self->super._displayString, string);
  }
}

@end