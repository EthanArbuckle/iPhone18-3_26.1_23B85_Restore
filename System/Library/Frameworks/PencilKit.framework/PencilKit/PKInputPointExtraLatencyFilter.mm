@interface PKInputPointExtraLatencyFilter
- (id).cxx_construct;
- (void)addInputPoint:(id *)point;
@end

@implementation PKInputPointExtraLatencyFilter

- (void)addInputPoint:(id *)point
{
  if (self)
  {
    ++self->super._numInputPoints;
    numFramesExtraLatency = self->_numFramesExtraLatency;
    if (numFramesExtraLatency)
    {
      p_inputPoints = &self->_inputPoints;
      begin = self->_inputPoints.__begin_;
      end = self->_inputPoints.__end_;
      v9 = 0xF0F0F0F0F0F0F0F1 * ((end - begin) >> 3);
      if (v9 > numFramesExtraLatency)
      {
        v10 = (end - 136);
        do
        {
          if (end != (begin + 136))
          {
            memmove(begin, begin + 136, v10 - begin);
            begin = p_inputPoints->__begin_;
          }

          end = v10;
          self->_inputPoints.__end_ = v10;
          v9 = 0xF0F0F0F0F0F0F0F1 * ((v10 - begin) >> 3);
          v10 = (v10 - 136);
        }

        while (v9 > self->_numFramesExtraLatency);
        end = (v10 + 136);
      }

      cap = self->_inputPoints.__cap_;
      if (end >= cap)
      {
        v19 = v9 + 1;
        if (v9 + 1 > 0x1E1E1E1E1E1E1E1)
        {
          std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
        }

        v20 = 0xF0F0F0F0F0F0F0F1 * ((cap - begin) >> 3);
        if (2 * v20 > v19)
        {
          v19 = 2 * v20;
        }

        if (v20 >= 0xF0F0F0F0F0F0F0)
        {
          v21 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(&self->_inputPoints, v21);
        }

        v22 = 136 * v9;
        *v22 = point->var0;
        v23 = *&point->var1;
        v24 = *&point->var3;
        v25 = *&point->var7;
        *(v22 + 48) = *&point->var5;
        *(v22 + 64) = v25;
        *(v22 + 16) = v23;
        *(v22 + 32) = v24;
        v26 = *&point->var9;
        v27 = *&point->var11;
        v28 = *&point->var13;
        *(v22 + 128) = point->var15;
        *(v22 + 96) = v27;
        *(v22 + 112) = v28;
        *(v22 + 80) = v26;
        v18 = (136 * v9 + 136);
        v29 = (self->_inputPoints.__end_ - p_inputPoints->__begin_);
        v30 = (v22 - v29);
        memcpy((v22 - v29), p_inputPoints->__begin_, v29);
        v31 = p_inputPoints->__begin_;
        p_inputPoints->__begin_ = v30;
        self->_inputPoints.__end_ = v18;
        self->_inputPoints.__cap_ = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *end = point->var0;
        v12 = *&point->var1;
        v13 = *&point->var3;
        v14 = *&point->var7;
        *(end + 3) = *&point->var5;
        *(end + 4) = v14;
        *(end + 1) = v12;
        *(end + 2) = v13;
        v15 = *&point->var9;
        v16 = *&point->var11;
        v17 = *&point->var13;
        *(end + 16) = point->var15;
        *(end + 6) = v16;
        *(end + 7) = v17;
        *(end + 5) = v15;
        v18 = (end + 136);
      }

      self->_inputPoints.__end_ = v18;
      point = p_inputPoints->__begin_;
    }

    memmove(&self->super._filteredPoint, point, 0x88uLL);
  }
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  return self;
}

@end