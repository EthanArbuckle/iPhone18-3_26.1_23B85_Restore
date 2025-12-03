@interface CRLFormat
- (CRLFormat)initWithFormatType:(unsigned int)type;
@end

@implementation CRLFormat

- (CRLFormat)initWithFormatType:(unsigned int)type
{
  v4.receiver = self;
  v4.super_class = CRLFormat;
  return [(CRLFormat *)&v4 init];
}

@end