@interface AggregatedDataWrapper
- (AggregatedData)aggData;
- (AggregatedDataWrapper)init;
- (id).cxx_construct;
- (void)setAggData:(AggregatedData *)a3;
- (void)setAggPoints:(AggregatedData *)a3;
@end

@implementation AggregatedDataWrapper

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setAggData:(AggregatedData *)a3
{
  p_aggData = &self->_aggData;
  if (p_aggData != a3)
  {
    std::vector<jpc::IIFABlock::IFAPearlJasperCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlJasperCorrespondence*,jpc::IIFABlock::IFAPearlJasperCorrespondence*>(p_aggData, a3->pearlJasperCorrespondences.__begin_, a3->pearlJasperCorrespondences.__end_, 0x6DB6DB6DB6DB6DB7 * ((a3->pearlJasperCorrespondences.__end_ - a3->pearlJasperCorrespondences.__begin_) >> 3));
    begin = a3->pearlCorrespondences.__begin_;
    end = a3->pearlCorrespondences.__end_;

    std::vector<jpc::IIFABlock::IFAPearlCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlCorrespondence*,jpc::IIFABlock::IFAPearlCorrespondence*>(&self->_aggData.pearlCorrespondences, begin, end, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4));
  }
}

- (AggregatedData)aggData
{
  retstr->pearlJasperCorrespondences.__begin_ = 0;
  retstr->pearlJasperCorrespondences.__end_ = 0;
  retstr->pearlJasperCorrespondences.__cap_ = 0;
  end = self->pearlJasperCorrespondences.__end_;
  cap = self->pearlJasperCorrespondences.__cap_;
  if (cap != end)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((cap - end) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  retstr->pearlCorrespondences.__begin_ = 0;
  retstr->pearlCorrespondences.__end_ = 0;
  retstr->pearlCorrespondences.__cap_ = 0;
  v7 = self->pearlCorrespondences.__end_;
  v6 = self->pearlCorrespondences.__cap_;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return self;
}

- (void)setAggPoints:(AggregatedData *)a3
{
  p_aggData = &self->_aggData;
  if (p_aggData != a3)
  {
    std::vector<jpc::IIFABlock::IFAPearlJasperCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlJasperCorrespondence*,jpc::IIFABlock::IFAPearlJasperCorrespondence*>(p_aggData, a3->pearlJasperCorrespondences.__begin_, a3->pearlJasperCorrespondences.__end_, 0x6DB6DB6DB6DB6DB7 * ((a3->pearlJasperCorrespondences.__end_ - a3->pearlJasperCorrespondences.__begin_) >> 3));
    begin = a3->pearlCorrespondences.__begin_;
    end = a3->pearlCorrespondences.__end_;

    std::vector<jpc::IIFABlock::IFAPearlCorrespondence>::__assign_with_size[abi:ne200100]<jpc::IIFABlock::IFAPearlCorrespondence*,jpc::IIFABlock::IFAPearlCorrespondence*>(&self->_aggData.pearlCorrespondences, begin, end, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4));
  }
}

- (AggregatedDataWrapper)init
{
  v3.receiver = self;
  v3.super_class = AggregatedDataWrapper;
  return [(AggregatedDataWrapper *)&v3 init];
}

@end