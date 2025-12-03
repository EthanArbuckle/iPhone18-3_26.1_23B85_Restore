@interface CPRouteLine
- (id)_maps_description;
@end

@implementation CPRouteLine

- (id)_maps_description
{
  v3 = [NSMutableArray alloc];
  routeLegs = [(CPRouteLine *)self routeLegs];
  v36 = [v3 initWithCapacity:{objc_msgSend(routeLegs, "count")}];

  routeLegs2 = [(CPRouteLine *)self routeLegs];
  v6 = [routeLegs2 count];

  if (v6)
  {
    v7 = 0;
    selfCopy = self;
    do
    {
      routeLegs3 = [(CPRouteLine *)self routeLegs];
      v9 = [routeLegs3 objectAtIndexedSubscript:v7];

      v10 = [[NSMutableArray alloc] initWithCapacity:2];
      origin = [v9 origin];
      name = [origin name];
      origin2 = [v9 origin];
      address = [origin2 address];
      shortAddress = [address shortAddress];
      v16 = [NSString stringWithFormat:@"Origin: %@ | %@", name, shortAddress];
      [v10 addObject:v16];

      destination = [v9 destination];
      name2 = [destination name];
      destination2 = [v9 destination];
      address2 = [destination2 address];
      shortAddress2 = [address2 shortAddress];
      v22 = [NSString stringWithFormat:@"Destination: %@ | %@", name2, shortAddress2];
      [v10 addObject:v22];

      if (GEOConfigGetBOOL())
      {
        v23 = log10([v9 coordinates3DCount]);
        if ([v9 coordinates3DCount])
        {
          v24 = 0;
          v25 = 0;
          do
          {
            coordinates3D = [v9 coordinates3D];
            v27 = [NSString stringWithFormat:@"    [%*d] %0.6f, %0.6f | %0.1fm", (v23 + 1), v25, *&coordinates3D[v24], *&coordinates3D[v24 + 8], *&coordinates3D[v24 + 16]];
            [v10 addObject:v27];

            ++v25;
            v24 += 24;
          }

          while (v25 < [v9 coordinates3DCount]);
        }
      }

      coordinates3DCount = [v9 coordinates3DCount];
      v29 = [v10 componentsJoinedByString:@"\n    "];
      v30 = [NSString stringWithFormat:@"Route leg %d (%d coordinates):\n    %@", v7, coordinates3DCount, v29];
      [v36 addObject:v30];

      ++v7;
      self = selfCopy;
      routeLegs4 = [(CPRouteLine *)selfCopy routeLegs];
      v32 = [routeLegs4 count];
    }

    while (v7 < v32);
  }

  v33 = [v36 componentsJoinedByString:@"\n"];

  return v33;
}

@end