@interface _NUIViewContainerViewInfo
- (_NUIViewContainerViewInfo)init;
- (double)resetCaches;
- (id).cxx_construct;
@end

@implementation _NUIViewContainerViewInfo

- (double)resetCaches
{
  if (a1)
  {
    *(a1 + 16) = *(a1 + 8);
    v1 = *(a1 + 144);
    *(a1 + 144) = v1 & 0xF7;
    if ((v1 & 0x10) == 0)
    {
      result = 1.79769313e308;
      *(a1 + 128) = 0x7FEFFFFFFFFFFFFFLL;
    }

    if ((v1 & 0x20) == 0)
    {
      result = 1.79769313e308;
      *(a1 + 136) = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (_NUIViewContainerViewInfo)init
{
  v4.receiver = self;
  v4.super_class = _NUIViewContainerViewInfo;
  result = [(_NUIViewContainerViewInfo *)&v4 init];
  if (result)
  {
    result->_minSize = *MEMORY[0x277CBF3A8];
    result->_maxSize = vdupq_n_s64(0x40C3880000000000uLL);
    *&result->_alignmentInsets.top = NUIContainerViewInsetsUseDefault;
    *&result->_alignmentInsets.bottom = unk_21D0BFBE8;
    result->_sizeCache.__end_ = result->_sizeCache.__begin_;
    flags = result->_flags;
    *&result->_flags = flags & 0xF7;
    if ((flags & 0x10) == 0)
    {
      result->_baselines.baseLineFromTop = 1.79769313e308;
    }

    if ((flags & 0x20) == 0)
    {
      result->_baselines.baseLineFromBottom = 1.79769313e308;
    }
  }

  return result;
}

@end