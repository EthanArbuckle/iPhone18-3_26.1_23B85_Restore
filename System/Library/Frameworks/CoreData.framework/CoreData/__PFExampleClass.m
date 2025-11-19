@interface __PFExampleClass
- (__PFExampleClass)init;
- (void)pfExampleFunction;
@end

@implementation __PFExampleClass

- (void)pfExampleFunction
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18592DDF0;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x800000018592F080;
  print(_:separator:terminator:)();
}

- (__PFExampleClass)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _PFExampleClass();
  return [(__PFExampleClass *)&v3 init];
}

@end