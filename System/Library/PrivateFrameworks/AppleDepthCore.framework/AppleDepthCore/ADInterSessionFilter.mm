@interface ADInterSessionFilter
- (ADInterSessionFilter)initWithFieldNames:(id)names parameters:(id)parameters;
- (BOOL)TtestStepWithCandidate:(unsigned int)candidate;
- (double)L2FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element WithMean:(double)mean;
- (double)LossFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex;
- (double)SLFromIndex:(unsigned int)index;
- (double)TTESTWithCandidate:(unsigned int)candidate ByElement:(unsigned int)element;
- (double)V1FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex;
- (double)V2FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex;
- (double)samplesMeanFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element;
- (double)samplesVarianceFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element WithMean:(double)mean;
- (double)sigmaSWithCandidate:(unsigned int)candidate ByElement:(unsigned int)element;
- (id).cxx_construct;
- (id)calculate;
- (id)calculateInterSessionFilterResultFromIndex:(unsigned int)index;
- (id)insertEntryAndCalculate:(id)calculate withWeight:(double)weight;
- (id)persistenceData;
- (int64_t)fillWithDictionaryRepresentation:(id)representation;
- (int64_t)fillWithEntry:(id)entry;
- (int64_t)insertEntry:(id)entry withWeight:(double)weight;
- (int64_t)markOutliers:(unsigned int)outliers;
- (unsigned)kIndexCandidate;
- (unsigned)stepDetection;
- (void)dealloc;
- (void)markInStep:(unsigned int)step;
- (void)setOnlineWeights:(unsigned int)weights;
@end

@implementation ADInterSessionFilter

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 11) = 0;
  *(self + 10) = 0;
  *(self + 9) = self + 80;
  return self;
}

- (BOOL)TtestStepWithCandidate:(unsigned int)candidate
{
  v3 = *&candidate;
  v5 = 0.0;
  if ([(NSArray *)self->_elementsNames count])
  {
    v6 = 1;
    do
    {
      [(ADInterSessionFilter *)self TTESTWithCandidate:v3 ByElement:v6 - 1];
      if (v7 > v5)
      {
        v5 = v7;
      }
    }

    while ([(NSArray *)self->_elementsNames count]> v6++);
  }

  [(ADInterSessionFilterParameters *)self->_params stepDetectionThreshold];
  return v5 > v9;
}

- (double)TTESTWithCandidate:(unsigned int)candidate ByElement:(unsigned int)element
{
  v4 = *&element;
  v5 = *&candidate;
  size = self->_nodes.__size_;
  v8 = size - candidate;
  [(ADInterSessionFilter *)self samplesMeanFromIndex:0 ToIndex:candidate - 1 ByElement:*&element];
  v10 = v9;
  [(ADInterSessionFilter *)self samplesMeanFromIndex:v5 ToIndex:(size - 1) ByElement:v4];
  v12 = v10 - v11;
  [(ADInterSessionFilter *)self sigmaSWithCandidate:v5 ByElement:v4];
  if (v13 < 1.0)
  {
    v13 = 1.0;
  }

  return fabs(v12 / (v13 * sqrt(1.0 / v5 + 1.0 / v8)));
}

- (double)sigmaSWithCandidate:(unsigned int)candidate ByElement:(unsigned int)element
{
  v4 = *&element;
  v5 = *&candidate;
  size = self->_nodes.__size_;
  v8 = candidate - 1;
  [(ADInterSessionFilter *)self samplesMeanFromIndex:0 ToIndex:v8 ByElement:*&element];
  [(ADInterSessionFilter *)self samplesVarianceFromIndex:0 ToIndex:v8 ByElement:v4 WithMean:?];
  v10 = v9;
  [(ADInterSessionFilter *)self samplesMeanFromIndex:v5 ToIndex:(size - 1) ByElement:v4];
  [(ADInterSessionFilter *)self samplesVarianceFromIndex:v5 ToIndex:(size - 1) ByElement:v4 WithMean:?];
  return sqrt((v11 * (size + ~v5) + v8 * v10) / (size - 2));
}

