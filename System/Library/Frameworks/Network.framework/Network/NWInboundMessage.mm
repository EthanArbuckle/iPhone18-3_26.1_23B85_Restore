@interface NWInboundMessage
- (NSData)content;
@end

@implementation NWInboundMessage

- (NSData)content
{
  v2 = [(NWMessage *)self internalContent];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end