@interface ARCoachingQuaternionSpring
- (ARCoachingQuaternionSpring)init;
- (void)setDampingRatio:(double)ratio;
- (void)setResponse:(double)response;
- (void)setTarget:(double *)target;
- (void)setValue:(double *)value;
- (void)setVelocity:(double *)velocity;
- (void)stepWithDeltaTime:(double)time;
- (void)target;
- (void)value;
- (void)velocity;
@end

@implementation ARCoachingQuaternionSpring

- (void)value
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  [v16 value];
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  [v5 value];
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  [v7 value];
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  [v9 value];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setValue:(double *)value
{
  v5 = *value;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setValue:v5];

  v7 = value[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setValue:v7];

  v9 = value[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setValue:v9];

  v11 = value[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setValue:v11];
}

- (void)target
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  [v16 target];
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  [v5 target];
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  [v7 target];
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  [v9 target];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setTarget:(double *)target
{
  v5 = *target;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setTarget:v5];

  v7 = target[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setTarget:v7];

  v9 = target[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setTarget:v9];

  v11 = target[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setTarget:v11];
}

- (void)velocity
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  [v16 velocity];
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  [v5 velocity];
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  [v7 velocity];
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  [v9 velocity];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setVelocity:(double *)velocity
{
  v5 = *velocity;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setVelocity:v5];

  v7 = velocity[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setVelocity:v7];

  v9 = velocity[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setVelocity:v9];

  v11 = velocity[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setVelocity:v11];
}

- (void)setResponse:(double)response
{
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v7 = v6;
  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v8 parameters];
  v10 = v9;
  v11 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  v12 = ARFLSpringParametersMake([v11 parameters], v7, v10, response);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v19 setParameters:{v12, v14, v16, v18}];

  v20 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v20 parameters];
  v22 = v21;
  v23 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v23 parameters];
  v25 = v24;
  v26 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  v27 = ARFLSpringParametersMake([v26 parameters], v22, v25, response);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v34 setParameters:{v27, v29, v31, v33}];

  v35 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v35 parameters];
  v37 = v36;
  v38 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v38 parameters];
  v40 = v39;
  v41 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  v42 = ARFLSpringParametersMake([v41 parameters], v37, v40, response);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v49 setParameters:{v42, v44, v46, v48}];

  v64 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v64 parameters];
  v51 = v50;
  v52 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v52 parameters];
  v54 = v53;
  v55 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  v56 = ARFLSpringParametersMake([v55 parameters], v51, v54, response);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v63 setParameters:{v56, v58, v60, v62}];
}

- (void)setDampingRatio:(double)ratio
{
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v7 = v6;
  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v8 parameters];
  v10 = v9;
  v11 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  v12 = ARFLSpringParametersMake([v11 parameters], ratio, v7, v10);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v19 setParameters:{v12, v14, v16, v18}];

  v20 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v20 parameters];
  v22 = v21;
  v23 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v23 parameters];
  v25 = v24;
  v26 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  v27 = ARFLSpringParametersMake([v26 parameters], ratio, v22, v25);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v34 setParameters:{v27, v29, v31, v33}];

  v35 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v35 parameters];
  v37 = v36;
  v38 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v38 parameters];
  v40 = v39;
  v41 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  v42 = ARFLSpringParametersMake([v41 parameters], ratio, v37, v40);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v49 setParameters:{v42, v44, v46, v48}];

  v64 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v64 parameters];
  v51 = v50;
  v52 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v52 parameters];
  v54 = v53;
  v55 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  v56 = ARFLSpringParametersMake([v55 parameters], ratio, v51, v54);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v63 setParameters:{v56, v58, v60, v62}];
}

- (ARCoachingQuaternionSpring)init
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ARCoachingQuaternionSpring;
  v2 = [(ARCoachingQuaternionSpring *)&v15 init];
  if (v2)
  {
    v3 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v16[0] = v3;
    v4 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v16[1] = v4;
    v5 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v16[2] = v5;
    v6 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v16[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    springs = v2->_springs;
    v2->_springs = v7;

    *&v2->_response = xmmword_23D3DC5E0;
    if ([(NSArray *)v2->_springs count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v10 setTarget:1.0];

        v11 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v11 setValue:1.0];

        v12 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v12 setVelocity:0.0];

        ++v9;
      }

      while ([(NSArray *)v2->_springs count]> v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)stepWithDeltaTime:(double)time
{
  if ([(NSArray *)self->_springs count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:v5];
      [v6 step:time];

      ++v5;
    }

    while ([(NSArray *)self->_springs count]> v5);
  }
}

@end