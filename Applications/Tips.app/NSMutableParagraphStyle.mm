@interface NSMutableParagraphStyle
- (NSMutableParagraphStyle)initWithAlignment:(int64_t)alignment;
@end

@implementation NSMutableParagraphStyle

- (NSMutableParagraphStyle)initWithAlignment:(int64_t)alignment
{
  v4 = [(NSMutableParagraphStyle *)self init];
  [(NSMutableParagraphStyle *)v4 setAlignment:alignment];
  return v4;
}

@end