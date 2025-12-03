@interface MsdosLongNameContext
- (MsdosLongNameContext)init;
- (void)fillWithFirstLongNameEntry:(winentry *)entry;
- (void)invalidate;
@end

@implementation MsdosLongNameContext

- (MsdosLongNameContext)init
{
  v5.receiver = self;
  v5.super_class = MsdosLongNameContext;
  v2 = [(MsdosLongNameContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MsdosLongNameContext *)v2 setNumLongNameEntries:0];
    [(MsdosLongNameContext *)v3 setNumLongNameEntriesLeft:0];
    [(MsdosLongNameContext *)v3 setCheckSum:0];
    [(MsdosLongNameContext *)v3 setIsValid:0];
  }

  return v3;
}

- (void)fillWithFirstLongNameEntry:(winentry *)entry
{
  [(MsdosLongNameContext *)self setNumLongNameEntries:entry->var0 & 0x3F];
  [(MsdosLongNameContext *)self setNumLongNameEntriesLeft:[(MsdosLongNameContext *)self numLongNameEntries]];
  [(MsdosLongNameContext *)self setCheckSum:entry->var4];

  [(MsdosLongNameContext *)self setIsValid:1];
}

- (void)invalidate
{
  [(MsdosLongNameContext *)self setNumLongNameEntries:0];
  [(MsdosLongNameContext *)self setNumLongNameEntriesLeft:0];
  [(MsdosLongNameContext *)self setCheckSum:0];

  [(MsdosLongNameContext *)self setIsValid:0];
}

@end