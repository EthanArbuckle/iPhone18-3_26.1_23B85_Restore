@interface SCNProgramSemanticInfo
+ (id)infoWithSemantic:(id)semantic options:(id)options;
- (SCNProgramSemanticInfo)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNProgramSemanticInfo

+ (id)infoWithSemantic:(id)semantic options:(id)options
{
  v6 = objc_alloc_init(self);
  [v6 setSemantic:semantic];
  [v6 setOptions:options];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[SCNProgramSemanticInfo semantic](self forKey:{"semantic"), @"semantic"}];
  options = [(SCNProgramSemanticInfo *)self options];

  [coder encodeObject:options forKey:@"options"];
}

- (SCNProgramSemanticInfo)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNProgramSemanticInfo;
  v4 = [(SCNProgramSemanticInfo *)&v6 init];
  if (v4)
  {
    -[SCNProgramSemanticInfo setSemantic:](v4, "setSemantic:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"semantic"]);
    -[SCNProgramSemanticInfo setOptions:](v4, "setOptions:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"options"]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNProgramSemanticInfo;
  [(SCNProgramSemanticInfo *)&v3 dealloc];
}

@end