@interface THWAudioLayout
- (THWMovieInfo)movieInfo;
- (id)layoutGeometryForLayout:(id)a3;
- (void)updateChildrenFromInfo;
@end

@implementation THWAudioLayout

- (THWMovieInfo)movieInfo
{
  objc_opt_class();
  [(THWAudioLayout *)self info];

  return TSUDynamicCast();
}

- (void)updateChildrenFromInfo
{
  if ([(THWMovieInfo *)[(THWAudioLayout *)self movieInfo] posterImageInfo])
  {
    v3 = [-[THWAudioLayout layoutController](self "layoutController")];
    if (!v3)
    {
      v3 = [objc_alloc(-[TSDImageInfo layoutClass](-[THWMovieInfo posterImageInfo](-[THWAudioLayout movieInfo](self "movieInfo")];
    }

    [(THWAudioLayout *)self setChildren:[NSArray arrayWithObject:v3]];

    [-[THWAudioLayout children](self "children")];

    [(THWAudioLayout *)self invalidate];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = THWAudioLayout;
    [(THWMovieLayout *)&v4 updateChildrenFromInfo];
  }
}

- (id)layoutGeometryForLayout:(id)a3
{
  v5 = [a3 info];
  if (v5 == [(THWMovieInfo *)[(THWAudioLayout *)self movieInfo] posterImageInfo])
  {
    v7 = [TSDLayoutGeometry alloc];
    [objc_msgSend(objc_msgSend(a3 "info")];
    v8 = *&CGAffineTransformIdentity.c;
    v10[0] = *&CGAffineTransformIdentity.a;
    v10[1] = v8;
    v10[2] = *&CGAffineTransformIdentity.tx;
    return [v7 initWithSize:v10 transform:?];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWAudioLayout;
    return [(THWMovieLayout *)&v9 layoutGeometryForLayout:a3];
  }
}

@end