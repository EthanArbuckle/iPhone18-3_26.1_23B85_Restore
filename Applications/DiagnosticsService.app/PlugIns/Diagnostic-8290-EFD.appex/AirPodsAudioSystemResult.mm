@interface AirPodsAudioSystemResult
- (id)dictionaryValue;
@end

@implementation AirPodsAudioSystemResult

- (id)dictionaryValue
{
  v3 = [NSMutableDictionary alloc];
  v17.receiver = self;
  v17.super_class = AirPodsAudioSystemResult;
  dictionaryValue = [(AudioSystemResult *)&v17 dictionaryValue];
  v5 = [v3 initWithDictionary:dictionaryValue];

  energyValues = [(AirPodsAudioSystemResult *)self energyValues];
  if (energyValues)
  {
    [v5 setObject:energyValues forKeyedSubscript:@"energyValues"];
  }

  else
  {
    v7 = +[NSNull null];
    [v5 setObject:v7 forKeyedSubscript:@"energyValues"];
  }

  xCorrPNR = [(AirPodsAudioSystemResult *)self xCorrPNR];
  if (xCorrPNR)
  {
    [v5 setObject:xCorrPNR forKeyedSubscript:@"xCoorPNR"];
  }

  else
  {
    v9 = +[NSNull null];
    [v5 setObject:v9 forKeyedSubscript:@"xCoorPNR"];
  }

  xCorrPeak = [(AirPodsAudioSystemResult *)self xCorrPeak];
  if (xCorrPeak)
  {
    [v5 setObject:xCorrPeak forKeyedSubscript:@"xCoorPeak"];
  }

  else
  {
    v11 = +[NSNull null];
    [v5 setObject:v11 forKeyedSubscript:@"xCoorPeak"];
  }

  xCorrCenter = [(AirPodsAudioSystemResult *)self xCorrCenter];
  if (xCorrCenter)
  {
    [v5 setObject:xCorrCenter forKeyedSubscript:@"xCoorCenter"];
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