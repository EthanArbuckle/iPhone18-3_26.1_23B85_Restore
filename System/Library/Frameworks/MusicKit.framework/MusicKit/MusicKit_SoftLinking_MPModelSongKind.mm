@interface MusicKit_SoftLinking_MPModelSongKind
- (MusicKit_SoftLinking_MPModelSongKind)initWithVariants:(unint64_t)variants options:(unint64_t)options;
@end

@implementation MusicKit_SoftLinking_MPModelSongKind

- (MusicKit_SoftLinking_MPModelSongKind)initWithVariants:(unint64_t)variants options:(unint64_t)options
{
  v7 = [getMPModelSongClass() kindWithVariants:variants options:options];
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPModelSongKind;
  v8 = [(MusicKit_SoftLinking_MPModelKind *)&v11 _initWithUnderlyingKind:v7];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    v8->_variants = variants;
  }

  return v9;
}

@end