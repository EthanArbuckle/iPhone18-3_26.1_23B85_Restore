@interface BLSBacklightChangeSourceEventMetadata
- (BLSBacklightChangeSourceEventMetadata)initWithCoder:(id)coder;
- (BLSBacklightChangeSourceEventMetadata)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BLSBacklightChangeSourceEventMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return self;
}

- (BLSBacklightChangeSourceEventMetadata)initWithXPCDictionary:(id)dictionary
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return 0;
}

- (BLSBacklightChangeSourceEventMetadata)initWithCoder:(id)coder
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"BLSBacklightChangeSourceEventMetadata is an abstract class"];

  return 0;
}

@end