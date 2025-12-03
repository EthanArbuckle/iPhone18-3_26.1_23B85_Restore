@interface WKPreviewAction
+ (id)actionWithIdentifier:(id)identifier title:(id)title style:(int64_t)style handler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation WKPreviewAction

+ (id)actionWithIdentifier:(id)identifier title:(id)title style:(int64_t)style handler:(id)handler
{
  result = [self actionWithTitle:title style:style handler:handler];
  *(result + 7) = identifier;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = WKPreviewAction;
  v4 = [(UIPreviewAction *)&v6 copyWithZone:zone];
  v4[7] = [(WKPreviewAction *)self identifier];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WKPreviewAction;
  [(WKPreviewAction *)&v3 dealloc];
}

@end