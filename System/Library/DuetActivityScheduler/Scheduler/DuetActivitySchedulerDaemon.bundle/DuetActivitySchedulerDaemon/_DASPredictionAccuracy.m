@interface _DASPredictionAccuracy
+ (id)initFromDictionaryRepresentation:(id)a3;
- (_DASPredictionAccuracy)init;
- (id)accuracyRate;
- (id)addPredictionAccuracy:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation _DASPredictionAccuracy

- (_DASPredictionAccuracy)init
{
  v3.receiver = self;
  v3.super_class = _DASPredictionAccuracy;
  result = [(_DASPredictionAccuracy *)&v3 init];
  if (result)
  {
    *&result->_top1Hits = 0;
    *&result->_top5Hits = 0;
    result->_totalPredictionIntervals = 0;
  }

  return result;
}

- (id)addPredictionAccuracy:(id)a3
{
  v5 = _DASPredictionAccuracy;
  v6 = a3;
  v7 = [(__objc2_class *)v5 init];
  -[__objc2_class setTop1Hits:](v7, "setTop1Hits:", [v6 top1Hits] + -[_DASPredictionAccuracy top1Hits](self, "top1Hits"));
  -[__objc2_class setTop3Hits:](v7, "setTop3Hits:", [v6 top3Hits] + -[_DASPredictionAccuracy top3Hits](self, "top3Hits"));
  -[__objc2_class setTop5Hits:](v7, "setTop5Hits:", [v6 top5Hits] + -[_DASPredictionAccuracy top5Hits](self, "top5Hits"));
  -[__objc2_class setTop10Hits:](v7, "setTop10Hits:", [v6 top10Hits] + -[_DASPredictionAccuracy top10Hits](self, "top10Hits"));
  LODWORD(self) = [(_DASPredictionAccuracy *)self totalPredictionIntervals];
  LODWORD(v5) = [v6 totalPredictionIntervals];

  [(__objc2_class *)v7 setTotalPredictionIntervals:(v5 + self)];

  return v7;
}

+ (id)initFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_DASPredictionAccuracy);
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 objectForKeyedSubscript:@"1"];
    -[_DASPredictionAccuracy setTop1Hits:](v5, "setTop1Hits:", [v6 intValue]);

    v7 = [v3 objectForKeyedSubscript:@"3"];
    -[_DASPredictionAccuracy setTop3Hits:](v5, "setTop3Hits:", [v7 intValue]);

    v8 = [v3 objectForKeyedSubscript:@"5"];
    -[_DASPredictionAccuracy setTop5Hits:](v5, "setTop5Hits:", [v8 intValue]);

    v9 = [v3 objectForKeyedSubscript:@"10"];
    -[_DASPredictionAccuracy setTop10Hits:](v5, "setTop10Hits:", [v9 intValue]);

    v10 = [v3 objectForKeyedSubscript:@"predictionIntervals"];
    -[_DASPredictionAccuracy setTotalPredictionIntervals:](v5, "setTotalPredictionIntervals:", [v10 intValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInt:self->_top1Hits];
  [v3 setObject:v4 forKeyedSubscript:@"1"];

  v5 = [NSNumber numberWithInt:self->_top3Hits];
  [v3 setObject:v5 forKeyedSubscript:@"3"];

  v6 = [NSNumber numberWithInt:self->_top5Hits];
  [v3 setObject:v6 forKeyedSubscript:@"5"];

  v7 = [NSNumber numberWithInt:self->_top10Hits];
  [v3 setObject:v7 forKeyedSubscript:@"10"];

  v8 = [NSNumber numberWithInt:self->_totalPredictionIntervals];
  [v3 setObject:v8 forKeyedSubscript:@"predictionIntervals"];

  return v3;
}

- (id)accuracyRate
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if ([(_DASPredictionAccuracy *)self totalPredictionIntervals]< 1)
  {
    v8 = 0;
  }

  else
  {
    v4 = [NSNumber numberWithDouble:[(_DASPredictionAccuracy *)self top1Hits]/ [(_DASPredictionAccuracy *)self totalPredictionIntervals]];
    [v3 setObject:v4 forKeyedSubscript:@"top1"];

    v5 = [NSNumber numberWithDouble:[(_DASPredictionAccuracy *)self top3Hits]/ ([(_DASPredictionAccuracy *)self totalPredictionIntervals]* 3.0)];
    [v3 setObject:v5 forKeyedSubscript:@"top3"];

    v6 = [NSNumber numberWithDouble:[(_DASPredictionAccuracy *)self top5Hits]/ ([(_DASPredictionAccuracy *)self totalPredictionIntervals]* 5.0)];
    [v3 setObject:v6 forKeyedSubscript:@"top5"];

    v7 = [NSNumber numberWithDouble:[(_DASPredictionAccuracy *)self top10Hits]/ ([(_DASPredictionAccuracy *)self totalPredictionIntervals]* 10.0)];
    [v3 setObject:v7 forKeyedSubscript:@"top10"];

    v8 = v3;
  }

  return v8;
}

- (id)description
{
  v2 = [(_DASPredictionAccuracy *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

@end