@interface HKUserTrackedConcept
+ (id)_newUserTrackedConceptWithType:(id)a3 config:(id)a4;
- (HKUserTrackedConcept)init;
- (HKUserTrackedConcept)initWithCoder:(id)a3;
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
  v3 = [(HKObjectType *)self->_userTrackedConceptType identifier];
  v4 = [v2 stringWithFormat:@"User Tracked Concept with data type identifier %@", v3];

  return v4;
}

- (HKUserTrackedConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKUserTrackedConcept;
  v5 = [(HKUserTrackedConcept *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserTrackedConceptType"];
    userTrackedConceptType = v5->_userTrackedConceptType;
    v5->_userTrackedConceptType = v6;
  }

  return v5;
}

+ (id)_newUserTrackedConceptWithType:(id)a3 config:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([a1 isConcreteUserTrackedConceptClass] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    v16 = NSStringFromClass(a1);
    [v14 handleFailureInMethod:a2 object:a1 file:@"HKUserTrackedConcept.m" lineNumber:31 description:{@"%@ should not be used for abstract class %@", v15, v16}];
  }

  v9 = [a1 alloc];
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

  v11 = [v7 copy];
  v12 = v10[1];
  v10[1] = v11;

  if (v8)
  {
    v8[2](v8, v10);
  }

  return v10;
}

@end