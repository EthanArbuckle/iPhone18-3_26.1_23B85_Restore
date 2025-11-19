@interface SKNodeVisualRepresentationArchiver
- (void)encodeObject:(id)a3 forKey:(id)a4;
@end

@implementation SKNodeVisualRepresentationArchiver

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"_children"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"_keyedSubSprites") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"_actions") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"_keyedActions") & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SKNodeVisualRepresentationArchiver;
    [(SKNodeVisualRepresentationArchiver *)&v8 encodeObject:v6 forKey:v7];
  }
}

@end