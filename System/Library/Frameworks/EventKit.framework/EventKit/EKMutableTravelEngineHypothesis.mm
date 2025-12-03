@interface EKMutableTravelEngineHypothesis
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAggressiveDepartureDate:(id)date;
- (void)setConservativeDepartureDate:(id)date;
- (void)setRouteName:(id)name;
- (void)setSuggestedDepartureDate:(id)date;
- (void)setTrafficDensityDescription:(id)description;
@end

@implementation EKMutableTravelEngineHypothesis

- (void)setConservativeDepartureDate:(id)date
{
  v4 = [date copy];
  conservativeDepartureDate = self->super._conservativeDepartureDate;
  self->super._conservativeDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestedDepartureDate:(id)date
{
  v4 = [date copy];
  suggestedDepartureDate = self->super._suggestedDepartureDate;
  self->super._suggestedDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAggressiveDepartureDate:(id)date
{
  v4 = [date copy];
  aggressiveDepartureDate = self->super._aggressiveDepartureDate;
  self->super._aggressiveDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRouteName:(id)name
{
  v4 = [name copy];
  routeName = self->super._routeName;
  self->super._routeName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTrafficDensityDescription:(id)description
{
  v4 = [description copy];
  trafficDensityDescription = self->super._trafficDensityDescription;
  self->super._trafficDensityDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = [EKTravelEngineHypothesis allocWithZone:zone];
  transportType = [(EKTravelEngineHypothesis *)self transportType];
  conservativeDepartureDate = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = v6;
  suggestedDepartureDate = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v10 = v9;
  aggressiveDepartureDate = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v13 = v12;
  routeName = [(EKTravelEngineHypothesis *)self routeName];
  supportsLiveTraffic = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  currentTrafficDensity = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  trafficDensityDescription = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  travelState = [(EKTravelEngineHypothesis *)self travelState];
  travelSections = [(EKTravelEngineHypothesis *)self travelSections];
  v20 = [(EKTravelEngineHypothesis *)v22 initWithTransportType:transportType conservativeDepartureDate:conservativeDepartureDate conservativeTravelTime:suggestedDepartureDate suggestedDepartureDate:aggressiveDepartureDate estimatedTravelTime:routeName aggressiveDepartureDate:supportsLiveTraffic aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:currentTrafficDensity trafficDensityDescription:trafficDensityDescription travelState:travelState travelSections:travelSections];

  return v20;
}

@end