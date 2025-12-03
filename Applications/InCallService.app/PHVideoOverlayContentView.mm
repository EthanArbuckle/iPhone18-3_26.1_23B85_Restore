@interface PHVideoOverlayContentView
- (double)textFontSize;
- (double)titleFontSize;
- (void)resetView;
@end

@implementation PHVideoOverlayContentView

- (void)resetView
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subviews = [(PHVideoOverlayContentView *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v7 + 1) + 8 * v6) removeFromSuperview];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (double)textFontSize
{
  if (qword_1003B0E40 != -1)
  {
    sub_100255F04();
  }

  return *&qword_1003B0E38;
}

- (double)titleFontSize
{
  if (qword_1003B0E50 != -1)
  {
    sub_100255F18();
  }

  return *&qword_1003B0E48;
}

@end