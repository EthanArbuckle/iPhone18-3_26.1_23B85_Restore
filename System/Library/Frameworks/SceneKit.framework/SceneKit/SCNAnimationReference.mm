@interface SCNAnimationReference
- (SCNAnimationReference)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNAnimationReference

- (void)dealloc
{
  [(SCNAnimationReference *)self setReferenceName:0];
  v3.receiver = self;
  v3.super_class = SCNAnimationReference;
  [(SCNAnimationReference *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SCNAnimationReference;
  v4 = [(SCNAnimationReference *)&v6 copyWithZone:zone];
  [v4 setReferenceName:{-[SCNAnimationReference referenceName](self, "referenceName")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[SCNAnimationReference referenceName](self forKey:{"referenceName"), @"referenceName"}];
  [(SCNAnimationReference *)self repeatCount];
  [coder encodeFloat:@"repeatCount" forKey:?];
  [(SCNAnimationReference *)self repeatDuration];
  *&v5 = v5;
  [coder encodeFloat:@"repeatDuration" forKey:v5];
  [coder encodeBool:-[CAAnimation usesSceneTimeBase](self forKey:{"usesSceneTimeBase"), @"usesSceneTimeBase"}];
  v6.receiver = self;
  v6.super_class = SCNAnimationReference;
  [(SCNAnimationReference *)&v6 encodeWithCoder:coder];
}

- (SCNAnimationReference)initWithCoder:(id)coder
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SCNAnimationReference;
  v4 = [(SCNAnimationReference *)&v10 init];
  if (v4)
  {
    -[SCNAnimationReference setReferenceName:](v4, "setReferenceName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"referenceName"]);
    [coder decodeFloatForKey:@"repeatCount"];
    [(SCNAnimationReference *)v4 setRepeatCount:?];
    [coder decodeFloatForKey:@"repeatDuration"];
    [(SCNAnimationReference *)v4 setRepeatDuration:v5];
    -[CAAnimation setUsesSceneTimeBase:](v4, "setUsesSceneTimeBase:", [coder decodeBoolForKey:@"usesSceneTimeBase"]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_msgSend(coder "assetCatalog")];
      if (v6)
      {
        v7 = v6;
        [v6 duration];
        [(SCNAnimationReference *)v4 setDuration:?];
        v11[0] = v7;
        -[SCNAnimationReference setAnimations:](v4, "setAnimations:", [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1]);
      }
    }

    else
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SCNAnimationReference initWithCoder:];
      }
    }
  }

  return v4;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end