- (double)samplesVarianceFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element WithMean:(double)mean
{
  v6 = *&toIndex;
  v7 = *&index;
  v9 = 0.0;
  if (index <= toIndex)
  {
    indexCopy = index;
    do
    {
      v11 = (*(self->_nodes.__map_.__begin_ + (((self->_nodes.__start_ + indexCopy) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_nodes.__start_ + indexCopy) & 0x1FF];
      if (v11)
      {
        v12 = *v11;
        v13 = *(*(v11 + 2) + 8 * element);
        v9 = v9 + v12 * ((*v13 - mean) * (*v13 - mean));
      }

      ++indexCopy;
    }

    while (indexCopy <= toIndex);
  }

  [(ADInterSessionFilter *)self V1FromIndex:*&index ToIndex:*&toIndex, *&element, mean];
  v15 = v14;
  [(ADInterSessionFilter *)self V2FromIndex:v7 ToIndex:v6];
  v17 = v15 - v16 / v15;
  if (v17 < 1.0e-20)
  {
    v17 = 1.0e-20;
  }

  return v9 / v17;
}

- (double)V2FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex
{
  for (result = 0.0; index <= toIndex; ++index)
  {
    v5 = (*(self->_nodes.__map_.__begin_ + (((self->_nodes.__start_ + index) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_nodes.__start_ + index) & 0x1FF];
    if (v5)
    {
      result = result + *v5 * *v5;
    }
  }

  return result;
}

- (double)V1FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex
{
  for (result = 0.0; index <= toIndex; ++index)
  {
    v5 = (*(self->_nodes.__map_.__begin_ + (((self->_nodes.__start_ + index) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_nodes.__start_ + index) & 0x1FF];
    if (v5)
    {
      result = result + *v5;
    }
  }

  if (result < 1.0e-20)
  {
    return 1.0e-20;
  }

  return result;
}

- (unsigned)kIndexCandidate
{
  minStepIndex = [(ADInterSessionFilterParameters *)self->_params minStepIndex];
  size = self->_nodes.__size_;
  v5 = ~[(ADInterSessionFilterParameters *)self->_params minStepSize]+ size;
  minStepIndex2 = [(ADInterSessionFilterParameters *)self->_params minStepIndex];
  if (minStepIndex2 <= v5)
  {
    v7 = minStepIndex2;
    v8 = 1.0e20;
    do
    {
      [(ADInterSessionFilter *)self SLFromIndex:v7];
      if (v9 < v8)
      {
        minStepIndex = v7;
        v8 = v9;
      }

      v7 = (v7 + 1);
    }

    while (v7 <= v5);
  }

  return minStepIndex;
}

- (double)SLFromIndex:(unsigned int)index
{
  v3 = *&index;
  [(ADInterSessionFilter *)self LossFromIndex:0 ToIndex:index - 1];
  v6 = v5;
  [(ADInterSessionFilter *)self LossFromIndex:v3 ToIndex:(LODWORD(self->_nodes.__size_) - 1)];
  return v6 + v7;
}

- (double)LossFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex
{
  v4 = *&toIndex;
  v5 = *&index;
  v7 = 0.0;
  if ([(NSArray *)self->_elementsNames count])
  {
    v8 = 1;
    do
    {
      [(ADInterSessionFilter *)self samplesMeanFromIndex:v5 ToIndex:v4 ByElement:v8 - 1];
      [(ADInterSessionFilter *)self L2FromIndex:v5 ToIndex:v4 ByElement:v8 - 1 WithMean:?];
      v7 = v7 + v9;
    }

    while ([(NSArray *)self->_elementsNames count]> v8++);
  }

  return v7;
}

- (double)L2FromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element WithMean:(double)mean
{
  for (i = 0.0; index <= toIndex; ++index)
  {
    v7 = (*(self->_nodes.__map_.__begin_ + (((self->_nodes.__start_ + index) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_nodes.__start_ + index) & 0x1FF];
    if (v7)
    {
      v8 = *v7;
      v9 = *(*(v7 + 2) + 8 * element);
      i = i + v8 * ((*v9 - mean) * (*v9 - mean));
    }
  }

  return i;
}

- (double)samplesMeanFromIndex:(unsigned int)index ToIndex:(unsigned int)toIndex ByElement:(unsigned int)element
{
  v5 = 0.0;
  for (i = 0.0; index <= toIndex; ++index)
  {
    v7 = (*(self->_nodes.__map_.__begin_ + (((self->_nodes.__start_ + index) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_nodes.__start_ + index) & 0x1FF];
    if (v7)
    {
      i = i + *v7 * **(*(v7 + 2) + 8 * element);
      v5 = v5 + *v7;
    }
  }

  if (v5 < 1.0e-20)
  {
    v5 = 1.0e-20;
  }

  return i / v5;
}

- (id)calculateInterSessionFilterResultFromIndex:(unsigned int)index
{
  v5 = [(NSArray *)self->_elementsNames count];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
  bzero(self->_weightedAverage, 8 * v5);
  bzero(self->_sumOfWeights, 8 * v5);
  size = self->_nodes.__size_;
  if (size > index)
  {
    indexCopy = index;
    start = self->_nodes.__start_;
    begin = self->_nodes.__map_.__begin_;
    do
    {
      v11 = (*(begin + (((start + indexCopy) >> 6) & 0x3FFFFFFFFFFFFF8)))[(start + indexCopy) & 0x1FF];
      v12 = *(v11 + 2);
      if (v12 != *(v11 + 3))
      {
        v13 = 0;
        do
        {
          v14 = *v12;
          if (((*v12)[2] & 1) == 0)
          {
            weightedAverage = self->_weightedAverage;
            self->_sumOfWeights[v13] = *(v11 + 1) + self->_sumOfWeights[v13];
            weightedAverage[v13] = weightedAverage[v13] + *v14 * *(v11 + 1);
          }

          [(ADInterSessionFilter *)self resetElementFlags:?];
          ++v13;
          start = self->_nodes.__start_;
          begin = self->_nodes.__map_.__begin_;
          ++v12;
          v11 = (*(begin + (((start + indexCopy) >> 6) & 0x3FFFFFFFFFFFFF8)))[(start + indexCopy) & 0x1FF];
        }

        while (v12 != *(v11 + 3));
        size = self->_nodes.__size_;
      }

      indexCopy = ++index;
    }

    while (size > index);
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weightedAverage[i] / self->_sumOfWeights[i]];
      v18 = [(NSArray *)self->_elementsNames objectAtIndexedSubscript:i];
      [v6 setObject:v17 forKeyedSubscript:v18];
    }
  }

  return v6;
}

- (int64_t)markOutliers:(unsigned int)outliers
{
  v45 = *MEMORY[0x277D85DE8];
  outlierNumber = [(ADInterSessionFilterParameters *)self->_params outlierNumber];
  size = self->_nodes.__size_;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_elementsNames;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = vcvtpd_u64_f64(outlierNumber * (size - outliers) / size);
    v36 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = v10;
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v43 = __p;
        v12 = **(std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_sets, __p) + 56);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        v13 = v10;
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v43 = __p;
        v14 = *(std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_sets, __p) + 56);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        v15 = v10;
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v43 = __p;
        v16 = *(std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_sets, __p) + 56);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = v10;
        std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);
        v43 = __p;
        v18 = **(std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&self->_sets, __p) + 56);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }

        if (v12 != (v14 + 8) && v8)
        {
          v19 = 0;
          do
          {
            v20 = v12[4];
            if (*(v20 + 17) == 1)
            {
              *(v20 + 16) = 1;
              ++v19;
            }

            v21 = v12[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v12[2];
                v23 = *v22 == v12;
                v12 = v22;
              }

              while (!v23);
            }

            if (v22 == (v14 + 8))
            {
              break;
            }

            v12 = v22;
          }

          while (v19 < v8);
        }

        v24 = (v16 + 8);
        if ((v16 + 8) != v18 && v8)
        {
          v25 = 0;
          do
          {
            v26 = *v24;
            v27 = *v24;
            v28 = v24;
            if (*v24)
            {
              do
              {
                v29 = v27;
                v27 = v27[1];
              }

              while (v27);
            }

            else
            {
              do
              {
                v29 = v28[2];
                v23 = *v29 == v28;
                v28 = v29;
              }

              while (v23);
            }

            if (*(v29[4] + 17) == 1)
            {
              v30 = *v24;
              v31 = v24;
              if (v26)
              {
                do
                {
                  v32 = v30;
                  v30 = v30[1];
                }

                while (v30);
              }

              else
              {
                do
                {
                  v32 = v31[2];
                  v23 = *v32 == v31;
                  v31 = v32;
                }

                while (v23);
              }

              *(v32[4] + 16) = 1;
              ++v25;
            }

            if (v26)
            {
              do
              {
                v33 = v26;
                v26 = v26[1];
              }

              while (v26);
            }

            else
            {
              do
              {
                v33 = v24[2];
                v23 = *v33 == v24;
                v24 = v33;
              }

              while (v23);
            }

            if (v33 == v18)
            {
              break;
            }

            v24 = v33;
          }

          while (v25 < v8);
        }
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  return 0;
}

- (void)markInStep:(unsigned int)step
{
  size = self->_nodes.__size_;
  if (size > step)
  {
    stepCopy = step;
    start = self->_nodes.__start_;
    begin = self->_nodes.__map_.__begin_;
    do
    {
      v7 = (*(begin + (((start + stepCopy) >> 6) & 0x3FFFFFFFFFFFFF8)))[(start + stepCopy) & 0x1FF];
      v8 = *(v7 + 2);
      v9 = *(v7 + 3);
      while (v8 != v9)
      {
        v10 = *v8++;
        *(v10 + 17) = 1;
      }

      stepCopy = ++step;
    }

    while (size > step);
  }
}

- (unsigned)stepDetection
{
  kIndexCandidate = [(ADInterSessionFilter *)self kIndexCandidate];
  if ([(ADInterSessionFilter *)self TtestStepWithCandidate:kIndexCandidate])
  {
    return kIndexCandidate;
  }

  else
  {
    return 0;
  }
}

- (id)insertEntryAndCalculate:(id)calculate withWeight:(double)weight
{
  calculateCopy = calculate;
  if ([(ADInterSessionFilter *)self insertEntry:calculateCopy withWeight:weight])
  {
    calculate = 0;
  }

  else
  {
    calculate = [(ADInterSessionFilter *)self calculate];
  }

  return calculate;
}

- (void)setOnlineWeights:(unsigned int)weights
{
  size = self->_nodes.__size_;
  if (size > weights)
  {
    weightsCopy = weights;
    weightsCopy2 = weights;
    start = self->_nodes.__start_;
    begin = self->_nodes.__map_.__begin_;
    do
    {
      v9 = (*(begin + (((start + weightsCopy2) >> 6) & 0x3FFFFFFFFFFFFF8)))[(start + weightsCopy2) & 0x1FF];
      *(v9 + 1) = *v9;
      v10 = *(v9 + 2);
      v11 = *(v9 + 3);
      while (v10 != v11)
      {
        if (*(*v10 + 16) == 1)
        {
          [(ADInterSessionFilterParameters *)self->_params outlierWeight];
          start = self->_nodes.__start_;
          size = self->_nodes.__size_;
          begin = self->_nodes.__map_.__begin_;
          *((*(begin + (((start + weightsCopy2) >> 6) & 0x3FFFFFFFFFFFFF8)))[(start + weightsCopy2) & 0x1FF] + 1) = v12;
          break;
        }

        v10 += 8;
      }

      weightsCopy2 = ++weightsCopy;
    }

    while (size > weightsCopy);
  }
}

- (id)calculate
{
  size = self->_nodes.__size_;
  if (size >= [(ADInterSessionFilterParameters *)self->_params minimalEntriesForResult])
  {
    if ([(ADInterSessionFilterParameters *)self->_params isStepDetectionActive])
    {
      stepDetection = [(ADInterSessionFilter *)self stepDetection];
    }

    else
    {
      stepDetection = 0;
    }

    [(ADInterSessionFilter *)self markInStep:stepDetection];
    [(ADInterSessionFilter *)self markOutliers:stepDetection];
    [(ADInterSessionFilter *)self setOnlineWeights:stepDetection];
    v4 = [(ADInterSessionFilter *)self calculateInterSessionFilterResultFromIndex:stepDetection];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)insertEntry:(id)entry withWeight:(double)weight
{
  v22 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_elementsNames, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_elementsNames;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
LABEL_9:

    operator new();
  }

  v7 = 0;
  v8 = *v18;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v18 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v17 + 1) + 8 * v9);
    v11 = [entryCopy objectForKey:v10];
    v12 = v11 == 0;

    if (v12)
    {
      break;
    }

    v13 = [entryCopy objectForKeyedSubscript:v10];
    [v15 setObject:v13 atIndexedSubscript:v7];

    ++v7;
    if (v6 == ++v9)
    {
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  return -22950;
}

