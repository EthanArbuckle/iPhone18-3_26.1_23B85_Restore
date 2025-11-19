@interface _MPMediaLibraryEntityRelationshipTranslator
- (MPMediaLibraryEntityTranslator)entityTranslator;
- (id).cxx_construct;
- (shared_ptr<std::unordered_map<std::string,)relationshipValidationProperties;
- (void)setRelationshipValidationProperties:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)a3 :unordered_map<std::string;
@end

@implementation _MPMediaLibraryEntityRelationshipTranslator

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

- (void)setRelationshipValidationProperties:()shared_ptr<std:(mlcore::ModelPropertyBase *>>)a3 :unordered_map<std::string
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_relationshipValidationProperties.__cntrl_;
  self->_relationshipValidationProperties.__ptr_ = v4;
  self->_relationshipValidationProperties.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<std::unordered_map<std::string,)relationshipValidationProperties
{
  cntrl = self->_relationshipValidationProperties.__cntrl_;
  *v2 = self->_relationshipValidationProperties.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (MPMediaLibraryEntityTranslator)entityTranslator
{
  v2 = [(_MPMediaLibraryEntityRelationshipTranslator *)self relationshipModelClass];

  return [MPMediaLibraryEntityTranslator translatorForMPModelClass:v2];
}

@end