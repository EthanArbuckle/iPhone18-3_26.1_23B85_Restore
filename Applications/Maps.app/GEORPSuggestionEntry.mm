@interface GEORPSuggestionEntry
- (id)initWithType:(int)type;
- (void)safeAddDisplayLine:(id)line;
@end

@implementation GEORPSuggestionEntry

- (void)safeAddDisplayLine:(id)line
{
  if (line)
  {
    [(GEORPSuggestionEntry *)self addDisplayLine:?];
  }
}

- (id)initWithType:(int)type
{
  v3 = *&type;
  v4 = [(GEORPSuggestionEntry *)self init];
  v5 = v4;
  if (v4)
  {
    [(GEORPSuggestionEntry *)v4 setType:v3];
  }

  return v5;
}

@end