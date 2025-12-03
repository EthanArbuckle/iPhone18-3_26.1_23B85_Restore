@interface AVPlayerItem(MPAVItemAdditions)
- (id)MPAVItem;
- (void)setMPAVItem:()MPAVItemAdditions;
@end

@implementation AVPlayerItem(MPAVItemAdditions)

- (void)setMPAVItem:()MPAVItemAdditions
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVPlayerItem_MPAVItemAdditions__setMPAVItem___block_invoke;
  v6[3] = &unk_1E767FF10;
  objc_copyWeak(&v7, &location);
  v5 = _Block_copy(v6);
  objc_setAssociatedObject(self, 0, v5, 1);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)MPAVItem
{
  v1 = objc_getAssociatedObject(self, 0);
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end