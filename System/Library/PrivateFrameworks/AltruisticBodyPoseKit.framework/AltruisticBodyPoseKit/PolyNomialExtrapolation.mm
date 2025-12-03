@interface PolyNomialExtrapolation
- (PolyNomialExtrapolation)initWithHistorySize:(unint64_t)size degreeOfPolynomial:(unint64_t)polynomial;
- (double)predict;
- (id).cxx_construct;
- (void)printHistoryNamed:(id)named;
- (void)pushPoint:(PolyNomialExtrapolation *)self;
@end

@implementation PolyNomialExtrapolation

- (PolyNomialExtrapolation)initWithHistorySize:(unint64_t)size degreeOfPolynomial:(unint64_t)polynomial
{
  polynomialCopy = polynomial;
  sizeCopy = size;
  v25.receiver = self;
  v25.super_class = PolyNomialExtrapolation;
  v6 = [(PolyNomialExtrapolation *)&v25 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    *(v6 + 2) = sizeCopy;
    *(v6 + 3) = polynomialCopy;
    std::vector<unsigned int>::resize((v6 + 112), sizeCopy);
    begin = v8->_g.__begin_;
    end = v8->_g.__end_;
    if (begin != end)
    {
      v11 = 0;
      v12 = (end - begin - 4) >> 2;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v15 = begin + 2;
      do
      {
        v16 = vdupq_n_s64(v11);
        v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_23EE284E0)));
        if (vuzp1_s16(v17, *v13.i8).u8[0])
        {
          *(v15 - 2) = v11;
        }

        if (vuzp1_s16(v17, *&v13).i8[2])
        {
          *(v15 - 1) = (v11 + 1);
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_23EE284D0)))).i32[1])
        {
          *v15 = (v11 + 2);
          v15[1] = (v11 + 3);
        }

        v11 += 4;
        v15 += 4;
      }

      while (v14 != v11);
    }

    N = v8->_N;
    v19 = v8->_n + 1;
    v8->_A[0].m_rows = N;
    v8->_A[0].m_cols = v19;
    cva::MatrixData<float,0ul,0ul,false>::reserve((v7 + 16), v19 * N);
    v20 = v8->_N;
    v21 = v8->_n + 1;
    v8->_A[1].m_rows = v20;
    v8->_A[1].m_cols = v21;
    cva::MatrixData<float,0ul,0ul,false>::reserve((v7 + 40), v21 * v20);
    v22 = v8->_N;
    v8->_b[0].m_rows = v22;
    cva::MatrixData<float,0ul,0ul,false>::reserve((v7 + 64), v22);
    v23 = v8->_N;
    v8->_b[1].m_rows = v23;
    cva::MatrixData<float,0ul,0ul,false>::reserve((v7 + 88), v23);
  }

  return v8;
}

- (void)pushPoint:(PolyNomialExtrapolation *)self
{
  v5 = *(&v2 + 1);
  v7 = v2;
  std::deque<float>::push_back(&self->_x, &v7);
  v6 = v5;
  std::deque<float>::push_back(&self->_y, &v6);
  size = self->_x.__size_;
  if (size > self->_N)
  {
    ++self->_x.__start_;
    self->_x.__size_ = size - 1;
    std::deque<float>::__maybe_remove_front_spare[abi:ne200100](&self->_x, 1);
    *&self->_y.__start_ = vaddq_s64(*&self->_y.__start_, xmmword_23EE28930);
    std::deque<float>::__maybe_remove_front_spare[abi:ne200100](&self->_y, 1);
  }
}

