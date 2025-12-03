@interface NWInboundMessage
- (NSData)content;
@end

@implementation NWInboundMessage

- (NSData)content
{
  internalContent = [(NWMessage *)self internalContent];
  v3 = internalContent;
  if (internalContent)
  {
    v4 = internalContent;
  }

  return v3;
}

@end