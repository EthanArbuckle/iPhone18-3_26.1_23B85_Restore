@interface AirPodsAudioSystemResult
- (id)dictionaryValue;
@end

@implementation AirPodsAudioSystemResult

- (id)dictionaryValue
{
  v3 = [NSMutableDictionary alloc];
  v17.receiver = self;
  v17.super_class = AirPodsAudioSystemResult;
  v4 = [(AudioSystemResult *)&v17 dictionaryValue];
  v5 = [v3 initWithDictionary:v4];

  v6 = [(AirPodsAudioSystemResult *)self energyValues];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:@"energyValues"];
  }

  else
  {
    v7 = +[NSNull null];
    [v5 setObject:v7 forKeyedSubscript:@"energyValues"];
  }

  v8 = [(AirPodsAudioSystemResult *)self xCorrPNR];
  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"xCoorPNR"];
  }

  else
  {
    v9 = +[NSNull null];
    [v5 setObject:v9 forKeyedSubscript:@"xCoorPNR"];
  }

  v10 = [(AirPodsAudioSystemResult *)self xCorrPeak];
  if (v10)
  {
    [v5 setObject:v10 forKeyedSubscript:@"xCoorPeak"];
  }

  else
  {
    v11 = +[NSNull null];
    [v5 setObject:v11 forKeyedSubscript:@"xCoorPeak"];
  }

  v12 = [(AirPodsAudioSystemResult *)self xCorrCenter];
  if (v12)
  {
    [v5 setObject:v12 forKeyedSubscript:@"xCoorCenter"];
  }

  else
  {
    v13 = +[NSNull null];
    [v5 setObject:v13 forKeyedSubscript:@"xCoorCenter"];
  }

  v14 = [NSNumber numberWithInteger:[(AirPodsAudioSystemResult *)self audioTestType]];
  [v5 setObject:v14 forKeyedSubscript:@"audioTestType"];

  v15 = [v5 copy];

  return v15;
}

@end