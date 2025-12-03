@interface PKInputPointExtraRollLatencyFilter
- (id).cxx_construct;
- (void)addInputPoint:(id *)point;
- (void)resetFilter;
@end

@implementation PKInputPointExtraRollLatencyFilter

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  return self;
}

- (void)resetFilter
{
  v3.receiver = self;
  v3.super_class = PKInputPointExtraRollLatencyFilter;
  [(PKInputPointBaseFilter *)&v3 resetFilter];
  std::vector<double>::resize(&self->_inputRolls.__begin_, 0);
}

- (void)addInputPoint:(id *)point
{
  if (self)
  {
    ++self->super._numInputPoints;
    numFramesExtraLatency = self->_numFramesExtraLatency;
    if (numFramesExtraLatency)
    {
      p_inputRolls = &self->_inputRolls;
      begin = self->_inputRolls.__begin_;
      end = self->_inputRolls.__end_;
      v9 = end - begin;
      v10 = end - begin;
      if (v10 > numFramesExtraLatency)
      {
        v11 = end - 1;
        do
        {
          if (end != begin + 1)
          {
            memmove(begin, begin + 1, v11 - begin);
            begin = p_inputRolls->__begin_;
          }

          end = v11;
          self->_inputRolls.__end_ = v11;
          v10 = v11 - begin;
          --v11;
        }

        while (v10 > self->_numFramesExtraLatency);
        end = v11 + 1;
        v9 = v11 - begin + 8;
      }

      cap = self->_inputRolls.__cap_;
      if (end >= cap)
      {
        v14 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v15 = cap - begin;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&self->_inputRolls, v16);
        }

        *(8 * v10) = point->var13;
        v13 = (8 * v10 + 8);
        memcpy(0, begin, v9);
        v17 = p_inputRolls->__begin_;
        p_inputRolls->__begin_ = 0;
        self->_inputRolls.__end_ = v13;
        self->_inputRolls.__cap_ = 0;
        if (v17)
        {
          operator delete(v17);
          begin = p_inputRolls->__begin_;
        }

        else
        {
          begin = 0;
        }
      }

      else
      {
        *end = point->var13;
        v13 = end + 1;
      }

      self->_inputRolls.__end_ = v13;
      point->var13 = *begin;
    }

    memmove(&self->super._filteredPoint, point, 0x88uLL);
  }
}

@end