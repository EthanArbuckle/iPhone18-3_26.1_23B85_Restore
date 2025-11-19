@interface PHASEEnvelope
- (PHASEEnvelope)init;
- (PHASEEnvelope)initWithStartPoint:(simd_double2)startPoint segments:(NSArray *)segments;
@end

@implementation PHASEEnvelope

- (PHASEEnvelope)init
{
  [(PHASEEnvelope *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEEnvelope)initWithStartPoint:(simd_double2)startPoint segments:(NSArray *)segments
{
  v16 = startPoint;
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = segments;
  v21.receiver = self;
  v21.super_class = PHASEEnvelope;
  if ([(PHASEEnvelope *)&v21 init])
  {
    v6 = 0;
    v20 = v16;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    while ([(NSArray *)v5 count]> v6)
    {
      v23 = 0;
      v24 = 0;
      v25[0] = &unk_284D2F2E8;
      v25[3] = v25;
      v7 = [(NSArray *)v5 objectAtIndexedSubscript:v6];
      [v7 endPoint];
      v23 = v8;

      v9 = [(NSArray *)v5 objectAtIndexedSubscript:v6];
      [v9 endPoint];
      v24 = v10;

      v11 = [(NSArray *)v5 objectAtIndexedSubscript:v6];
      Phase::Controller::GetCurveFunctionFromCurveType<double>([v11 curveType], v22);
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v25, v22);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v22);

      v12 = v18;
      if (v18 >= v19)
      {
        v13 = std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__emplace_back_slow_path<Phase::Envelope<double>::Segment const&>(&v17, &v23);
      }

      else
      {
        *v18 = v23;
        v12[1] = v24;
        std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100]((v12 + 2), v25);
        v13 = (v12 + 6);
      }

      v18 = v13;
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v25);
      ++v6;
    }

    operator new();
  }

  v14 = 0;

  return v14;
}

@end