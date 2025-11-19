@interface CRLFormat
- (CRLFormat)initWithFormatType:(unsigned int)a3;
@end

@implementation CRLFormat

- (CRLFormat)initWithFormatType:(unsigned int)a3
{
  v4.receiver = self;
  v4.super_class = CRLFormat;
  return [(CRLFormat *)&v4 init];
}

@end