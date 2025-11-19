@interface CPRouteLine
- (id)_maps_description;
@end

@implementation CPRouteLine

- (id)_maps_description
{
  v3 = [NSMutableArray alloc];
  v4 = [(CPRouteLine *)self routeLegs];
  v36 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v5 = [(CPRouteLine *)self routeLegs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v35 = self;
    do
    {
      v8 = [(CPRouteLine *)self routeLegs];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v10 = [[NSMutableArray alloc] initWithCapacity:2];
      v11 = [v9 origin];
      v12 = [v11 name];
      v13 = [v9 origin];
      v14 = [v13 address];
      v15 = [v14 shortAddress];
      v16 = [NSString stringWithFormat:@"Origin: %@ | %@", v12, v15];
      [v10 addObject:v16];

      v17 = [v9 destination];
      v18 = [v17 name];
      v19 = [v9 destination];
      v20 = [v19 address];
      v21 = [v20 shortAddress];
      v22 = [NSString stringWithFormat:@"Destination: %@ | %@", v18, v21];
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
            v26 = [v9 coordinates3D];
            v27 = [NSString stringWithFormat:@"    [%*d] %0.6f, %0.6f | %0.1fm", (v23 + 1), v25, *&v26[v24], *&v26[v24 + 8], *&v26[v24 + 16]];
            [v10 addObject:v27];

            ++v25;
            v24 += 24;
          }

          while (v25 < [v9 coordinates3DCount]);
        }
      }

      v28 = [v9 coordinates3DCount];
      v29 = [v10 componentsJoinedByString:@"\n    "];
      v30 = [NSString stringWithFormat:@"Route leg %d (%d coordinates):\n    %@", v7, v28, v29];
      [v36 addObject:v30];

      ++v7;
      self = v35;
      v31 = [(CPRouteLine *)v35 routeLegs];
      v32 = [v31 count];
    }

    while (v7 < v32);
  }

  v33 = [v36 componentsJoinedByString:@"\n"];

  return v33;
}

@end