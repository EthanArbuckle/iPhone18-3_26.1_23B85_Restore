@interface (start:Int,end:Int,count:
- (uint64_t)Int);
- (unint64_t)Int);
@end

@implementation (start:Int,end:Int,count:

- (uint64_t)Int)
{
  v1 = *a1;

  return a1;
}

- (unint64_t)Int)
{
  v2 = lazy protocol witness table cache variable for type [(start: Int, end: Int, count: Int)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(start: Int, end: Int, count: Int)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySi5start_Si3endSi5counttGMd, &_sSaySi5start_Si3endSi5counttGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(start: Int, end: Int, count: Int)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

@end