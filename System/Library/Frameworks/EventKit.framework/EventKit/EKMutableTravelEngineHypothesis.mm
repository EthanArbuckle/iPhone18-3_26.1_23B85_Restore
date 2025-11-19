@interface EKMutableTravelEngineHypothesis
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAggressiveDepartureDate:(id)a3;
- (void)setConservativeDepartureDate:(id)a3;
- (void)setRouteName:(id)a3;
- (void)setSuggestedDepartureDate:(id)a3;
- (void)setTrafficDensityDescription:(id)a3;
@end

@implementation EKMutableTravelEngineHypothesis

- (void)setConservativeDepartureDate:(id)a3
{
  v4 = [a3 copy];
  conservativeDepartureDate = self->super._conservativeDepartureDate;
  self->super._conservativeDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestedDepartureDate:(id)a3
{
  v4 = [a3 copy];
  suggestedDepartureDate = self->super._suggestedDepartureDate;
  self->super._suggestedDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAggressiveDepartureDate:(id)a3
{
  v4 = [a3 copy];
  aggressiveDepartureDate = self->super._aggressiveDepartureDate;
  self->super._aggressiveDepartureDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setRouteName:(id)a3
{
  v4 = [a3 copy];
  routeName = self->super._routeName;
  self->super._routeName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTrafficDensityDescription:(id)a3
{
  v4 = [a3 copy];
  trafficDensityDescription = self->super._trafficDensityDescription;
  self->super._trafficDensityDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = [EKTravelEngineHypothesis allocWithZone:a3];
  v4 = [(EKTravelEngineHypothesis *)self transportType];
  v5 = [(EKTravelEngineHypothesis *)self conservativeDepartureDate];
  [(EKTravelEngineHypothesis *)self conservativeTravelTime];
  v7 = v6;
  v8 = [(EKTravelEngineHypothesis *)self suggestedDepartureDate];
  [(EKTravelEngineHypothesis *)self estimatedTravelTime];
  v10 = v9;
  v11 = [(EKTravelEngineHypothesis *)self aggressiveDepartureDate];
  [(EKTravelEngineHypothesis *)self aggressiveTravelTime];
  v13 = v12;
  v14 = [(EKTravelEngineHypothesis *)self routeName];
  v15 = [(EKTravelEngineHypothesis *)self supportsLiveTraffic];
  v16 = [(EKTravelEngineHypothesis *)self currentTrafficDensity];
  v17 = [(EKTravelEngineHypothesis *)self trafficDensityDescription];
  v18 = [(EKTravelEngineHypothesis *)self travelState];
  v19 = [(EKTravelEngineHypothesis *)self travelSections];
  v20 = [(EKTravelEngineHypothesis *)v22 initWithTransportType:v4 conservativeDepartureDate:v5 conservativeTravelTime:v8 suggestedDepartureDate:v11 estimatedTravelTime:v14 aggressiveDepartureDate:v15 aggressiveTravelTime:v7 routeName:v10 supportsLiveTraffic:v13 currentTrafficDensity:v16 trafficDensityDescription:v17 travelState:v18 travelSections:v19];

  return v20;
}

@end