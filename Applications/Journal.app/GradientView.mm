@interface GradientView
+ (Class)layerClass;
- (int64_t)semanticContentAttribute;
- (void)setSemanticContentAttribute:(int64_t)a3;
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
  v2 = self;
  sub_10080BCF0();
}

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GradientView();
  return [(GradientView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5 = type metadata accessor for GradientView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(GradientView *)&v9 semanticContentAttribute];
  v8.receiver = v6;
  v8.super_class = v5;
  [(GradientView *)&v8 setSemanticContentAttribute:a3];
  if ([(GradientView *)v6 semanticContentAttribute]!= v7)
  {
    [(GradientView *)v6 setNeedsUpdateProperties];
  }
}

@end