- (double)predict
{
  v46 = *MEMORY[0x277D85DE8];
  if ([self ready])
  {
    v29 = *(self + 8);
    if (v29 >= 1)
    {
      v2 = 0;
      v3 = *(self + 12);
      do
      {
        if ((v3 & 0x80000000) == 0)
        {
          v4 = *(self + 32);
          if (v2 < v4)
          {
            v5 = 0;
            v6 = *(self + 112);
            v7 = *(self + 36);
            v8 = v3;
            v9 = v2;
            while (v7 != v5)
            {
              v10 = pow(*(v6 + 4 * v2), v8);
              *(*(self + 16) + 4 * v9) = v10;
              v11 = pow(*(v6 + 4 * v2), v8);
              v12 = *(self + 56);
              if (v2 >= v12 || v5 >= *(self + 60))
              {
                [PolyNomialExtrapolation predict];
              }

              v13 = v11;
              *(*(self + 40) + 4 * (v2 + v12 * v5++)) = v13;
              v9 += v4;
              --v8;
              if (v3 + 1 == v5)
              {
                goto LABEL_11;
              }
            }
          }

          [PolyNomialExtrapolation predict];
        }

LABEL_11:
        ++v2;
      }

      while (v2 != (v29 & ~(v29 >> 31)));
    }

    if (v29 >= 1)
    {
      v14 = 0;
      v15 = *(self + 80);
      do
      {
        if (v15 == v14)
        {
          [PolyNomialExtrapolation predict];
        }

        *(*(self + 64) + 4 * v14) = *(*(*(self + 144) + (((v14 + *(self + 168)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v14 + *(self + 168)) & 0x3FF));
        if (v14 >= *(self + 104))
        {
          [PolyNomialExtrapolation predict];
        }

        *(*(self + 88) + 4 * v14) = *(*(*(self + 192) + (((v14 + *(self + 216)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v14 + *(self + 216)) & 0x3FF));
        ++v14;
      }

      while (v29 != v14);
    }

    v41 = 869711765;
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v33, (self + 16), 3, 0);
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(v33, &v41, v36);
    if (v38 != *(self + 80))
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v39[0] = 0;
    v39[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v39, v37);
    v40 = v37;
    v43 = v36;
    v44 = self + 64;
    if (v38 != *(self + 80))
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v45 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(v39, v42);
    free(v36[0]);
    free(v35);
    free(v34);
    free(v33[0]);
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v33, (self + 40), 3, 0);
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(v33, &v41, v30);
    if (v32 != *(self + 104))
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v36[0] = 0;
    v36[1] = 0;
    cva::MatrixData<int,0ul,0ul,false>::allocate(v36, v31);
    v37 = v31;
    v43 = v30;
    v44 = self + 88;
    if (v32 != *(self + 104))
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    v45 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,1u,false>,cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,1u,false>>(v36, v42);
    free(v30[0]);
    free(v35);
    free(v34);
    free(v33[0]);
    v16 = *(self + 12);
    v17 = v36[0];
    if ((v16 & 0x80000000) != 0)
    {
      v22 = 0;
    }

    else
    {
      if (v16 >= v37)
      {
        v18 = v37;
      }

      else
      {
        v18 = *(self + 12);
      }

      if (v40 <= v18 || v37 == v18)
      {
        __assert_rtn("assert_in_bounds", "matrixmixin.h", 2269, "((row < mixed().rows()) && (col < mixed().columns())) || cva::detail::assertMessage(Index out of bounds!)");
      }

      v19 = v39[0];
      v20 = v16 + 1;
      v21 = *(self + 8);
      v22 = 0;
      v23 = v36[0];
      do
      {
        v24 = pow(v21, v16);
        v25 = *v19++;
        v26.i32[0] = v25;
        v26.i32[1] = *v23++;
        v22 = vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(v22), vcvtq_f64_f32(v26), v24));
        LODWORD(v16) = v16 - 1;
        --v20;
      }

      while (v20);
    }

    free(v17);
    free(v39[0]);
  }

  else
  {
    v22 = vneg_f32(0x3F0000003FLL);
  }

  v27 = *MEMORY[0x277D85DE8];
  return *&v22;
}

- (void)printHistoryNamed:(id)named
{
  namedCopy = named;
  printf("%s = [", [named UTF8String]);
  if (self->_x.__size_)
  {
    v6 = 0;
    do
    {
      printf("%f, %f;", (*(self->_x.__map_.__begin_ + (((v6 + self->_x.__start_) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v6 + self->_x.__start_) & 0x3FF], (*(self->_y.__map_.__begin_ + (((v6 + self->_y.__start_) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v6 + self->_y.__start_) & 0x3FF]);
      ++v6;
    }

    while (self->_x.__size_ > v6);
  }

  puts("];");
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 26) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 28) = 0;
  return self;
}

@end