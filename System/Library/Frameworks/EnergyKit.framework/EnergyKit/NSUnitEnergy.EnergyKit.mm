@interface NSUnitEnergy.EnergyKit
- (_TtCE9EnergyKitCSo12NSUnitEnergy9EnergyKit)initWithCoder:(id)coder;
- (_TtCE9EnergyKitCSo12NSUnitEnergy9EnergyKit)initWithSymbol:(id)symbol;
@end

@implementation NSUnitEnergy.EnergyKit

- (_TtCE9EnergyKitCSo12NSUnitEnergy9EnergyKit)initWithSymbol:(id)symbol
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  return [(NSUnitEnergy.EnergyKit *)&v5 initWithSymbol:symbol];
}

- (_TtCE9EnergyKitCSo12NSUnitEnergy9EnergyKit)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NSUnitEnergy.EnergyKit();
  coderCopy = coder;
  v5 = [(NSUnitEnergy.EnergyKit *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end