- (id)persistenceData
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [v21 setObject:v3 forKeyedSubscript:@"version"];

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_nodes.__size_];
  begin = self->_nodes.__map_.__begin_;
  end = self->_nodes.__map_.__end_;
  v23 = &begin[self->_nodes.__start_ >> 9];
  selfCopy = self;
  if (end == begin)
  {
    v6 = 0;
  }

  else
  {
    v6 = &begin[self->_nodes.__start_ >> 9][self->_nodes.__start_ & 0x1FF];
  }

  for (i = 0; ; ++i)
  {
    if (end == begin)
    {
      v8 = 0;
    }

    else
    {
      v7 = selfCopy->_nodes.__size_ + selfCopy->_nodes.__start_;
      v8 = &(*(begin + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)))[v7 & 0x1FF];
    }

    if (v6 == v8)
    {
      break;
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = *(*v6 + 2);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = selfCopy->_elementsNames;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = *v27;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * j);
          v16 = [MEMORY[0x277CCABB0] numberWithDouble:**v10];
          [v9 setObject:v16 forKeyedSubscript:v15];

          ++v10;
        }

        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v17 = objc_alloc(MEMORY[0x277CBEAC0]);
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:**v6];
    v19 = [v17 initWithObjectsAndKeys:{v18, @"weight", v9, @"elements", 0}];
    [v22 setObject:v19 atIndexedSubscript:i];

    if (++v6 - *v23 == 4096)
    {
      v6 = v23[1];
      ++v23;
    }

    begin = selfCopy->_nodes.__map_.__begin_;
    end = selfCopy->_nodes.__map_.__end_;
  }

  [v21 setObject:v22 forKeyedSubscript:@"nodes"];

  return v21;
}

