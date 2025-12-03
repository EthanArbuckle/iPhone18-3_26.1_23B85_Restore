@interface HKUserTrackedConcept
+ (id)_newUserTrackedConceptWithType:(id)type config:(id)config;
- (HKUserTrackedConcept)init;
- (HKUserTrackedConcept)initWithCoder:(id)coder;
- (id)description;
@end

@implementation HKUserTrackedConcept

- (HKUserTrackedConcept)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(HKObjectType *)self->_userTrackedConceptType identifier];
  v4 = [v2 stringWithFormat:@"User Tracked Concept with data type identifier %@", identifier];

  return v4;
}

- (HKUserTrackedConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKUserTrackedConcept;
  v5 = [(HKUserTrackedConcept *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserTrackedConceptType"];
    userTrackedConceptType = v5->_userTrackedConceptType;
    v5->_userTrackedConceptType = v6;
  }

  return v5;
}

+ (id)_newUserTrackedConceptWithType:(id)type config:(id)config
{
  typeCopy = type;
  configCopy = config;
  if (([self isConcreteUserTrackedConceptClass] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    v16 = NSStringFromClass(self);
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKUserTrackedConcept.m" lineNumber:31 description:{@"%@ should not be used for abstract class %@", v15, v16}];
  }

  v9 = [self alloc];
  if (v9)
  {
    v17.receiver = v9;
    v17.super_class = HKUserTrackedConcept;
    v10 = objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    v10 = 0;
  }

  v11 = [typeCopy copy];
  v12 = v10[1];
  v10[1] = v11;

  if (configCopy)
  {
    configCopy[2](configCopy, v10);
  }

  return v10;
}

@end