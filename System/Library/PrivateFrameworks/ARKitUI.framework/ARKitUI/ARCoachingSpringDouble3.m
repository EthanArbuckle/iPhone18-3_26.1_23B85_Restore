@interface ARCoachingSpringDouble3
- (ARCoachingSpringDouble3)init;
- (__n128)floatValue;
- (__n128)target;
- (__n128)value;
- (__n128)velocity;
- (void)setDampingRatio:(double)a3;
- (void)setFloatValue:(ARCoachingSpringDouble3 *)self;
- (void)setResponse:(double)a3;
- (void)setTarget:(ARCoachingSpringDouble3 *)self;
- (void)setValue:(ARCoachingSpringDouble3 *)self;
- (void)setVelocity:(ARCoachingSpringDouble3 *)self;
- (void)stepWithDeltaTime:(double)a3;
@end

@implementation ARCoachingSpringDouble3

- (__n128)value
{
  v4 = [*(a1 + 8) objectAtIndexedSubscript:0];
  [v4 value];
  v13 = v5;
  v6 = [*(a1 + 8) objectAtIndexedSubscript:1];
  [v6 value];
  v12 = v7;
  v8 = [*(a1 + 8) objectAtIndexedSubscript:2];
  [v8 value];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setValue:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setValue:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setValue:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setValue:v4];
}

- (__n128)floatValue
{
  v2 = [*(a1 + 8) objectAtIndexedSubscript:0];
  [v2 value];
  v11 = v3;
  v4 = [*(a1 + 8) objectAtIndexedSubscript:1];
  [v4 value];
  v5.f64[0] = v11;
  v5.f64[1] = v6;
  v12 = vcvt_f32_f64(v5);
  v7 = [*(a1 + 8) objectAtIndexedSubscript:2];
  [v7 value];
  *&v8 = v8;
  v10 = LODWORD(v8);

  result.n128_u64[0] = v12;
  result.n128_u32[2] = v10;
  return result;
}

- (void)setFloatValue:(ARCoachingSpringDouble3 *)self
{
  *v7 = v2;
  v4 = *&v2;
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setValue:v4];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setValue:*(v7 + 1)];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setValue:*&v7[1]];
}

- (__n128)target
{
  v4 = [*(a1 + 8) objectAtIndexedSubscript:0];
  [v4 target];
  v13 = v5;
  v6 = [*(a1 + 8) objectAtIndexedSubscript:1];
  [v6 target];
  v12 = v7;
  v8 = [*(a1 + 8) objectAtIndexedSubscript:2];
  [v8 target];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setTarget:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setTarget:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setTarget:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setTarget:v4];
}

- (__n128)velocity
{
  v4 = [*(a1 + 8) objectAtIndexedSubscript:0];
  [v4 velocity];
  v13 = v5;
  v6 = [*(a1 + 8) objectAtIndexedSubscript:1];
  [v6 velocity];
  v12 = v7;
  v8 = [*(a1 + 8) objectAtIndexedSubscript:2];
  [v8 velocity];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setVelocity:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setVelocity:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setVelocity:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setVelocity:v4];
}

- (void)setResponse:(double)a3
{
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v7 = v6;
  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v8 parameters];
  v10 = v9;
  v11 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  v12 = ARFLSpringParametersMake([v11 parameters], v7, v10, a3);
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
  v27 = ARFLSpringParametersMake([v26 parameters], v22, v25, a3);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v34 setParameters:{v27, v29, v31, v33}];

  v49 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v49 parameters];
  v36 = v35;
  v37 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v37 parameters];
  v39 = v38;
  v40 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  v41 = ARFLSpringParametersMake([v40 parameters], v36, v39, a3);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v48 setParameters:{v41, v43, v45, v47}];
}

- (void)setDampingRatio:(double)a3
{
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v7 = v6;
  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v8 parameters];
  v10 = v9;
  v11 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  v12 = ARFLSpringParametersMake([v11 parameters], a3, v7, v10);
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
  v27 = ARFLSpringParametersMake([v26 parameters], a3, v22, v25);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v34 setParameters:{v27, v29, v31, v33}];

  v49 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v49 parameters];
  v36 = v35;
  v37 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v37 parameters];
  v39 = v38;
  v40 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  v41 = ARFLSpringParametersMake([v40 parameters], a3, v36, v39);
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v48 setParameters:{v41, v43, v45, v47}];
}

- (ARCoachingSpringDouble3)init
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ARCoachingSpringDouble3;
  v2 = [(ARCoachingSpringDouble3 *)&v14 init];
  if (v2)
  {
    v3 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[0] = v3;
    v4 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[1] = v4;
    v5 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    springs = v2->_springs;
    v2->_springs = v6;

    *&v2->_response = xmmword_23D3DC5E0;
    if ([(NSArray *)v2->_springs count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v9 setTarget:1.0];

        v10 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v10 setValue:1.0];

        v11 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v11 setVelocity:0.0];

        ++v8;
      }

      while ([(NSArray *)v2->_springs count]> v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)stepWithDeltaTime:(double)a3
{
  if ([(NSArray *)self->_springs count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:v5];
      [v6 step:a3];

      ++v5;
    }

    while ([(NSArray *)self->_springs count]> v5);
  }
}

@end