- (int64_t)fillWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = -1;
  while (++v5 < [(ADInterSessionFilterParameters *)self->_params capacity])
  {
    [(ADInterSessionFilterParameters *)self->_params maximalWeight];
    v7 = [(ADInterSessionFilter *)self insertEntry:entryCopy withWeight:v6];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (int64_t)fillWithDictionaryRepresentation:(id)representation
{
  v23 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v17 = [representationCopy objectForKeyedSubscript:@"nodes"];
  v4 = [representationCopy objectForKeyedSubscript:@"version"];
  if ([v4 unsignedIntValue] != self->_version)
  {

    goto LABEL_14;
  }

  v5 = [v17 count];
  capacity = [(ADInterSessionFilterParameters *)self->_params capacity];

  if (v5 != capacity)
  {
LABEL_14:
    v14 = -22950;
    goto LABEL_15;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v17;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"elements"];
      v13 = [v11 objectForKeyedSubscript:@"weight"];
      [v13 doubleValue];
      v14 = [(ADInterSessionFilter *)self insertEntry:v12 withWeight:?];

      if (v14)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

LABEL_15:
  return v14;
}

- (void)dealloc
{
  begin_node = self->_sets.__tree_.__begin_node_;
  p_end_node = &self->_sets.__tree_.__end_node_;
  if (begin_node != &self->_sets.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[7].__left_;
      std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(*(left + 1));
      *left = left + 8;
      *(left + 2) = 0;
      *(left + 1) = 0;
      v6 = begin_node[7].__left_;
      if (v6)
      {
        std::__tree<Element *,Element::ElementCompare,std::allocator<Element *>>::destroy(v6[1]);
        MEMORY[0x245CC10E0](v6, 0x1020C4062D53EE8);
      }

      v7 = begin_node[1].__left_;
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  std::__tree<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::__map_value_compare<std::string,std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::multiset<Element *,Element::ElementCompare,std::allocator<Element *>> *>>>::destroy(self->_sets.__tree_.__end_node_.__left_);
  self->_sets.__tree_.__end_node_.__left_ = 0;
  self->_sets.__tree_.__size_ = 0;
  self->_sets.__tree_.__begin_node_ = p_end_node;
  begin = self->_nodes.__map_.__begin_;
  end = self->_nodes.__map_.__end_;
  v12 = &begin[self->_nodes.__start_ >> 9];
  if (end == begin)
  {
    v13 = 0;
  }

  else
  {
    v13 = &(*v12)[self->_nodes.__start_ & 0x1FF];
  }

  while (1)
  {
    v14 = end - begin;
    if (v14)
    {
      v15 = self->_nodes.__size_ + self->_nodes.__start_;
      v16 = &(*(begin + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)))[v15 & 0x1FF];
    }

    else
    {
      v16 = 0;
    }

    if (v13 == v16)
    {
      break;
    }

    if (*v13)
    {
      Node::~Node(*v13);
      MEMORY[0x245CC10E0]();
    }

    if (++v13 - *v12 == 4096)
    {
      v17 = v12[1];
      ++v12;
      v13 = v17;
    }

    begin = self->_nodes.__map_.__begin_;
    end = self->_nodes.__map_.__end_;
  }

  self->_nodes.__size_ = 0;
  v18 = v14 >> 3;
  if (v18 >= 3)
  {
    do
    {
      operator delete(*begin);
      v19 = self->_nodes.__map_.__end_;
      begin = self->_nodes.__map_.__begin_ + 1;
      self->_nodes.__map_.__begin_ = begin;
      v18 = v19 - begin;
    }

    while (v18 > 2);
  }

  if (v18 == 1)
  {
    v20 = 256;
  }

  else
  {
    if (v18 != 2)
    {
      goto LABEL_29;
    }

    v20 = 512;
  }

  self->_nodes.__start_ = v20;
LABEL_29:
  weightedAverage = self->_weightedAverage;
  if (weightedAverage)
  {
    MEMORY[0x245CC10C0](weightedAverage, 0x1000C8000313F17);
  }

  sumOfWeights = self->_sumOfWeights;
  if (sumOfWeights)
  {
    MEMORY[0x245CC10C0](sumOfWeights, 0x1000C8000313F17);
  }

  v23.receiver = self;
  v23.super_class = ADInterSessionFilter;
  [(ADInterSessionFilter *)&v23 dealloc];
}

- (ADInterSessionFilter)initWithFieldNames:(id)names parameters:(id)parameters
{
  v13 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = ADInterSessionFilter;
  v8 = [(ADInterSessionFilter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_version = 1;
    objc_storeStrong(&v8->_params, parameters);
    objc_storeStrong(&v9->_elementsNames, names);
    [(NSArray *)v9->_elementsNames count];
    operator new[]();
  }

  return 0;
}

@end