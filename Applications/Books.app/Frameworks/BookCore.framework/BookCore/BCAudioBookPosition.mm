@interface BCAudioBookPosition
+ (id)positionWithChapter:(int64_t)a3 time:(double)a4;
- (NSString)description;
- (int64_t)compare:(id)a3;
@end

@implementation BCAudioBookPosition

+ (id)positionWithChapter:(int64_t)a3 time:(double)a4
{
  v6 = objc_alloc_init(BCAudioBookPosition);
  [(BCAudioBookPosition *)v6 setTimePosition:a4];
  [(BCAudioBookPosition *)v6 setChapterNum:a3];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [(BCAudioBookPosition *)self chapterNum];
  if (v6 == [v5 chapterNum])
  {
    [(BCAudioBookPosition *)self timePosition];
    v8 = v7;
    [v5 timePosition];
    if (v8 == v9)
    {
      v13 = 0;
    }

    else
    {
      [(BCAudioBookPosition *)self timePosition];
      v11 = v10;
      [v5 timePosition];
      if (v11 >= v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }
    }
  }

  else
  {
    v14 = [(BCAudioBookPosition *)self chapterNum];
    if (v14 < [v5 chapterNum])
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (NSString)description
{
  v3 = [NSNumber numberWithInteger:[(BCAudioBookPosition *)self chapterNum]];
  [(BCAudioBookPosition *)self timePosition];
  v4 = [NSNumber numberWithDouble:?];
  v5 = [NSString stringWithFormat:@"BCAudioBookPosition(chapter:%@ time:%@)", v3, v4];

  return v5;
}

@end