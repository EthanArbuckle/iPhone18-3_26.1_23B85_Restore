@interface BLSBacklightChangeSourceEventMetadata
- (BLSBacklightChangeSourceEventMetadata)initWithCoder:(id)a3;
- (BLSBacklightChangeSourceEventMetadata)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BLSBacklightChangeSourceEventMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return self;
}

- (BLSBacklightChangeSourceEventMetadata)initWithXPCDictionary:(id)a3
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return 0;
}

- (BLSBacklightChangeSourceEventMetadata)initWithCoder:(id)a3
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return 0;
}

@end