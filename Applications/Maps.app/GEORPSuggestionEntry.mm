@interface GEORPSuggestionEntry
- (id)initWithType:(int)a3;
- (void)safeAddDisplayLine:(id)a3;
@end

@implementation GEORPSuggestionEntry

- (void)safeAddDisplayLine:(id)a3
{
  if (a3)
  {
    [(GEORPSuggestionEntry *)self addDisplayLine:?];
  }
}

- (id)initWithType:(int)a3
{
  v3 = *&a3;
  v4 = [(GEORPSuggestionEntry *)self init];
  v5 = v4;
  if (v4)
  {
    [(GEORPSuggestionEntry *)v4 setType:v3];
  }

  return v5;
}

@end