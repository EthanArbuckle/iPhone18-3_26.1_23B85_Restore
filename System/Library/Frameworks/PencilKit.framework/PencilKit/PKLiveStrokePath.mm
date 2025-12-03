@interface PKLiveStrokePath
- (PKLiveStrokePath)initWithPoints:(PKCompressedStrokePoint *)points count:(unint64_t)count immutableCount:(unint64_t)immutableCount inputType:(int64_t)type timestamp:(double)timestamp UUID:(id)d inputPoints:(const void *)inputPoints;
- (id).cxx_construct;
- (id)regenerateStrokeWithInk:(id)ink randomSeed:(unsigned int)seed strokeClass:(Class)class;
@end

@implementation PKLiveStrokePath

- (PKLiveStrokePath)initWithPoints:(PKCompressedStrokePoint *)points count:(unint64_t)count immutableCount:(unint64_t)immutableCount inputType:(int64_t)type timestamp:(double)timestamp UUID:(id)d inputPoints:(const void *)inputPoints
{
  dCopy = d;
  v40.receiver = self;
  v40.super_class = PKLiveStrokePath;
  v17 = [(PKStrokePath *)&v40 initWithPoints:points count:count immutableCount:immutableCount inputType:type timestamp:dCopy UUID:timestamp];
  v18 = v17;
  p_inputPoints = &v17->_inputPoints;
  if (&v17->_inputPoints == inputPoints)
  {
    end = v17->_inputPoints.__end_;
  }

  else
  {
    v20 = *inputPoints;
    v21 = *(inputPoints + 1);
    v22 = &v21[-*inputPoints];
    cap = v17->_inputPoints.__cap_;
    v24 = *p_inputPoints;
    if (cap - *p_inputPoints < v22)
    {
      v25 = 0xF0F0F0F0F0F0F0F1 * (v22 >> 3);
      if (v24)
      {
        v17->_inputPoints.__end_ = v24;
        operator delete(v24);
        cap = 0;
        *p_inputPoints = 0;
        *(p_inputPoints + 8) = 0;
        *(p_inputPoints + 16) = 0;
      }

      if (v25 <= 0x1E1E1E1E1E1E1E1)
      {
        v26 = 0xF0F0F0F0F0F0F0F1 * (cap >> 3);
        v27 = 2 * v26;
        if (2 * v26 <= v25)
        {
          v27 = 0xF0F0F0F0F0F0F0F1 * (v22 >> 3);
        }

        if (v26 >= 0xF0F0F0F0F0F0F0)
        {
          v28 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v28 = v27;
        }

        std::vector<PKInputPoint>::__vallocate[abi:ne200100](p_inputPoints, v28);
      }

      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v30 = v17->_inputPoints.__end_;
    v31 = v30 - v24;
    if (v30 - v24 >= v22)
    {
      if (v21 != v20)
      {
        memmove(v24, v20, v22);
      }

      end = (v24 + v22);
    }

    else
    {
      v32 = &v20[v31];
      if (v30 != v24)
      {
        memmove(*p_inputPoints, v20, v31);
        v30 = *(p_inputPoints + 8);
      }

      if (v21 != v32)
      {
        memmove(v30, v32, v21 - v32);
      }

      end = (v30 + v21 - v32);
    }

    *(p_inputPoints + 8) = end;
  }

  v33 = *p_inputPoints;
  if (*p_inputPoints != end)
  {
    v34 = 0;
    v35 = end - v33 - 136;
    v36 = vdupq_n_s64(v35 / 0x88);
    v37 = (v33 + 216);
    do
    {
      v38 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v34), xmmword_1C8018F80)));
      if (v38.i8[0])
      {
        *(v37 - 17) = -1;
      }

      if (v38.i8[4])
      {
        *v37 = -1;
      }

      v34 += 2;
      v37 += 34;
    }

    while (((v35 / 0x88 + 2) & 0x3FFFFFFFFFFFFFELL) != v34);
  }

  return v18;
}

- (id)regenerateStrokeWithInk:(id)ink randomSeed:(unsigned int)seed strokeClass:(Class)class
{
  v6 = *&seed;
  inkCopy = ink;
  v9 = objc_alloc_init(PKStrokeGenerator);
  [(PKStrokeGenerator *)v9 setCaptureLiveData:1];
  v10 = [(PKStrokeGenerator *)v9 strokeFromInputPoints:&self->_inputPoints inputType:[(PKStrokePath *)self _inputType] ink:inkCopy inputScale:v6 randomSeed:class strokeClass:1.0];

  return v10;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end