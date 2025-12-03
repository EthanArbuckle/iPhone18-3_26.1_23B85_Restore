@interface GradientView
+ (Class)layerClass;
- (int64_t)semanticContentAttribute;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)updateProperties;
@end

@implementation GradientView

+ (Class)layerClass
{
  sub_1000065A8(0, &qword_100AD64F8);

  return swift_getObjCClassFromMetadata();
}

- (void)updateProperties
{
  selfCopy = self;
  sub_10080BCF0();
}

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5 = type metadata accessor for GradientView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  semanticContentAttribute = [(GradientView *)&v9 semanticContentAttribute];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(GradientView *)&v8 setSemanticContentAttribute:attribute];
  if ([(GradientView *)selfCopy semanticContentAttribute]!= semanticContentAttribute)
  {
    [(GradientView *)selfCopy setNeedsUpdateProperties];
  }
}

@end