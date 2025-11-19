@interface SCNProgramSemanticInfo
+ (id)infoWithSemantic:(id)a3 options:(id)a4;
- (SCNProgramSemanticInfo)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNProgramSemanticInfo

+ (id)infoWithSemantic:(id)a3 options:(id)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setSemantic:a3];
  [v6 setOptions:a4];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[SCNProgramSemanticInfo semantic](self forKey:{"semantic"), @"semantic"}];
  v5 = [(SCNProgramSemanticInfo *)self options];

  [a3 encodeObject:v5 forKey:@"options"];
}

- (SCNProgramSemanticInfo)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNProgramSemanticInfo;
  v4 = [(SCNProgramSemanticInfo *)&v6 init];
  if (v4)
  {
    -[SCNProgramSemanticInfo setSemantic:](v4, "setSemantic:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"semantic"]);
    -[SCNProgramSemanticInfo setOptions:](v4, "setOptions:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"options"]);
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