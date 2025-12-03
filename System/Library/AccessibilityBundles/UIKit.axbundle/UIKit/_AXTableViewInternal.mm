@interface _AXTableViewInternal
- (_AXTableViewInternal)init;
- (uint64_t)accessibleElementCount;
- (uint64_t)children;
- (uint64_t)indexMap;
- (uint64_t)searchControllerDimmingViewVisible;
- (uint64_t)searchTableViewVisible;
- (uint64_t)sectionFooters;
- (uint64_t)sectionHeaders;
- (uint64_t)setAccessibleElementCount:(uint64_t)result;
- (uint64_t)setReusableCellsEnabled:(uint64_t)result;
- (uint64_t)setSearchControllerDimmingViewVisible:(uint64_t)result;
- (uint64_t)setSearchTableViewVisible:(uint64_t)result;
@end

@implementation _AXTableViewInternal

- (_AXTableViewInternal)init
{
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = _AXTableViewInternal;
  v13 = [(_AXTableViewInternal *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v2 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
    v3 = *(v13 + 1);
    *(v13 + 1) = v2;
    MEMORY[0x29EDC9740](v3);
    v4 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
    v5 = *(v13 + 2);
    *(v13 + 2) = v4;
    MEMORY[0x29EDC9740](v5);
    v6 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
    v7 = *(v13 + 3);
    *(v13 + 3) = v6;
    MEMORY[0x29EDC9740](v7);
    v8 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
    v9 = *(v13 + 4);
    *(v13 + 4) = v8;
    MEMORY[0x29EDC9740](v9);
    v14 = MEMORY[0x29EDC9748](v13);
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&v13, 0);
  return v14;
}

- (uint64_t)searchControllerDimmingViewVisible
{
  if (self)
  {
    v2 = *(self + 42) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setSearchControllerDimmingViewVisible:(uint64_t)result
{
  if (result)
  {
    *(result + 42) = a2 & 1;
  }

  return result;
}

- (uint64_t)searchTableViewVisible
{
  if (self)
  {
    v2 = *(self + 41) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)setSearchTableViewVisible:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2 & 1;
  }

  return result;
}

- (uint64_t)accessibleElementCount
{
  if (self)
  {
    return *(self + 48);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setAccessibleElementCount:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)children
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)indexMap
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setReusableCellsEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2 & 1;
  }

  return result;
}

- (uint64_t)sectionHeaders
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)sectionFooters
{
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0;
  }
}

@end