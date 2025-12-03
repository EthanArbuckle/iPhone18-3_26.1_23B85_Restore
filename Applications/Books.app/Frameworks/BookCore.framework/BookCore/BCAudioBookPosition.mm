@interface BCAudioBookPosition
+ (id)positionWithChapter:(int64_t)chapter time:(double)time;
- (NSString)description;
- (int64_t)compare:(id)compare;
@end

@implementation BCAudioBookPosition

+ (id)positionWithChapter:(int64_t)chapter time:(double)time
{
  v6 = objc_alloc_init(BCAudioBookPosition);
  [(BCAudioBookPosition *)v6 setTimePosition:time];
  [(BCAudioBookPosition *)v6 setChapterNum:chapter];

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = BUDynamicCast();

  chapterNum = [(BCAudioBookPosition *)self chapterNum];
  if (chapterNum == [v5 chapterNum])
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
    chapterNum2 = [(BCAudioBookPosition *)self chapterNum];
    if (chapterNum2 < [v5 chapterNum])
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