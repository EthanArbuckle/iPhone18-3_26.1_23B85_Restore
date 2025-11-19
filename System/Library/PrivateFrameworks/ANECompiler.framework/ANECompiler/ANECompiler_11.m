operations_research::sat::CpSolverResponse *operations_research::sat::CpSolverResponse::CopyFrom(operations_research::sat::CpSolverResponse *this, const operations_research::sat::CpSolverResponse *a2)
{
  if (a2 != this)
  {
    v4 = this;
    operations_research::sat::CpSolverResponse::Clear(this);

    return operations_research::sat::CpSolverResponse::MergeImpl(v4, a2, v5);
  }

  return this;
}

__n128 operations_research::sat::CpSolverResponse::InternalSwap(operations_research::sat::CpSolverResponse *this, operations_research::sat::CpSolverResponse *a2)
{
  v2 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v2;
  LODWORD(v2) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LOBYTE(v2) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  LOBYTE(v2) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v2;
  LOBYTE(v2) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v2;
  LOBYTE(v2) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v2;
  LOBYTE(v2) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v2;
  LOBYTE(v2) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v2;
  LOBYTE(v2) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v2;
  LOBYTE(v2) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v2;
  LOBYTE(v2) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v2;
  LOBYTE(v2) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v2;
  LOBYTE(v2) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v2;
  LOBYTE(v2) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v2;
  LOBYTE(v2) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v2;
  LOBYTE(v2) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v2;
  LOBYTE(v2) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v2;
  LOBYTE(v2) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v2;
  LOBYTE(v2) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v2;
  LOBYTE(v2) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v2;
  LOBYTE(v2) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v2;
  LOBYTE(v2) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v2;
  LOBYTE(v2) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  LOBYTE(v2) = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = v2;
  LOBYTE(v2) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v2;
  LOBYTE(v2) = *(this + 55);
  *(this + 55) = *(a2 + 55);
  *(a2 + 55) = v2;
  LOBYTE(v2) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v2;
  LOBYTE(v2) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v2;
  LOBYTE(v2) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v2;
  LOBYTE(v2) = *(this + 59);
  *(this + 59) = *(a2 + 59);
  *(a2 + 59) = v2;
  LOBYTE(v2) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v2;
  LOBYTE(v2) = *(this + 61);
  *(this + 61) = *(a2 + 61);
  *(a2 + 61) = v2;
  LOBYTE(v2) = *(this + 62);
  *(this + 62) = *(a2 + 62);
  *(a2 + 62) = v2;
  LOBYTE(v2) = *(this + 63);
  *(this + 63) = *(a2 + 63);
  *(a2 + 63) = v2;
  LOBYTE(v2) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v2;
  LOBYTE(v2) = *(this + 73);
  *(this + 73) = *(a2 + 73);
  *(a2 + 73) = v2;
  LOBYTE(v2) = *(this + 74);
  *(this + 74) = *(a2 + 74);
  *(a2 + 74) = v2;
  LOBYTE(v2) = *(this + 75);
  *(this + 75) = *(a2 + 75);
  *(a2 + 75) = v2;
  LOBYTE(v2) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v2;
  LOBYTE(v2) = *(this + 77);
  *(this + 77) = *(a2 + 77);
  *(a2 + 77) = v2;
  LOBYTE(v2) = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v2;
  LOBYTE(v2) = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v2;
  LOBYTE(v2) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v2;
  LOBYTE(v2) = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v2;
  LOBYTE(v2) = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v2;
  LOBYTE(v2) = *(this + 83);
  *(this + 83) = *(a2 + 83);
  *(a2 + 83) = v2;
  LOBYTE(v2) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v2;
  LOBYTE(v2) = *(this + 85);
  *(this + 85) = *(a2 + 85);
  *(a2 + 85) = v2;
  LOBYTE(v2) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v2;
  LOBYTE(v2) = *(this + 87);
  *(this + 87) = *(a2 + 87);
  *(a2 + 87) = v2;
  LOBYTE(v2) = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v2;
  LOBYTE(v2) = *(this + 97);
  *(this + 97) = *(a2 + 97);
  *(a2 + 97) = v2;
  LOBYTE(v2) = *(this + 98);
  *(this + 98) = *(a2 + 98);
  *(a2 + 98) = v2;
  LOBYTE(v2) = *(this + 99);
  *(this + 99) = *(a2 + 99);
  *(a2 + 99) = v2;
  LOBYTE(v2) = *(this + 100);
  *(this + 100) = *(a2 + 100);
  *(a2 + 100) = v2;
  LOBYTE(v2) = *(this + 101);
  *(this + 101) = *(a2 + 101);
  *(a2 + 101) = v2;
  LOBYTE(v2) = *(this + 102);
  *(this + 102) = *(a2 + 102);
  *(a2 + 102) = v2;
  LOBYTE(v2) = *(this + 103);
  *(this + 103) = *(a2 + 103);
  *(a2 + 103) = v2;
  LOBYTE(v2) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v2;
  LOBYTE(v2) = *(this + 105);
  *(this + 105) = *(a2 + 105);
  *(a2 + 105) = v2;
  LOBYTE(v2) = *(this + 106);
  *(this + 106) = *(a2 + 106);
  *(a2 + 106) = v2;
  LOBYTE(v2) = *(this + 107);
  *(this + 107) = *(a2 + 107);
  *(a2 + 107) = v2;
  LOBYTE(v2) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v2;
  LOBYTE(v2) = *(this + 109);
  *(this + 109) = *(a2 + 109);
  *(a2 + 109) = v2;
  LOBYTE(v2) = *(this + 110);
  *(this + 110) = *(a2 + 110);
  *(a2 + 110) = v2;
  LOBYTE(v2) = *(this + 111);
  *(this + 111) = *(a2 + 111);
  *(a2 + 111) = v2;
  v3 = *(a2 + 15);
  *(a2 + 15) = *(this + 15);
  *(this + 15) = v3;
  v4 = *(a2 + 16);
  *(a2 + 16) = *(this + 16);
  *(this + 16) = v4;
  v5 = this + 136;
  if (this + 136 >= a2 + 268 || (v6 = a2 + 136, a2 + 136 >= this + 268))
  {
    v9 = *(this + 136);
    v10 = *(this + 152);
    v11 = *(a2 + 152);
    *(this + 136) = *(a2 + 136);
    *(this + 152) = v11;
    *(a2 + 136) = v9;
    *(a2 + 152) = v10;
    v12 = *(this + 168);
    v13 = *(this + 184);
    v14 = *(a2 + 184);
    *(this + 168) = *(a2 + 168);
    *(this + 184) = v14;
    *(a2 + 168) = v12;
    *(a2 + 184) = v13;
    v15 = *(this + 200);
    v16 = *(this + 216);
    v17 = *(a2 + 216);
    *(this + 200) = *(a2 + 200);
    *(this + 216) = v17;
    *(a2 + 200) = v15;
    *(a2 + 216) = v16;
    result = *(this + 232);
    v19 = *(this + 248);
    v20 = *(a2 + 248);
    *(this + 232) = *(a2 + 232);
    *(this + 248) = v20;
    *(a2 + 232) = result;
    *(a2 + 248) = v19;
    v21 = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v21;
  }

  else
  {
    for (i = 0; i != 132; ++i)
    {
      v8 = v5[i];
      v5[i] = v6[i];
      v6[i] = v8;
    }
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::RepeatedPtrField<operations_research::sat::LinearExpressionProto>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *result)
{
  if (*result)
  {
    v1 = result;
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(result);
    return v1;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::TableConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F393D8;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 60) = 0;
  }

  else
  {
    result = operator new(0x48uLL);
    *result = off_284F393D8;
    *(result + 8) = 0;
    *(result + 64) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 53) = 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::RoutesConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F394A8;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = a1;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = a1;
    *(result + 104) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
  }

  else
  {
    result = operator new(0x80uLL);
    *result = off_284F394A8;
    *(result + 8) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::PartialVariableAssignment>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39510;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
  }

  else
  {
    result = operator new(0x40uLL);
    *result = off_284F39510;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
  }

  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlapConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39578;
    result[1] = a1;
    result[2] = 0;
    result[3] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    result[1] = 0;
    result[2] = 0;
    *result = off_284F39578;
    result[3] = 0;
  }

  result[4] = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::NoOverlap2DConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F395E0;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
  }

  else
  {
    result = operator new(0x40uLL);
    *result = off_284F395E0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
  }

  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::ListOfVariablesProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39648;
    result[1] = a1;
    result[2] = 0;
    result[3] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    result[1] = 0;
    result[2] = 0;
    *result = off_284F39648;
    result[3] = 0;
  }

  result[4] = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39718;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = a1;
    *(result + 80) = 0;
  }

  else
  {
    result = operator new(0x58uLL);
    *result = off_284F39718;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::InverseConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39780;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
  }

  else
  {
    result = operator new(0x40uLL);
    *result = off_284F39780;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::FloatObjectiveProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39850;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 68) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
  }

  else
  {
    result = operator new(0x48uLL);
    *result = off_284F39850;
    *(result + 8) = 0;
    *(result + 68) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
  }

  *(result + 64) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::ElementConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F398B8;
    v2[1] = a1;
    v2[2] = 0;
    v2[3] = a1;
    v2[4] = 0;
    v2[5] = 0;
  }

  else
  {
    v4 = operator new(0x30uLL);
    *v4 = off_284F398B8;
    v4[1] = 0;
    result = 0.0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F399F0;
    *(v2 + 8) = a1;
    result = 0.0;
    *(v2 + 16) = 0;
    *(v2 + 24) = a1;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = a1;
    *(v2 + 80) = 0;
    *(v2 + 132) = 0;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 113) = 0u;
  }

  else
  {
    v4 = operator new(0x88uLL);
    *v4 = off_284F399F0;
    *(v4 + 1) = 0;
    *(v4 + 33) = 0;
    result = 0.0;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 113) = 0u;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 8) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    *(v4 + 14) = 0;
    *(v4 + 8) = 0;
    *(v4 + 9) = 0;
    *(v4 + 20) = 0;
  }

  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::CircuitConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39A58;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = a1;
    *(result + 80) = 0;
  }

  else
  {
    result = operator new(0x58uLL);
    *result = off_284F39A58;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 64) = 0;
  }

  return result;
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39AC0;
    result[1] = a1;
    result[2] = 0;
    result[3] = a1;
  }

  else
  {
    result = operator new(0x28uLL);
    result[1] = 0;
    result[2] = 0;
    *result = off_284F39AC0;
    result[3] = 0;
  }

  result[4] = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::AutomatonConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39B28;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = a1;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = a1;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = a1;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = a1;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = a1;
    *(result + 128) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
  }

  else
  {
    result = operator new(0x98uLL);
    *result = off_284F39B28;
    *(result + 8) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 128) = 0;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::SymmetryProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39B90;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = a1;
  }

  else
  {
    v2 = operator new(0x48uLL);
    *v2 = off_284F39B90;
    *(v2 + 8) = 0;
    result = 0.0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
  }

  *(v2 + 64) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::ReservoirConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39BF8;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    *(v2 + 80) = a1;
    *(v2 + 104) = 0;
  }

  else
  {
    v4 = operator new(0x70uLL);
    *v4 = off_284F39BF8;
    *(v4 + 1) = 0;
    result = 0.0;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 44) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 92) = 0u;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39C60;
    v2[1] = a1;
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = a1;
  }

  else
  {
    v2 = operator new(0x38uLL);
    *v2 = off_284F39C60;
    v2[1] = 0;
    result = 0.0;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
  }

  v2[6] = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntervalConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *(v2 + 8) = a1;
  }

  else
  {
    v2 = operator new(0x30uLL);
    *(v2 + 8) = 0;
  }

  *v2 = off_284F39CC8;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::CumulativeConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39D98;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = a1;
    *(v2 + 72) = 0;
  }

  else
  {
    v4 = operator new(0x50uLL);
    v4[1] = 0;
    v4[2] = 0;
    *v4 = off_284F39D98;
    v4[3] = 0;
    v4[4] = 0;
    *(v4 + 10) = 0;
    result = 0.0;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
  }

  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpSolverResponse>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39E00;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = a1;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = a1;
    *(v2 + 72) = 0;
    *(v2 + 80) = a1;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = a1;
  }

  else
  {
    v2 = operator new(0x110uLL);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = off_284F39E00;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 76) = 0u;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    *(v2 + 96) = 0;
  }

  *(v2 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  *(v2 + 128) = &google::protobuf::internal::fixed_address_empty_string;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0;
  return result;
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::AllDifferentConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    result = google::protobuf::Arena::Allocate(a1);
    *result = off_284F39E68;
    *(result + 8) = a1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = a1;
  }

  else
  {
    result = operator new(0x30uLL);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = off_284F39E68;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  *(result + 40) = 0;
  return result;
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpModelProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    *v2 = off_284F39F38;
    *(v2 + 8) = a1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = a1;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = a1;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    *(v2 + 88) = a1;
    *(v2 + 96) = 0;
    *(v2 + 104) = a1;
  }

  else
  {
    v2 = operator new(0xA0uLL);
    *v2 = off_284F39F38;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
  }

  *(v2 + 112) = 0;
  *(v2 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  result = 0.0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  return result;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearExpressionProto::LinearExpressionProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x50uLL);
    return operations_research::sat::LinearExpressionProto::LinearExpressionProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::BoolArgumentProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39AC0;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39AC0;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearArgumentProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = operator new(0x38uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39C60;
    v9 = *(a2 + 8);
    if (v9)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v9 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    v10 = *(a2 + 16);
    *(v4 + 16) = v10;
    *(v4 + 20) = 0;
    *(v4 + 36) = 0;
    *(v4 + 28) = 0;
    *(v4 + 44) = 0;
    if (*(a2 + 32))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 24), (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
      v10 = *(v4 + 16);
    }

    if (v10)
    {
      v7 = *(a2 + 48);
      v8 = 0;
      goto LABEL_15;
    }

LABEL_13:
    *(v4 + 48) = 0;
    return v4;
  }

  v4 = google::protobuf::Arena::Allocate(a1);
  *(v4 + 8) = a1;
  *v4 = off_284F39C60;
  v5 = *(a2 + 8);
  if (v5)
  {
    google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v6 = *(a2 + 16);
  *(v4 + 16) = v6;
  *(v4 + 28) = 0;
  *(v4 + 20) = 0;
  *(v4 + 36) = 0;
  *(v4 + 40) = a1;
  if (*(a2 + 32))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 24), (a2 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
    v6 = *(v4 + 16);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(a2 + 48);
  v8 = a1;
LABEL_15:
  *(v4 + 48) = google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>(v8, v7);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::LinearConstraintProto::LinearConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x58uLL);
    return operations_research::sat::LinearConstraintProto::LinearConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::AllDifferentConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39E68;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = (v4 + 16);
    *(v4 + 32) = a1;
    if (*(a2 + 24))
    {
LABEL_5:
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v6, (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::LinearExpressionProto>);
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39E68;
    v8 = *(a2 + 8);
    if (v8)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6 = (v4 + 16);
    *(v4 + 32) = 0;
    if (*(a2 + 24))
    {
      goto LABEL_5;
    }
  }

  *(v4 + 40) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::ElementConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F398B8;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F398B8;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  *(v4 + 44) = 0;
  *(v4 + 36) = *(a2 + 36);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::CircuitConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::CircuitConstraintProto::CircuitConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x58uLL);
    return operations_research::sat::CircuitConstraintProto::CircuitConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::RoutesConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::RoutesConstraintProto::RoutesConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x80uLL);
    return operations_research::sat::RoutesConstraintProto::RoutesConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::TableConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::TableConstraintProto::TableConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return operations_research::sat::TableConstraintProto::TableConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::AutomatonConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::AutomatonConstraintProto::AutomatonConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x98uLL);
    return operations_research::sat::AutomatonConstraintProto::AutomatonConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::InverseConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::InverseConstraintProto::InverseConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::sat::InverseConstraintProto::InverseConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::ReservoirConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::ReservoirConstraintProto::ReservoirConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x70uLL);
    return operations_research::sat::ReservoirConstraintProto::ReservoirConstraintProto(v6, 0, a2);
  }
}

void *google::protobuf::Arena::CopyConstruct<operations_research::sat::IntervalConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::IntervalConstraintProto::IntervalConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x30uLL);
    return operations_research::sat::IntervalConstraintProto::IntervalConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlapConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39578;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39578;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::NoOverlap2DConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::NoOverlap2DConstraintProto::NoOverlap2DConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::sat::NoOverlap2DConstraintProto::NoOverlap2DConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::CumulativeConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::CumulativeConstraintProto::CumulativeConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x50uLL);
    return operations_research::sat::CumulativeConstraintProto::CumulativeConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::ListOfVariablesProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39648;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39648;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::SparsePermutationProto::SparsePermutationProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::sat::SparsePermutationProto::SparsePermutationProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::DenseMatrixProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39920;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v7 = *(v4 + 24);
        v8 = *(a2 + 24);
        if (v6 < 8)
        {
          goto LABEL_11;
        }

        if ((v7 - v8) < 0x20)
        {
          goto LABEL_11;
        }

        v9 = v6;
        v10 = v6 & 0x7FFFFFF8;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFF8);
        v11 = &v7[v10];
        v12 = &v8[v10];
        v13 = (v8 + 4);
        v14 = v7 + 4;
        v15 = v10;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
        v7 = v11;
        v8 = v12;
        if (v10 != v9)
        {
LABEL_11:
          v17 = v6 + 1;
          do
          {
            v18 = *v8++;
            *v7++ = v18;
            --v17;
          }

          while (v17 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x30uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39920;
    v19 = *(a2 + 8);
    if (v19)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v20 = *(a2 + 16);
    if (v20)
    {
      google::protobuf::RepeatedField<int>::Grow(v4 + 16, 0, *(a2 + 16));
      *(v4 + 16) = v20;
      if (v20 >= 1)
      {
        v21 = *(v4 + 24);
        v22 = *(a2 + 24);
        if (v20 < 8)
        {
          goto LABEL_23;
        }

        if ((v21 - v22) < 0x20)
        {
          goto LABEL_23;
        }

        v23 = v20;
        v24 = v20 & 0x7FFFFFF8;
        LODWORD(v20) = v20 - (v20 & 0x7FFFFFF8);
        v25 = &v21[v24];
        v26 = &v22[v24];
        v27 = (v22 + 4);
        v28 = v21 + 4;
        v29 = v24;
        do
        {
          v30 = *v27;
          *(v28 - 1) = *(v27 - 1);
          *v28 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        v21 = v25;
        v22 = v26;
        if (v24 != v23)
        {
LABEL_23:
          v31 = v20 + 1;
          do
          {
            v32 = *v22++;
            *v21++ = v32;
            --v31;
          }

          while (v31 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  *(v4 + 44) = 0;
  *(v4 + 36) = *(a2 + 36);
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::CpObjectiveProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::CpObjectiveProto::CpObjectiveProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x88uLL);
    return operations_research::sat::CpObjectiveProto::CpObjectiveProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::PartialVariableAssignment>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::PartialVariableAssignment::PartialVariableAssignment(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::sat::PartialVariableAssignment::PartialVariableAssignment(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::SymmetryProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39B90;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = a1;
    if (*(a2 + 24))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 16), (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>);
    }

    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    v6 = (v4 + 40);
    *(v4 + 56) = a1;
    if (*(a2 + 48))
    {
LABEL_13:
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v6, (a2 + 40), google::protobuf::Arena::CopyConstruct<operations_research::sat::DenseMatrixProto>);
    }
  }

  else
  {
    v4 = operator new(0x48uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39B90;
    v7 = *(a2 + 8);
    if (v7)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v7 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    if (*(a2 + 24))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v4 + 16), (a2 + 16), google::protobuf::Arena::CopyConstruct<operations_research::sat::SparsePermutationProto>);
    }

    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    v6 = (v4 + 40);
    *(v4 + 56) = 0;
    if (*(a2 + 48))
    {
      goto LABEL_13;
    }
  }

  *(v4 + 64) = 0;
  return v4;
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::FloatObjectiveProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::FloatObjectiveProto::FloatObjectiveProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x48uLL);
    return operations_research::sat::FloatObjectiveProto::FloatObjectiveProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::IntegerVariableProto::IntegerVariableProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x38uLL);
    return operations_research::sat::IntegerVariableProto::IntegerVariableProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::ConstraintProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::ConstraintProto::ConstraintProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x40uLL);
    return operations_research::sat::ConstraintProto::ConstraintProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::DecisionStrategyProto>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    return operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(v4, a1, a2);
  }

  else
  {
    v6 = operator new(0x50uLL);
    return operations_research::sat::DecisionStrategyProto::DecisionStrategyProto(v6, 0, a2);
  }
}

uint64_t google::protobuf::Arena::CopyConstruct<operations_research::sat::CpSolverSolution>(google::protobuf::Arena *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = google::protobuf::Arena::Allocate(a1);
    *(v4 + 8) = a1;
    *v4 = off_284F39988;
    v5 = *(a2 + 8);
    if (v5)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 20) = 0;
    *(v4 + 24) = a1;
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *(a2 + 16);
      google::protobuf::RepeatedField<long long>::Grow(v4 + 16, 0);
      *(v4 + 16) = v6;
      if (v6 >= 1)
      {
        v8 = *(v4 + 24);
        v9 = *(a2 + 24);
        if (v6 < 4)
        {
          goto LABEL_11;
        }

        if ((v8 - v9) < 0x20)
        {
          goto LABEL_11;
        }

        v10 = v6;
        v11 = v6 & 0x7FFFFFFC;
        LODWORD(v6) = v6 - (v6 & 0x7FFFFFFC);
        v12 = &v8[v11];
        v13 = &v9[v11];
        v14 = (v9 + 2);
        v15 = v8 + 2;
        v16 = v11;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        v8 = v12;
        v9 = v13;
        if (v11 != v10)
        {
LABEL_11:
          v18 = v6 + 1;
          do
          {
            v19 = *v9++;
            *v8++ = v19;
            --v18;
          }

          while (v18 > 1);
        }
      }
    }
  }

  else
  {
    v4 = operator new(0x28uLL);
    *(v4 + 8) = 0;
    *v4 = off_284F39988;
    v20 = *(a2 + 8);
    if (v20)
    {
      google::protobuf::internal::InternalMetadata::DoMergeFrom<google::protobuf::UnknownFieldSet>((v4 + 8), ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
    }

    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v21 = *(a2 + 16);
    if (v21)
    {
      v22 = *(a2 + 16);
      google::protobuf::RepeatedField<long long>::Grow(v4 + 16, 0);
      *(v4 + 16) = v21;
      if (v21 >= 1)
      {
        v23 = *(v4 + 24);
        v24 = *(a2 + 24);
        if (v21 < 4)
        {
          goto LABEL_23;
        }

        if ((v23 - v24) < 0x20)
        {
          goto LABEL_23;
        }

        v25 = v21;
        v26 = v21 & 0x7FFFFFFC;
        LODWORD(v21) = v21 - (v21 & 0x7FFFFFFC);
        v27 = &v23[v26];
        v28 = &v24[v26];
        v29 = (v24 + 2);
        v30 = v23 + 2;
        v31 = v26;
        do
        {
          v32 = *v29;
          *(v30 - 1) = *(v29 - 1);
          *v30 = v32;
          v29 += 2;
          v30 += 2;
          v31 -= 4;
        }

        while (v31);
        v23 = v27;
        v24 = v28;
        if (v26 != v25)
        {
LABEL_23:
          v33 = v21 + 1;
          do
          {
            v34 = *v24++;
            *v23++ = v34;
            --v33;
          }

          while (v33 > 1);
        }
      }
    }
  }

  *(v4 + 32) = 0;
  return v4;
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v7 = begin;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v8 = value >> 1;
      if (value >> 1 <= __n)
      {
        v8 = __n;
      }

      v9 = value >= 0x7FFFFFFFFFFFFFFCLL;
      v10 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  v13 = end - begin;
  if (v13 >= __n)
  {
    v14 = __n;
  }

  else
  {
    v14 = end - begin;
  }

  if (v14)
  {
    v15 = *__u;
    v16 = v14;
    if (v14 < 8)
    {
      goto LABEL_33;
    }

    v7 = &begin[v14 & 0xFFFFFFFFFFFFFFF8];
    v16 = v14 & 7;
    v17 = vdupq_n_s32(v15);
    v18 = (begin + 4);
    v19 = v14 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_33:
      do
      {
        *v7++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = __n >= v13;
  v20 = __n - v13;
  if (v20 != 0 && v9)
  {
    if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = &end[v20];
      v22 = *__u;
      v23 = 4 * __n - v12 - 4;
      if (v23 < 0x1C)
      {
        goto LABEL_34;
      }

      v24 = (v23 >> 2) + 1;
      v25 = &end[v24 & 0x7FFFFFFFFFFFFFF8];
      v26 = vdupq_n_s32(v22);
      v27 = (end + 4);
      v28 = v24 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v27[-1] = v26;
        *v27 = v26;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      end = v25;
      if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_34:
        do
        {
          *end++ = v22;
        }

        while (end != v21);
      }

      this->__end_ = v21;
    }

    else
    {
      this->__end_ = end;
    }
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void std::vector<operations_research::DynamicPartition::Part>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *operations_research::DynamicPartition::DynamicPartition(uint64_t *a1, uint64_t a2)
{
  *(a1 + 3) = 0u;
  v4 = a1 + 6;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v5 == v6)
  {
    return a1;
  }

  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(a1 + 6, v5, v6, (v6 - v5) >> 2);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = v9 + 1;
    if (v9 + 1 != v10)
    {
      v13 = *v9;
      v14 = (v9 + 1);
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = v13 < v16;
        if (v13 <= v16)
        {
          v13 = v15;
        }

        if (v17)
        {
          v9 = v12;
        }

        v12 = v14;
      }

      while (v14 != v10);
    }
  }

  v18 = *v9;
  v19 = (*v9 + 1);
  v20 = a1[9];
  v21 = 0xAAAAAAAAAAAAAAABLL * ((a1[10] - v20) >> 3);
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      a1[10] = v20 + 24 * v19;
    }
  }

  else
  {
    std::vector<operations_research::DynamicPartition::Part>::__append((a1 + 9), v19 - v21, v7, v8);
  }

  v22 = (v11 >> 2) & 0x7FFFFFFF;
  if ((v11 >> 2) <= 0)
  {
    v25 = a1[9];
    if (v18 > 0x7FFFFFFE)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
    do
    {
      v49 = v23;
      v24 = operations_research::fasthash64(&v49, 4uLL, 0xA5B85C5E198ED849);
      v25 = a1[9];
      v26 = &v25[6 * *(*v4 + 4 * v23)];
      *(v26 + 2) ^= v24;
      ++v23;
    }

    while (v22 != v23);
    if (v18 > 0x7FFFFFFE)
    {
      goto LABEL_27;
    }
  }

  if (v19 > 1)
  {
    v28 = 0;
    v27 = v19 & 0x7FFFFFFE;
    v29 = v25 + 8;
    do
    {
      *(v29 - 7) = 0;
      *(v29 - 6) = v28;
      *(v29 - 1) = 0;
      *v29 = v28 + 1;
      v28 += 2;
      v29 += 12;
    }

    while (v27 != v28);
    if (v27 == v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = &v25[6 * v27 + 2];
  do
  {
    *(v30 - 1) = 0;
    *v30 = v27++;
    v30 += 6;
  }

  while (v19 != v27);
LABEL_27:
  v31 = a1[6];
  for (i = a1[7]; v31 != i; ++v25[6 * v33 + 1])
  {
    v33 = *v31++;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v34 = 0;
    v35 = v25 + 1;
    do
    {
      *(v35 - 1) = v34;
      v36 = *v35;
      v35 += 6;
      v34 += v36;
      --v19;
    }

    while (v19);
  }

  for (j = a1[10]; v25 != j; v25 += 6)
  {
    v25[1] = *v25;
  }

  v38 = (v11 >> 2);
  __u = -1;
  std::vector<int>::assign(a1, v38, &__u);
  v47 = -1;
  std::vector<int>::assign(a1 + 1, v38, &v47);
  if ((v11 >> 2) >= 1)
  {
    v39 = 0;
    v40 = a1[6];
    v41 = a1[9];
    v42 = *a1;
    v43 = a1[3];
    do
    {
      v44 = v41 + 24 * *(v40 + 4 * v39);
      *(v42 + 4 * *(v44 + 4)) = v39;
      v45 = *(v44 + 4);
      *(v43 + 4 * v39) = v45;
      *(v44 + 4) = v45 + 1;
      ++v39;
    }

    while (v22 != v39);
  }

  return a1;
}

void sub_23C9A2E58(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
    v5 = *(v1 + 96);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 72);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(v1 + 96);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 104) = v5;
  operator delete(v5);
  v6 = *(v1 + 72);
  if (!v6)
  {
LABEL_4:
    v7 = *v2;
    if (!*v2)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v1 + 80) = v6;
  operator delete(v6);
  v7 = *v2;
  if (!*v2)
  {
LABEL_5:
    v8 = *(v1 + 24);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v1 + 56) = v7;
  operator delete(v7);
  v8 = *(v1 + 24);
  if (!v8)
  {
LABEL_6:
    v9 = *v1;
    if (!*v1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 32) = v8;
  operator delete(v8);
  v9 = *v1;
  if (!*v1)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v1 + 8) = v9;
  operator delete(v9);
  _Unwind_Resume(exception_object);
}

void operations_research::DynamicPartition::Refine(std::vector<int> *a1, int *a2, uint64_t a3)
{
  v6 = &a1[3];
  v7 = (-1431655765 * ((a1[3].__end_ - a1[3].__begin_) >> 3));
  LODWORD(__x) = 0;
  begin = a1[4].__begin_;
  end = a1[4].__end_;
  v8 = a1 + 4;
  v11 = end - begin;
  v46 = v8;
  if (v7 <= v11)
  {
    if (v7 < v11)
    {
      a1[4].__end_ = &begin[v7];
    }
  }

  else
  {
    std::vector<int>::__append(v8, v7 - v11, &__x);
  }

  a1[5].__end_ = a1[5].__begin_;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    std::__sort<std::__less<int,int> &,int *>();
    v25 = a1[5].__begin_;
    v24 = a1[5].__end_;
    v26 = v46;
    if (v25 == v24)
    {
      return;
    }

    goto LABEL_13;
  }

  v12 = v6;
  v13 = 4 * a3;
  do
  {
    v18 = *a2;
    LODWORD(__x) = a1[2].__begin_[v18];
    v19 = a1[4].__begin_;
    v20 = v19[__x];
    v21 = v20 + 1;
    v19[__x] = v20 + 1;
    if (!v20)
    {
      std::vector<int>::push_back[abi:ne200100](&a1[5], &__x);
    }

    v14 = a1[1].__begin_;
    v15 = v14[v18];
    v16 = a1[3].__begin_[6 * __x + 1] - v21;
    v14[v18] = v16;
    v17 = a1->__begin_;
    v14[a1->__begin_[v16]] = v15;
    LODWORD(v14) = v17[v15];
    v17[v15] = v17[v16];
    v17[v16] = v14;
    ++a2;
    v13 -= 4;
  }

  while (v13);
  v22 = a1[5].__begin_;
  v23 = a1[5].__end_;
  v6 = v12;
  std::__sort<std::__less<int,int> &,int *>();
  v25 = a1[5].__begin_;
  v24 = a1[5].__end_;
  v26 = v46;
  if (v25 != v24)
  {
LABEL_13:
    v27 = a1[3].__begin_;
    v47 = v24;
    do
    {
      v28 = *v25;
      v29 = &v27[6 * *v25];
      v30 = *v29;
      v31 = v29[1];
      v32 = v31 - v26->__begin_[*v25];
      v26->__begin_[*v25] = 0;
      if (v32 != v30)
      {
        if (v32 >= v31)
        {
          v34 = 0;
        }

        else
        {
          v33 = v6;
          v34 = 0;
          v35 = v32;
          do
          {
            LODWORD(__x) = a1->__begin_[v35];
            v34 ^= operations_research::fasthash64(&__x, 4uLL, 0xA5B85C5E198ED849);
            ++v35;
          }

          while (v31 != v35);
          v6 = v33;
          v27 = *v33;
          v26 = v46;
        }

        v36 = (a1[3].__end_ - v27) >> 3;
        v37 = &v27[6 * v28];
        v37[1] = v32;
        *(v37 + 2) ^= v34;
        v38 = -1431655765 * v36;
        *&__x = __PAIR64__(v31, v32);
        DWORD2(__x) = v28;
        v49 = v34;
        std::vector<operations_research::DynamicPartition::Part>::push_back[abi:ne200100](v6, &__x);
        v27 = a1[3].__begin_;
        v39 = &v27[6 * v38];
        v40 = 4 * *v39;
        v41 = 4 * v39[1];
        if (v40 != v41)
        {
          v42 = &a1->__begin_[v41 / 4];
          v43 = &a1->__begin_[v40 / 4];
          v44 = a1[2].__begin_;
          do
          {
            v45 = *v43++;
            v44[v45] = v38;
          }

          while (v43 != v42);
        }

        v24 = v47;
      }

      ++v25;
    }

    while (v25 != v24);
  }
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t *operations_research::DynamicPartition::UndoRefineUntilNumPartsEqual(uint64_t *this, int a2)
{
  v3 = this[9];
  v2 = this[10];
  LODWORD(v4) = -1431655765 * ((v2 - v3) >> 3);
  if (v4 > a2)
  {
    v5 = *this;
    do
    {
      v7 = (v3 + 24 * (v4 - 1));
      v8 = v7[2];
      v9 = v7[1];
      v10 = 4 * *v7;
      if (v10 != 4 * v9)
      {
        v11 = (4 * v9 + v5);
        v12 = (v10 + v5);
        v13 = this[6];
        do
        {
          v14 = *v12++;
          *(v13 + 4 * v14) = v8;
        }

        while (v12 != v11);
        LODWORD(v9) = v7[1];
      }

      v6 = v3 + 24 * v8;
      *(v6 + 4) = v9;
      *(v6 + 16) ^= *(v7 + 2);
      v2 -= 24;
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
    }

    while (v4 > a2);
    this[10] = v2;
  }

  return this;
}

void operations_research::DynamicPartition::DebugString(operations_research::DynamicPartition *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v4 = *(this + 9);
  if ((-1431655765 * ((*(this + 10) - v4) >> 3)) < 1)
  {
    v16 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = (v4 + 24 * v6);
      v8 = v7[1];
      v9 = 4 * *v7;
      v10 = 4 * v8;
      v11 = 4 * v8 + *this;
      __p.__r_.__value_.__r.__words[0] = v9 + *this;
      v30 = v11;
      v12 = v32;
      if (v32 >= v33)
      {
        v13 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v31, &__p, &v30);
      }

      else
      {
        *v32 = 0;
        *(v12 + 1) = 0;
        *(v12 + 2) = 0;
        if (v10 != v9)
        {
          if (((v10 - v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 + 24;
      }

      v32 = v13;
      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      std::__sort<std::__less<int,int> &,int *>();
      ++v6;
      v4 = *(this + 9);
    }

    while (v6 < (-1431655765 * ((*(this + 10) - v4) >> 3)));
    v16 = v31;
    if ((a2 & 1) == 0)
    {
LABEL_11:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v17 = v32;
      if (v16 == v32)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  v18 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v32[-v16] >> 3));
  if (v32 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,false>(v16, v32, &__p, v19, 1);
  v16 = v31;
  v17 = v32;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v16 == v17)
  {
LABEL_12:
    if (!v16)
    {
      return;
    }

    goto LABEL_34;
  }

  do
  {
LABEL_21:
    v20 = *(a3 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a3 + 8);
    }

    if (v20)
    {
      std::string::append(a3, " | ");
    }

    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*v16, *(v16 + 8), " ", 1uLL, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 += 24;
  }

  while (v16 != v17);
  v16 = v31;
  if (v31)
  {
LABEL_34:
    v23 = v32;
    v24 = v16;
    if (v32 != v16)
    {
      v25 = v32;
      do
      {
        v27 = *(v25 - 3);
        v25 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v23 - 2) = v26;
          operator delete(v26);
        }

        v23 = v25;
      }

      while (v25 != v16);
      v24 = v31;
    }

    v32 = v16;
    operator delete(v24);
  }
}

void sub_23C9A36A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C9A36BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  a15 = v15;
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_23C9A36E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C9A36FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17)
{
  if ((*(v17 + 23) & 0x80000000) == 0)
  {
    std::vector<std::vector<int>>::~vector[abi:ne200100](&a17);
    _Unwind_Resume(a1);
  }

  operator delete(*v17);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void sub_23C9A3768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<int>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::MergingPartition::Reset(std::vector<int> *this, int a2)
{
  v4 = a2;
  __u = 1;
  std::vector<int>::assign(this + 1, a2, &__u);
  v13 = -1;
  std::vector<int>::assign(this, v4, &v13);
  if (a2 >= 1)
  {
    begin = this->__begin_;
    if (a2 <= 7)
    {
      v6 = 0;
      do
      {
LABEL_7:
        begin->i32[v6] = v6;
        ++v6;
      }

      while (a2 != v6);
      goto LABEL_8;
    }

    v6 = a2 & 0x7FFFFFF8;
    v7 = xmmword_23CE38660;
    v8 = begin + 1;
    v9.i64[0] = 0x400000004;
    v9.i64[1] = 0x400000004;
    v10.i64[0] = 0x800000008;
    v10.i64[1] = 0x800000008;
    v11 = v6;
    do
    {
      v8[-1] = v7;
      *v8 = vaddq_s32(v7, v9);
      v7 = vaddq_s32(v7, v10);
      v8 += 2;
      v11 -= 8;
    }

    while (v11);
    if (v6 != a2)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v12 = 0;
  std::vector<BOOL>::assign(&this[2], v4, &v12);
}

void std::vector<BOOL>::assign(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  if (!a2)
  {
    return;
  }

  v5 = *(a1 + 16);
  v6 = v5 << 6;
  if (v5 << 6 >= a2)
  {
    *(a1 + 8) = a2;
    v14 = *a1;
    v16 = a2 >> 6;
    if (*a3 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v5 << 7;
    if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v6 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v18, v9);
    v11 = v18;
    v12 = *(&v19 + 1);
    v18 = *a1;
    v10 = v18;
    v13 = *(a1 + 8);
    *a1 = v11;
    *(a1 + 8) = a2;
    *(a1 + 16) = v12;
    v19 = v13;
    if (v10)
    {
      operator delete(v10);
    }

    v14 = *a1;
    v15 = *a3;
    v16 = a2 >> 6;
    if (v15 != 1)
    {
LABEL_12:
      if (a2 >= 0x40)
      {
        bzero(v14, 8 * v16);
      }

      if ((a2 & 0x3F) != 0)
      {
        v17 = *(v14 + v16) & ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
LABEL_21:
        *(v14 + v16) = v17;
        return;
      }

      return;
    }
  }

  if (a2 >= 0x40)
  {
    memset(v14, 255, 8 * v16);
  }

  if ((a2 & 0x3F) != 0)
  {
    v17 = *(v14 + v16) | (0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
    goto LABEL_21;
  }
}

void sub_23C9A3A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::MergingPartition::MergePartsOf(operations_research::MergingPartition *this, uint64_t a2, uint64_t a3)
{
  v4 = *this;
  v5 = a2;
  do
  {
    result = v5;
    v5 = *(v4 + 4 * v5);
  }

  while (v5 != result);
  v7 = a3;
  do
  {
    v8 = v7;
    v7 = *(v4 + 4 * v7);
  }

  while (v7 != v8);
  if (result == v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = *(this + 3);
  v11 = *(v10 + 4 * result);
  v12 = *(v10 + 4 * v8);
  if (v11 < v12 || result > v8 && v11 == v12)
  {
    v13 = v8;
  }

  else
  {
    v9 = result;
    v13 = result;
    result = v8;
  }

  *(v10 + 4 * v9) = v12 + v11;
  do
  {
    v14 = *(v4 + 4 * a2);
    *(v4 + 4 * a2) = v13;
    v15 = v14 == a2;
    LODWORD(a2) = v14;
  }

  while (!v15);
  do
  {
    v16 = *(v4 + 4 * a3);
    *(v4 + 4 * a3) = v13;
    v15 = v16 == a3;
    LODWORD(a3) = v16;
  }

  while (!v15);
  return result;
}

uint64_t operations_research::MergingPartition::GetRootAndCompressPath(operations_research::MergingPartition *this, uint64_t a2)
{
  v2 = *this;
  v3 = a2;
  do
  {
    result = v3;
    v3 = *(v2 + 4 * v3);
  }

  while (v3 != result);
  do
  {
    v5 = *(v2 + 4 * a2);
    *(v2 + 4 * a2) = result;
    v6 = v5 == a2;
    LODWORD(a2) = v5;
  }

  while (!v6);
  return result;
}

void *operations_research::MergingPartition::KeepOnlyOneNodePerPart(void *result, std::vector<int> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (this->__begin_ == end)
  {
    v18 = 0;
    v19 = end - begin;
  }

  else
  {
    v4 = 0;
    v5 = *result;
    v6 = result[6];
    v7 = this->__begin_;
    do
    {
      v8 = *v7;
      v9 = *v7;
      do
      {
        v10 = v9;
        v9 = *(v5 + 4 * v9);
      }

      while (v9 != v10);
      v11 = v10;
      v12 = *v7;
      do
      {
        v13 = *(v5 + 4 * v12);
        *(v5 + 4 * v12) = v10;
        v14 = v13 == v12;
        v12 = v13;
      }

      while (!v14);
      v15 = v10 >> 6;
      v16 = 1 << v11;
      v17 = *(v6 + 8 * v15);
      if ((v17 & v16) == 0)
      {
        *(v6 + 8 * v15) = v17 | v16;
        begin[v4++] = v8;
      }

      ++v7;
    }

    while (v7 != end);
    v18 = v4;
    v19 = end - begin;
    v20 = v4 >= v19;
    v21 = v4 - v19;
    if (v21 != 0 && v20)
    {
      v22 = result;
      std::vector<int>::__append(this, v21);
      result = v22;
      begin = this->__begin_;
      end = this->__end_;
      goto LABEL_17;
    }
  }

  if (v19 > v18)
  {
    end = &begin[v18];
    this->__end_ = end;
  }

LABEL_17:
  if (begin != end)
  {
    v24 = *result;
    v25 = result[6];
    do
    {
      v26 = *begin;
      do
      {
        v27 = v26;
        v26 = *(v24 + 4 * v26);
      }

      while (v26 != v27);
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v27);
      ++begin;
    }

    while (begin != end);
  }

  return result;
}

uint64_t operations_research::MergingPartition::FillEquivalenceClasses(uint64_t *a1, std::vector<int> *this)
{
  v4 = ((a1[1] - *a1) >> 2);
  __u = -1;
  std::vector<int>::assign(this, v4, &__u);
  v5 = *a1;
  v6 = a1[1] - *a1;
  if ((v6 >> 2) < 1)
  {
    return 0;
  }

  v7 = 0;
  result = 0;
  begin = this->__begin_;
  v10 = (v6 >> 2) & 0x7FFFFFFF;
  do
  {
    v11 = v7;
    do
    {
      v12 = v11;
      v11 = *(v5 + 4 * v11);
    }

    while (v11 != v12);
    v13 = v7;
    do
    {
      v14 = *(v5 + 4 * v13);
      *(v5 + 4 * v13) = v12;
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
    v16 = begin[v12];
    if (v16 < 0)
    {
      begin[v12] = result;
      v16 = result;
      result = (result + 1);
    }

    begin[v7++] = v16;
  }

  while (v7 != v10);
  return result;
}

void operations_research::SimpleDynamicPartition::Refine(std::vector<int> *a1, int *a2, uint64_t a3)
{
  v6 = &a1[2];
  a1[2].__end_ = a1[2].__begin_;
  v7 = a1 + 1;
  begin = a1[3].__begin_;
  end = a1[3].__end_;
  v10 = a1 + 3;
  v11 = a1[1].__end_ - a1[1].__begin_;
  __x = 0;
  v12 = end - begin;
  if (v11 >> 2 <= v12)
  {
    if (v11 >> 2 < v12)
    {
      a1[3].__end_ = (begin + v11);
    }
  }

  else
  {
    std::vector<int>::__append(a1 + 3, (v11 >> 2) - v12, &__x);
  }

  v13 = 4 * a3;
  v14 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  if (v14)
  {
    v15 = v10->__begin_;
    v16 = v13;
    v17 = a2;
    do
    {
      v35 = a1->__begin_[*v17];
      v18 = v35;
      v19 = v15[v35];
      if (!v19)
      {
        std::vector<int>::push_back[abi:ne200100](v6, &v35);
        v18 = v35;
        v15 = v10->__begin_;
        v19 = v10->__begin_[v35];
      }

      v15[v18] = v19 + 1;
      ++v17;
      v16 -= 4;
    }

    while (v16);
  }

  v20 = a1[2].__begin_;
  v21 = a1[2].__end_;
  if (v20 != v21)
  {
    v22 = v10->__begin_;
    do
    {
      while (1)
      {
        v23 = *v20;
        v24 = v7->__begin_;
        v25 = v7->__begin_[v23] - v22[v23];
        if (v25)
        {
          break;
        }

        v22[v23] = 0;
        if (++v20 == v21)
        {
          goto LABEL_15;
        }
      }

      v26 = (a1[1].__end_ - v24) >> 2;
      v24[v23] = v25;
      std::vector<int>::push_back[abi:ne200100](v7, &v22[v23]);
      v22 = a1[3].__begin_;
      v22[v23] = v26;
      ++v20;
    }

    while (v20 != v21);
  }

LABEL_15:
  if (v14)
  {
    v27 = a1->__begin_;
    v28 = a1[3].__begin_;
    do
    {
      v29 = *a2;
      v30 = v28[v27[v29]];
      if (v30)
      {
        v27[v29] = v30;
      }

      ++a2;
      v13 -= 4;
    }

    while (v13);
  }

  v31 = a1[2].__begin_;
  v32 = a1[2].__end_;
  if (v31 != v32)
  {
    v33 = v10->__begin_;
    do
    {
      v34 = *v31++;
      v33[v34] = 0;
    }

    while (v31 != v32);
  }
}

void std::vector<operations_research::DynamicPartition::Part>::__append(uint64_t a1, unint64_t a2, double a3, __n128 a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (24 * a2)
    {
      v16 = v5 + 24 * a2;
      if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      a4.n128_u64[0] = 0;
      v17 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v18 = v5 + 24 * (v17 & 0x3FFFFFFFFFFFFFFELL);
      v19 = v5 + 24;
      v20 = v17 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 24) = 0;
        *(v19 - 16) = 0;
        *(v19 + 8) = 0;
        *(v19 - 8) = a4;
        *(v19 + 16) = 0;
        v19 += 48;
        v20 -= 2;
      }

      while (v20);
      v5 = v18;
      if (v17 != (v17 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v5 = 0;
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          v5 += 24;
        }

        while (v5 != v16);
      }

      v5 = v16;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = 24 * v7;
    if (24 * a2)
    {
      v11 = v21 + 24 * a2;
      v12 = 24 * v7;
      if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      a4.n128_u64[0] = 0;
      v13 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v12 = v21 + 24 * (v13 & 0x3FFFFFFFFFFFFFFELL);
      v14 = 24 * v7 + 24;
      v15 = v13 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        *(v14 - 24) = 0;
        *(v14 - 16) = 0;
        *(v14 + 8) = 0;
        *(v14 - 8) = a4;
        *(v14 + 16) = 0;
        v14 += 48;
        v15 -= 2;
      }

      while (v15);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v12 = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          v12 += 24;
        }

        while (v12 != v11);
      }
    }

    else
    {
      v11 = 24 * v7;
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v21 - v23;
    memcpy((v21 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void std::vector<int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if ((__n & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = &end[__n];
      v19 = *__x;
      v20 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v20 < 7)
      {
        goto LABEL_36;
      }

      v21 = v20 + 1;
      v22 = &end[v21 & 0x7FFFFFFFFFFFFFF8];
      v23 = vdupq_n_s32(v19);
      v24 = (end + 4);
      v25 = v21 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v24[-1] = v23;
        *v24 = v23;
        v24 += 2;
        v25 -= 8;
      }

      while (v25);
      end = v22;
      if (v21 != (v21 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_36:
        do
        {
          *end++ = v19;
        }

        while (end != v18);
      }

      end = v18;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = v6 + __n;
    if ((v6 + __n) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = 4 * v6;
    if ((__n & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = (v26 + 4 * __n);
      v11 = *__x;
      v12 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v13 = (4 * v6);
      if (v12 < 7)
      {
        goto LABEL_37;
      }

      v14 = v12 + 1;
      v13 = (v26 + 4 * (v14 & 0x7FFFFFFFFFFFFFF8));
      v15 = vdupq_n_s32(v11);
      v16 = (v26 + 16);
      v17 = v14 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_37:
        do
        {
          *v13++ = v11;
        }

        while (v13 != v10);
      }
    }

    else
    {
      v10 = (4 * v6);
    }

    begin = this->__begin_;
    v28 = this->__end_ - this->__begin_;
    v29 = (v26 - v28);
    memcpy((v26 - v28), this->__begin_, v28);
    this->__begin_ = v29;
    this->__end_ = v10;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::vector<std::vector<int>>::__emplace_back_slow_path<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v6 + 3;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v6 - v11;
  memcpy(v12, *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_23C9A4544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,false>(uint64_t result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v10;
        v11 = a2 - v10;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3uLL:

              return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v10, v10 + 3, a2 - 3);
            case 4uLL:

              return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v10, v10 + 3, v10 + 6, a2 - 3);
            case 5uLL:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v30 = *(a2 - 3);
            v31 = *(a2 - 2);
            v32 = *v10;
            v33 = *(v10 + 1);
            if ((v33 - *v10) >> 2 >= (v31 - v30) >> 2)
            {
              v34 = (v31 - v30) >> 2;
            }

            else
            {
              v34 = (v33 - *v10) >> 2;
            }

            v35 = *v10;
            v36 = *(a2 - 3);
            if ((v34 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v37 = 4 * v34;
              v35 = *v10;
              v36 = *(a2 - 3);
              v38 = (v30 + 4 * v34);
              while (*v36 == *v35)
              {
                ++v36;
                ++v35;
                v37 -= 4;
                if (!v37)
                {
                  v36 = v38;
                  break;
                }
              }
            }

            if (v35 != v33 && (v36 == v31 || *v36 < *v35))
            {
              *v10 = v30;
              *(a2 - 3) = v32;
              v39 = *(v10 + 1);
              *(v10 + 1) = *(a2 - 2);
              *(a2 - 2) = v39;
              v40 = *(v10 + 2);
              *(v10 + 2) = *(a2 - 1);
              *(a2 - 1) = v40;
            }

            return result;
          }
        }

        if (v11 <= 575)
        {
          if (a5)
          {

            return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(v10, a2);
          }

          else
          {

            return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(v10, a2);
          }
        }

        if (!a4)
        {
          if (v10 != a2)
          {
            v41 = (v12 - 2) >> 1;
            v42 = v41 + 1;
            v43 = &v10[24 * v41];
            do
            {
              std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(v10, a3, 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3), v43);
              v43 -= 24;
              --v42;
            }

            while (v42);
            v44 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
            do
            {
              result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<int> *>(v10, a2, a3, v44);
              a2 -= 24;
            }

            while (v44-- > 2);
          }

          return result;
        }

        v13 = v12 >> 1;
        v14 = &v9[24 * (v12 >> 1)];
        if (v11 < 0xC01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v14, v9, a2 - 3);
          --a4;
          if (a5)
          {
            break;
          }
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v9, v14, a2 - 3);
          v15 = 24 * v13;
          v16 = &v9[24 * v13 - 24];
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v9 + 3, v16, a2 - 6);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v9 + 6, &v9[v15 + 24], a2 - 9);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(v16, v14, &v9[v15 + 24]);
          v17 = *v9;
          *v9 = *v14;
          *v14 = v17;
          v18 = *(v9 + 1);
          *(v9 + 1) = *(v14 + 1);
          *(v14 + 1) = v18;
          v19 = *(v9 + 2);
          *(v9 + 2) = *(v14 + 2);
          *(v14 + 2) = v19;
          --a4;
          if (a5)
          {
            break;
          }
        }

        v20 = *(v9 - 3);
        v21 = *(v9 - 2);
        v22 = *v9;
        v23 = *(v9 + 1);
        v24 = v21 - v20;
        if ((v23 - *v9) >> 2 < v24)
        {
          v24 = (v23 - *v9) >> 2;
        }

        if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = 4 * v24;
          v26 = &v20[v24];
          while (*v20 == *v22)
          {
            ++v20;
            ++v22;
            v25 -= 4;
            if (!v25)
            {
              v20 = v26;
              break;
            }
          }
        }

        if (v22 != v23 && (v20 == v21 || *v20 < *v22))
        {
          break;
        }

        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> *,std::__less<void,void> &>(v9, a2);
        v10 = result;
        a5 = 0;
      }

      v27 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> *,std::__less<void,void> &>(v9, a2);
      if ((v28 & 1) == 0)
      {
        goto LABEL_29;
      }

      v29 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(v9, v27);
      v10 = v27 + 24;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(v27 + 3, a2);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_29:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,false>(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v27 + 24;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 - *a2) >> 2;
  if ((v6 - *a1) >> 2 >= v7)
  {
    v8 = (v4 - *a2) >> 2;
  }

  else
  {
    v8 = (v6 - *a1) >> 2;
  }

  v9 = *a1;
  v10 = *a2;
  if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 4 * v8;
    v9 = *a1;
    v10 = *a2;
    v12 = &v3[v8];
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 4;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 != v6 && (v10 == v4 || *v10 < *v9))
  {
    v13 = *a3;
    v14 = a3[1];
    if (v7 >= (v14 - *a3) >> 2)
    {
      v15 = (v14 - *a3) >> 2;
    }

    else
    {
      v15 = (v4 - *a2) >> 2;
    }

    v16 = *a2;
    v17 = *a3;
    if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = 4 * v15;
      v16 = *a2;
      v17 = *a3;
      v19 = &v13[v15];
      while (*v17 == *v16)
      {
        ++v17;
        ++v16;
        v18 -= 4;
        if (!v18)
        {
          v17 = v19;
          break;
        }
      }
    }

    if (v16 == v4 || v17 != v14 && *v17 >= *v16)
    {
      *a1 = v3;
      *a2 = v5;
      v43 = a1[1];
      a1[1] = a2[1];
      a2[1] = v43;
      v21 = a2 + 2;
      v44 = a1[2];
      a1[2] = a2[2];
      a2[2] = v44;
      v45 = *a3;
      v46 = a3[1];
      v47 = *a2;
      v48 = a2[1];
      if ((v48 - *a2) >> 2 >= (v46 - *a3) >> 2)
      {
        v49 = (v46 - *a3) >> 2;
      }

      else
      {
        v49 = (v48 - *a2) >> 2;
      }

      v50 = *a2;
      v51 = *a3;
      if ((v49 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v52 = 4 * v49;
        v50 = *a2;
        v51 = *a3;
        v53 = &v45[v49];
        while (*v51 == *v50)
        {
          ++v51;
          ++v50;
          v52 -= 4;
          if (!v52)
          {
            v51 = v53;
            break;
          }
        }
      }

      if (v50 == v48 || v51 != v46 && *v51 >= *v50)
      {
        return 1;
      }

      *a2 = v45;
      *a3 = v47;
      v54 = a2[1];
      a2[1] = a3[1];
      a3[1] = v54;
    }

    else
    {
      *a1 = v13;
      *a3 = v5;
      v20 = a1[1];
      a1[1] = a3[1];
      a3[1] = v20;
      v21 = a1 + 2;
    }

    v31 = a3 + 2;
    goto LABEL_61;
  }

  v22 = *a3;
  v23 = a3[1];
  if (v7 >= (v23 - *a3) >> 2)
  {
    v24 = (v23 - *a3) >> 2;
  }

  else
  {
    v24 = (v4 - *a2) >> 2;
  }

  v25 = *a2;
  v26 = *a3;
  if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = 4 * v24;
    v25 = *a2;
    v26 = *a3;
    v28 = &v22[v24];
    while (*v26 == *v25)
    {
      ++v26;
      ++v25;
      v27 -= 4;
      if (!v27)
      {
        v26 = v28;
        break;
      }
    }
  }

  if (v25 == v4 || v26 != v23 && *v26 >= *v25)
  {
    return 0;
  }

  *a2 = v22;
  *a3 = v3;
  v29 = a2[1];
  a2[1] = a3[1];
  a3[1] = v29;
  v31 = a2 + 2;
  v30 = a2[2];
  a2[2] = a3[2];
  a3[2] = v30;
  v32 = *a2;
  v33 = a2[1];
  v34 = *a1;
  v35 = a1[1];
  if ((v35 - *a1) >> 2 >= (v33 - *a2) >> 2)
  {
    v36 = (v33 - *a2) >> 2;
  }

  else
  {
    v36 = (v35 - *a1) >> 2;
  }

  v37 = *a1;
  v38 = *a2;
  if ((v36 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v39 = 4 * v36;
    v37 = *a1;
    v38 = *a2;
    v40 = &v32[v36];
    while (*v38 == *v37)
    {
      ++v38;
      ++v37;
      v39 -= 4;
      if (!v39)
      {
        v38 = v40;
        break;
      }
    }
  }

  if (v37 != v35 && (v38 == v33 || *v38 < *v37))
  {
    *a1 = v32;
    *a2 = v34;
    v41 = a1[1];
    a1[1] = a2[1];
    a2[1] = v41;
    v21 = a1 + 2;
LABEL_61:
    v55 = *v21;
    *v21 = *v31;
    *v31 = v55;
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(void *a1, void *a2, void *a3, void *a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a2, a3);
  v9 = *a4;
  v10 = a4[1];
  v11 = *a3;
  v12 = a3[1];
  if ((v12 - *a3) >> 2 >= (v10 - *a4) >> 2)
  {
    v13 = (v10 - *a4) >> 2;
  }

  else
  {
    v13 = (v12 - *a3) >> 2;
  }

  v14 = *a3;
  v15 = *a4;
  if ((v13 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 4 * v13;
    v14 = *a3;
    v15 = *a4;
    v17 = &v9[v13];
    while (*v15 == *v14)
    {
      ++v15;
      ++v14;
      v16 -= 4;
      if (!v16)
      {
        v15 = v17;
        break;
      }
    }
  }

  if (v14 != v12 && (v15 == v10 || *v15 < *v14))
  {
    *a3 = v9;
    *a4 = v11;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = a3[2];
    a3[2] = a4[2];
    a4[2] = v19;
    v20 = *a3;
    v21 = a3[1];
    v22 = *a2;
    v23 = a2[1];
    if ((v23 - *a2) >> 2 >= (v21 - *a3) >> 2)
    {
      v24 = (v21 - *a3) >> 2;
    }

    else
    {
      v24 = (v23 - *a2) >> 2;
    }

    v25 = *a2;
    v26 = *a3;
    if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = 4 * v24;
      v25 = *a2;
      v26 = *a3;
      v28 = &v20[v24];
      while (*v26 == *v25)
      {
        ++v26;
        ++v25;
        v27 -= 4;
        if (!v27)
        {
          v26 = v28;
          break;
        }
      }
    }

    if (v25 != v23 && (v26 == v21 || *v26 < *v25))
    {
      *a2 = v20;
      *a3 = v22;
      v29 = a2[1];
      a2[1] = a3[1];
      a3[1] = v29;
      v30 = a2[2];
      a2[2] = a3[2];
      a3[2] = v30;
      v31 = *a2;
      v32 = a2[1];
      v33 = *a1;
      v34 = a1[1];
      if ((v34 - *a1) >> 2 >= (v32 - *a2) >> 2)
      {
        v35 = (v32 - *a2) >> 2;
      }

      else
      {
        v35 = (v34 - *a1) >> 2;
      }

      v36 = *a1;
      v37 = *a2;
      if ((v35 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = 4 * v35;
        v36 = *a1;
        v37 = *a2;
        v39 = &v31[v35];
        while (*v37 == *v36)
        {
          ++v37;
          ++v36;
          v38 -= 4;
          if (!v38)
          {
            v37 = v39;
            break;
          }
        }
      }

      if (v36 != v34 && (v37 == v32 || *v37 < *v36))
      {
        *a1 = v31;
        *a2 = v33;
        v40 = a1[1];
        a1[1] = a2[1];
        a2[1] = v40;
        v41 = a1[2];
        a1[2] = a2[2];
        a2[2] = v41;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a2, a3, a4);
  v11 = *a5;
  v12 = a5[1];
  v13 = *a4;
  v14 = a4[1];
  if ((v14 - *a4) >> 2 >= (v12 - *a5) >> 2)
  {
    v15 = (v12 - *a5) >> 2;
  }

  else
  {
    v15 = (v14 - *a4) >> 2;
  }

  v16 = *a4;
  v17 = *a5;
  if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 4 * v15;
    v16 = *a4;
    v17 = *a5;
    v19 = &v11[v15];
    while (*v17 == *v16)
    {
      ++v17;
      ++v16;
      v18 -= 4;
      if (!v18)
      {
        v17 = v19;
        break;
      }
    }
  }

  if (v16 != v14 && (v17 == v12 || *v17 < *v16))
  {
    *a4 = v11;
    *a5 = v13;
    v20 = a4[1];
    a4[1] = a5[1];
    a5[1] = v20;
    v21 = a4[2];
    a4[2] = a5[2];
    a5[2] = v21;
    v22 = *a4;
    v23 = a4[1];
    v24 = *a3;
    v25 = a3[1];
    if ((v25 - *a3) >> 2 >= (v23 - *a4) >> 2)
    {
      v26 = (v23 - *a4) >> 2;
    }

    else
    {
      v26 = (v25 - *a3) >> 2;
    }

    v27 = *a3;
    v28 = *a4;
    if ((v26 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = 4 * v26;
      v27 = *a3;
      v28 = *a4;
      v30 = &v22[v26];
      while (*v28 == *v27)
      {
        ++v28;
        ++v27;
        v29 -= 4;
        if (!v29)
        {
          v28 = v30;
          break;
        }
      }
    }

    if (v27 != v25 && (v28 == v23 || *v28 < *v27))
    {
      *a3 = v22;
      *a4 = v24;
      v31 = a3[1];
      a3[1] = a4[1];
      a4[1] = v31;
      v32 = a3[2];
      a3[2] = a4[2];
      a4[2] = v32;
      v33 = *a3;
      v34 = a3[1];
      v35 = *a2;
      v36 = a2[1];
      if ((v36 - *a2) >> 2 >= (v34 - *a3) >> 2)
      {
        v37 = (v34 - *a3) >> 2;
      }

      else
      {
        v37 = (v36 - *a2) >> 2;
      }

      v38 = *a2;
      v39 = *a3;
      if ((v37 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 4 * v37;
        v38 = *a2;
        v39 = *a3;
        v41 = &v33[v37];
        while (*v39 == *v38)
        {
          ++v39;
          ++v38;
          v40 -= 4;
          if (!v40)
          {
            v39 = v41;
            break;
          }
        }
      }

      if (v38 != v36 && (v39 == v34 || *v39 < *v38))
      {
        *a2 = v33;
        *a3 = v35;
        v42 = a2[1];
        a2[1] = a3[1];
        a3[1] = v42;
        v43 = a2[2];
        a2[2] = a3[2];
        a3[2] = v43;
        v44 = *a2;
        v45 = a2[1];
        v46 = *a1;
        v47 = a1[1];
        if ((v47 - *a1) >> 2 >= (v45 - *a2) >> 2)
        {
          v48 = (v45 - *a2) >> 2;
        }

        else
        {
          v48 = (v47 - *a1) >> 2;
        }

        v49 = *a1;
        v50 = *a2;
        if ((v48 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v51 = 4 * v48;
          v49 = *a1;
          v50 = *a2;
          v52 = &v44[v48];
          while (*v50 == *v49)
          {
            ++v50;
            ++v49;
            v51 -= 4;
            if (!v51)
            {
              v50 = v52;
              break;
            }
          }
        }

        if (v49 != v47 && (v50 == v45 || *v50 < *v49))
        {
          *a1 = v44;
          *a2 = v46;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
          v54 = a1[2];
          a1[2] = a2[2];
          a2[2] = v54;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = result;
      do
      {
        v5 = v3;
        v3 = v2;
        v6 = v5[3];
        v7 = v5[4];
        v9 = *v5;
        v8 = v5[1];
        v10 = v7 - v6;
        if ((v8 - *v5) >> 2 >= v10)
        {
          v11 = v7 - v6;
        }

        else
        {
          v11 = (v8 - *v5) >> 2;
        }

        v12 = *v5;
        v13 = v5[3];
        if ((v11 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v14 = 4 * v11;
          v12 = *v5;
          v13 = v5[3];
          v15 = &v6[v11];
          while (*v13 == *v12)
          {
            ++v13;
            ++v12;
            v14 -= 4;
            if (!v14)
            {
              v13 = v15;
              break;
            }
          }
        }

        if (v12 != v8 && (v13 == v7 || *v13 < *v12))
        {
          v16 = v5[5];
          *v3 = 0;
          v3[1] = 0;
          v3[2] = 0;
          v5[3] = v9;
          *(v3 + 1) = *(v5 + 1);
          *v5 = 0;
          v5[1] = 0;
          v5[2] = 0;
          v4 = result;
          if (v5 != result)
          {
            do
            {
              v18 = *(v5 - 3);
              v19 = *(v5 - 2);
              v17 = v5 - 3;
              if ((v19 - v18) >> 2 >= v10)
              {
                v20 = v7 - v6;
              }

              else
              {
                v20 = (v19 - v18) >> 2;
              }

              v21 = *(v5 - 3);
              v22 = v6;
              if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
              {
                v23 = 4 * v20;
                v21 = *(v5 - 3);
                v22 = v6;
                v24 = &v6[v20];
                while (*v22 == *v21)
                {
                  ++v22;
                  ++v21;
                  v23 -= 4;
                  if (!v23)
                  {
                    v22 = v24;
                    break;
                  }
                }
              }

              if (v21 == v19 || v22 != v7 && *v22 >= *v21)
              {
                v4 = v5;
                goto LABEL_5;
              }

              *v5 = v18;
              *(v5 + 1) = *(v5 - 1);
              *v17 = 0;
              *(v5 - 2) = 0;
              *(v5 - 1) = 0;
              v5 -= 3;
            }

            while (v17 != result);
            v4 = result;
          }

LABEL_5:
          *v4 = v6;
          v4[1] = v7;
          v4[2] = v16;
        }

        v2 = v3 + 3;
      }

      while (v3 + 3 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(void *result, void *a2)
{
  if (result != a2)
  {
    while (result + 3 != a2)
    {
      v2 = result;
      result += 3;
      v3 = v2[3];
      v4 = v2[4];
      v5 = *v2;
      v6 = v2[1];
      v7 = v4 - v3;
      if ((v6 - *v2) >> 2 >= v7)
      {
        v8 = v4 - v3;
      }

      else
      {
        v8 = (v6 - *v2) >> 2;
      }

      v9 = *v2;
      v10 = v2[3];
      if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = 4 * v8;
        v9 = *v2;
        v10 = v2[3];
        v12 = &v3[v8];
        while (*v10 == *v9)
        {
          ++v10;
          ++v9;
          v11 -= 4;
          if (!v11)
          {
            v10 = v12;
            break;
          }
        }
      }

      if (v9 != v6 && (v10 == v4 || *v10 < *v9))
      {
        v13 = v2[5];
        *result = 0;
        result[1] = 0;
        v14 = result;
        result[2] = 0;
        do
        {
          v15 = v14;
          v14 = v2;
          *v15 = v5;
          *(v15 + 1) = *(v2 + 1);
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 0;
          v16 = *(v2 - 3);
          v2 -= 3;
          v5 = v16;
          v17 = *(v14 - 2);
          v18 = v17 - v16;
          if (v18 >= v7)
          {
            v19 = v4 - v3;
          }

          else
          {
            v19 = v18;
          }

          v20 = v5;
          v21 = v3;
          if ((v19 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v22 = 4 * v19;
            v20 = v5;
            v21 = v3;
            v23 = &v3[v19];
            while (*v21 == *v20)
            {
              ++v21;
              ++v20;
              v22 -= 4;
              if (!v22)
              {
                v21 = v23;
                break;
              }
            }
          }
        }

        while (v20 != v17 && (v21 == v4 || *v21 < *v20));
        *v14 = v3;
        v14[1] = v4;
        v14[2] = v13;
      }
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> *,std::__less<void,void> &>(void *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = *(a2 - 3);
  v6 = *(a2 - 2);
  v7 = (*(&v3 + 1) - v3) >> 2;
  if (v6 - v5 >= v7)
  {
    v8 = (*(&v3 + 1) - v3) >> 2;
  }

  else
  {
    v8 = v6 - v5;
  }

  v9 = *(a2 - 3);
  v10 = v3;
  if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 4 * v8;
    v9 = *(a2 - 3);
    v10 = v3;
    v12 = (v3 + 4 * v8);
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 4;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 != v6 && (v10 == *(&v3 + 1) || *v10 < *v9))
  {
    v13 = a1;
    while (1)
    {
      while (1)
      {
        v14 = v13[3];
        v15 = v13[4];
        v13 += 3;
        v16 = v15 - v14 >= v7 ? (*(&v3 + 1) - v3) >> 2 : v15 - v14;
        if ((v16 & 0x3FFFFFFFFFFFFFFFLL) == 0)
        {
          break;
        }

        v17 = 4 * v16;
        v18 = v3;
        v19 = (v3 + 4 * v16);
        while (*v18 == *v14)
        {
          ++v18;
          ++v14;
          v17 -= 4;
          if (!v17)
          {
            v18 = v19;
            break;
          }
        }

        if (v14 != v15)
        {
          goto LABEL_24;
        }
      }

      v18 = v3;
      if (v14 != v15)
      {
LABEL_24:
        if (v18 == *(&v3 + 1) || *v18 < *v14)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v13 = a1 + 3;
  if (a1 + 3 >= a2)
  {
LABEL_43:
    if (v13 >= a2)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v20 = a1;
  while (1)
  {
    v21 = v20[3];
    v22 = v20[4];
    v20 = v13;
    v23 = v22 - v21 >= v7 ? (*(&v3 + 1) - v3) >> 2 : v22 - v21;
    if ((v23 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = 4 * v23;
      v25 = v3;
      v26 = (v3 + 4 * v23);
      while (*v25 == *v21)
      {
        ++v25;
        ++v21;
        v24 -= 4;
        if (!v24)
        {
          v25 = v26;
          break;
        }
      }

      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = v3;
      if (v21 == v22)
      {
        goto LABEL_29;
      }
    }

    if (v25 == *(&v3 + 1))
    {
      break;
    }

    if (*v25 < *v21)
    {
      goto LABEL_43;
    }

LABEL_29:
    v13 += 3;
    if (v20 + 3 >= a2)
    {
      goto LABEL_43;
    }
  }

  if (v13 < a2)
  {
    while (1)
    {
LABEL_49:
      v27 = v6 - v5 >= v7 ? (*(&v3 + 1) - v3) >> 2 : v6 - v5;
      if ((v27 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v28 = 4 * v27;
        v29 = v3;
        v30 = (v3 + 4 * v27);
        while (*v29 == *v5)
        {
          ++v29;
          ++v5;
          v28 -= 4;
          if (!v28)
          {
            v29 = v30;
            break;
          }
        }
      }

      else
      {
        v29 = v3;
      }

      v31 = a2 - 3;
      if (v5 == v6 || v29 != *(&v3 + 1) && *v29 >= *v5)
      {
        break;
      }

      v5 = *(a2 - 6);
      v6 = *(a2 - 5);
      a2 -= 3;
    }

    a2 -= 3;
    if (v13 < v31)
    {
      goto LABEL_62;
    }

    goto LABEL_88;
  }

LABEL_44:
  if (v13 >= a2)
  {
    goto LABEL_88;
  }

LABEL_62:
  v32 = *v13;
  v33 = *a2;
  do
  {
    *v13 = v33;
    *a2 = v32;
    v34 = v13[1];
    v13[1] = a2[1];
    a2[1] = v34;
    v35 = v13[2];
    v13[2] = a2[2];
    a2[2] = v35;
    do
    {
      v32 = v13[3];
      v36 = v13[4];
      v13 += 3;
      if (v36 - v32 >= v7)
      {
        v37 = (*(&v3 + 1) - v3) >> 2;
      }

      else
      {
        v37 = v36 - v32;
      }

      v38 = v32;
      v39 = v3;
      if ((v37 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 4 * v37;
        v38 = v32;
        v39 = v3;
        v41 = (v3 + 4 * v37);
        while (*v39 == *v38)
        {
          ++v39;
          ++v38;
          v40 -= 4;
          if (!v40)
          {
            v39 = v41;
            break;
          }
        }
      }
    }

    while (v38 == v36 || v39 != *(&v3 + 1) && *v39 >= *v38);
    do
    {
      v33 = *(a2 - 3);
      v42 = *(a2 - 2);
      a2 -= 3;
      if (v42 - v33 >= v7)
      {
        v43 = (*(&v3 + 1) - v3) >> 2;
      }

      else
      {
        v43 = v42 - v33;
      }

      v44 = v33;
      v45 = v3;
      if ((v43 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v46 = 4 * v43;
        v44 = v33;
        v45 = v3;
        v47 = (v3 + 4 * v43);
        while (*v45 == *v44)
        {
          ++v45;
          ++v44;
          v46 -= 4;
          if (!v46)
          {
            v45 = v47;
            break;
          }
        }
      }
    }

    while (v44 != v42 && (v45 == *(&v3 + 1) || *v45 < *v44));
  }

  while (v13 < a2);
LABEL_88:
  v48 = (v13 - 3);
  if (v13 - 3 == a1)
  {
    v50 = *v48;
    if (*v48)
    {
      *(v13 - 2) = v50;
      v53 = v3;
      operator delete(v50);
      v3 = v53;
    }
  }

  else
  {
    v49 = *a1;
    if (*a1)
    {
      a1[1] = v49;
      v52 = v3;
      operator delete(v49);
      v3 = v52;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v13 - 3);
    a1[2] = *(v13 - 1);
  }

  *(v13 - 3) = v3;
  *(v13 - 1) = v4;
  return v13;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<int> *,std::__less<void,void> &>(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = (*(&v4 + 1) - v4) >> 2;
  v7 = a1;
  do
  {
    v8 = v7;
    v9 = v7[3];
    v10 = v7[4];
    v7 += 3;
    if (v6 >= v10 - v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = (*(&v4 + 1) - v4) >> 2;
    }

    v12 = v4;
    v13 = v9;
    if ((v11 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 4 * v11;
      v12 = v4;
      v13 = v9;
      v15 = &v9[v11];
      while (*v13 == *v12)
      {
        ++v13;
        ++v12;
        v14 -= 4;
        if (!v14)
        {
          v13 = v15;
          break;
        }
      }
    }
  }

  while (v12 != *(&v4 + 1) && (v13 == v10 || *v13 < *v12));
  if (v8 != a1)
  {
    while (1)
    {
      while (1)
      {
        v16 = *(a2 - 3);
        v17 = *(a2 - 2);
        a2 -= 3;
        v18 = v6 >= v17 - v16 ? v17 - v16 : (*(&v4 + 1) - v4) >> 2;
        if ((v18 & 0x3FFFFFFFFFFFFFFFLL) == 0)
        {
          break;
        }

        v19 = 4 * v18;
        v20 = v4;
        v21 = &v16[v18];
        while (*v16 == *v20)
        {
          ++v16;
          ++v20;
          v19 -= 4;
          if (!v19)
          {
            v16 = v21;
            break;
          }
        }

        if (v20 != *(&v4 + 1))
        {
          goto LABEL_25;
        }
      }

      v20 = v4;
      if (v4 != *(&v4 + 1))
      {
LABEL_25:
        if (v16 == v17 || *v16 < *v20)
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_46:
  if (v7 < a2)
  {
    while (1)
    {
      v22 = *(a2 - 3);
      v23 = *(a2 - 2);
      a2 -= 3;
      if (v6 >= v23 - v22)
      {
        v24 = v23 - v22;
      }

      else
      {
        v24 = (*(&v4 + 1) - v4) >> 2;
      }

      if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = 4 * v24;
        v26 = v4;
        v27 = &v22[v24];
        while (*v22 == *v26)
        {
          ++v22;
          ++v26;
          v25 -= 4;
          if (!v25)
          {
            v22 = v27;
            break;
          }
        }

        if (v26 == *(&v4 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v26 = v4;
        if (v4 == *(&v4 + 1))
        {
          goto LABEL_46;
        }
      }

      if (v22 != v23 && *v22 >= *v26 && v7 < a2)
      {
        continue;
      }

      break;
    }
  }

LABEL_47:
  if (v7 >= a2)
  {
    v30 = v7;
  }

  else
  {
    v29 = *a2;
    v30 = v7;
    v31 = a2;
    do
    {
      *v30 = v29;
      *v31 = v9;
      v32 = v30[1];
      v30[1] = v31[1];
      v31[1] = v32;
      v33 = v30[2];
      v30[2] = v31[2];
      v31[2] = v33;
      do
      {
        v9 = v30[3];
        v34 = v30[4];
        v30 += 3;
        if (v6 >= v34 - v9)
        {
          v35 = v34 - v9;
        }

        else
        {
          v35 = (*(&v4 + 1) - v4) >> 2;
        }

        v36 = v4;
        v37 = v9;
        if ((v35 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = 4 * v35;
          v36 = v4;
          v37 = v9;
          v39 = &v9[v35];
          while (*v37 == *v36)
          {
            ++v37;
            ++v36;
            v38 -= 4;
            if (!v38)
            {
              v37 = v39;
              break;
            }
          }
        }
      }

      while (v36 != *(&v4 + 1) && (v37 == v34 || *v37 < *v36));
      do
      {
        v29 = *(v31 - 3);
        v40 = *(v31 - 2);
        v31 -= 3;
        if (v6 >= v40 - v29)
        {
          v41 = v40 - v29;
        }

        else
        {
          v41 = (*(&v4 + 1) - v4) >> 2;
        }

        v42 = v4;
        v43 = v29;
        if ((v41 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v44 = 4 * v41;
          v42 = v4;
          v43 = v29;
          v45 = &v29[v41];
          while (*v43 == *v42)
          {
            ++v43;
            ++v42;
            v44 -= 4;
            if (!v44)
            {
              v43 = v45;
              break;
            }
          }
        }
      }

      while (v42 == *(&v4 + 1) || v43 != v40 && *v43 >= *v42);
    }

    while (v30 < v31);
  }

  v46 = *a1;
  if (v30 - 3 == a1)
  {
    if (v46)
    {
      *(v30 - 2) = v46;
      v49 = v4;
      operator delete(v46);
      v4 = v49;
    }
  }

  else
  {
    if (v46)
    {
      a1[1] = v46;
      v48 = v4;
      operator delete(v46);
      v4 = v48;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = *(v30 - 3);
    a1[2] = *(v30 - 1);
  }

  *(v30 - 3) = v4;
  *(v30 - 1) = v5;
  return v30 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }

    goto LABEL_22;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_22:
    v15 = a1 + 6;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *,0>(a1, a1 + 3, a1 + 6);
    v18 = a1 + 9;
    if (a1 + 9 == a2)
    {
      return 1;
    }

    v19 = 0;
    while (1)
    {
      v21 = *v18;
      v22 = v18[1];
      v24 = *v15;
      v23 = v15[1];
      v25 = (v22 - *v18) >> 2;
      if ((v23 - *v15) >> 2 >= v25)
      {
        v26 = (v22 - *v18) >> 2;
      }

      else
      {
        v26 = (v23 - *v15) >> 2;
      }

      v27 = *v15;
      v28 = *v18;
      if ((v26 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v29 = 4 * v26;
        v27 = *v15;
        v28 = *v18;
        v30 = &v21[v26];
        while (*v28 == *v27)
        {
          ++v28;
          ++v27;
          v29 -= 4;
          if (!v29)
          {
            v28 = v30;
            break;
          }
        }
      }

      if (v27 != v23 && (v28 == v22 || *v28 < *v27))
      {
        v31 = v18[2];
        v18[1] = 0;
        v18[2] = 0;
        *v18 = v24;
        *(v18 + 1) = *(v15 + 1);
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v20 = a1;
        if (v15 != a1)
        {
          do
          {
            v33 = *(v15 - 3);
            v34 = *(v15 - 2);
            v32 = v15 - 3;
            if ((v34 - v33) >> 2 >= v25)
            {
              v35 = v25;
            }

            else
            {
              v35 = (v34 - v33) >> 2;
            }

            v36 = *(v15 - 3);
            v37 = v21;
            if ((v35 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v38 = 4 * v35;
              v36 = *(v15 - 3);
              v37 = v21;
              v39 = &v21[v35];
              while (*v37 == *v36)
              {
                ++v37;
                ++v36;
                v38 -= 4;
                if (!v38)
                {
                  v37 = v39;
                  break;
                }
              }
            }

            if (v36 == v34 || v37 != v22 && *v37 >= *v36)
            {
              v20 = v15;
              goto LABEL_25;
            }

            *v15 = v33;
            *(v15 + 1) = *(v15 - 1);
            *v32 = 0;
            *(v15 - 2) = 0;
            *(v15 - 1) = 0;
            v15 -= 3;
          }

          while (v32 != a1);
          v20 = a1;
        }

LABEL_25:
        *v20 = v21;
        v20[1] = v22;
        v20[2] = v31;
        if (++v19 == 8)
        {
          return v18 + 3 == a2;
        }
      }

      v15 = v18;
      v18 += 3;
      if (v18 == a2)
      {
        return 1;
      }
    }
  }

  v4 = *(a2 - 3);
  v5 = *(a2 - 2);
  v6 = *a1;
  v7 = a1[1];
  if ((v7 - *a1) >> 2 >= (v5 - v4) >> 2)
  {
    v8 = (v5 - v4) >> 2;
  }

  else
  {
    v8 = (v7 - *a1) >> 2;
  }

  v9 = *a1;
  v10 = *(a2 - 3);
  if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 4 * v8;
    v9 = *a1;
    v10 = *(a2 - 3);
    v12 = (v4 + 4 * v8);
    while (*v10 == *v9)
    {
      ++v10;
      ++v9;
      v11 -= 4;
      if (!v11)
      {
        v10 = v12;
        break;
      }
    }
  }

  if (v9 == v7 || v10 != v5 && *v10 >= *v9)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 3) = v6;
  v13 = a1[1];
  a1[1] = *(a2 - 2);
  *(a2 - 2) = v13;
  v14 = a1[2];
  a1[2] = *(a2 - 1);
  *(a2 - 1) = v14;
  return 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = result + 24 * v5;
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
  {
    v7 = *(v6 + 24);
    v8 = *v6;
    v9 = *(v6 + 8);
    v10 = *(v6 + 32);
    v11 = (v9 - *v6) >> 2;
    if (v10 - v7 < v11)
    {
      v11 = v10 - v7;
    }

    if ((v11 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 4 * v11;
      v13 = &v8[v11];
      while (*v8 == *v7)
      {
        ++v8;
        ++v7;
        v12 -= 4;
        if (!v12)
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v7 != v10 && (v8 == v9 || *v8 < *v7))
    {
      v6 += 24;
      v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
    }
  }

  v14 = *v6;
  v15 = *(v6 + 8);
  v16 = *a4;
  v17 = a4[1];
  v18 = (v17 - *a4) >> 2;
  if (v18 >= (v15 - *v6) >> 2)
  {
    v19 = (v15 - *v6) >> 2;
  }

  else
  {
    v19 = (v17 - *a4) >> 2;
  }

  if ((v19 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 4 * v19;
    v21 = *a4;
    v22 = &v14[v19];
    while (*v14 == *v21)
    {
      ++v14;
      ++v21;
      v20 -= 4;
      if (!v20)
      {
        v14 = v22;
        break;
      }
    }

    if (v21 == v17)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v21 = *a4;
  if (v16 != v17)
  {
LABEL_26:
    if (v14 == v15 || *v14 < *v21)
    {
      return result;
    }
  }

LABEL_28:
  v23 = a4[2];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v24 = *(v6 + 16);
  *a4 = *v6;
  a4[2] = v24;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (v4 < v5)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v26 = v6;
    v27 = 2 * v5;
    v5 = (2 * v5) | 1;
    v6 = result + 24 * v5;
    v28 = v27 + 2;
    if (v28 < a3)
    {
      v29 = *(v6 + 24);
      v30 = *v6;
      v31 = *(v6 + 8);
      v32 = *(v6 + 32);
      v33 = (v31 - *v6) >> 2;
      if (v32 - v29 < v33)
      {
        v33 = v32 - v29;
      }

      if ((v33 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v34 = 4 * v33;
        v35 = &v30[v33];
        while (*v30 == *v29)
        {
          ++v30;
          ++v29;
          v34 -= 4;
          if (!v34)
          {
            v30 = v35;
            break;
          }
        }
      }

      if (v29 != v32 && (v30 == v31 || *v30 < *v29))
      {
        v6 += 24;
        v5 = v28;
      }
    }

    v37 = *v6;
    v36 = *(v6 + 8);
    v38 = v18 >= (v36 - *v6) >> 2 ? (v36 - *v6) >> 2 : v18;
    if ((v38 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      break;
    }

    v40 = v16;
    if (v16 != v17)
    {
      goto LABEL_54;
    }

LABEL_30:
    v25 = *(v6 + 16);
    *v26 = *v6;
    *(v26 + 16) = v25;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    if (v4 < v5)
    {
      goto LABEL_57;
    }
  }

  v39 = 4 * v38;
  v40 = v16;
  v41 = &v37[v38];
  while (*v37 == *v40)
  {
    ++v37;
    ++v40;
    v39 -= 4;
    if (!v39)
    {
      v37 = v41;
      break;
    }
  }

  if (v40 == v17)
  {
    goto LABEL_30;
  }

LABEL_54:
  if (v37 != v36 && *v37 >= *v40)
  {
    goto LABEL_30;
  }

  v6 = v26;
LABEL_57:
  *v6 = v16;
  *(v6 + 8) = v17;
  *(v6 + 16) = v23;
  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::vector<int> *>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = 0;
    v6 = *result;
    v7 = result[1];
    v8 = result[2];
    result[1] = 0;
    result[2] = 0;
    v9 = result;
    *result = 0;
    do
    {
      v11 = v9;
      v12 = &v9[3 * v5];
      v9 = v12 + 3;
      v13 = 2 * v5;
      v5 = (2 * v5) | 1;
      v14 = v13 + 2;
      if (v14 < a4)
      {
        v17 = v12[6];
        v16 = v12 + 6;
        v15 = v17;
        v18 = *(v16 - 3);
        v19 = *(v16 - 2);
        v20 = v16[1];
        v21 = v19 - v18;
        v22 = v20 - v17;
        if (v22 < v21)
        {
          v21 = v22;
        }

        if ((v21 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = 4 * v21;
          v24 = &v18[v21];
          while (*v18 == *v15)
          {
            ++v18;
            ++v15;
            v23 -= 4;
            if (!v23)
            {
              v18 = v24;
              break;
            }
          }
        }

        if (v15 != v20 && (v18 == v19 || *v18 < *v15))
        {
          v9 = v16;
          v5 = v14;
        }
      }

      v10 = v9[2];
      *v11 = *v9;
      v11[2] = v10;
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
    }

    while (v5 <= ((a4 - 2) >> 1));
    if (v9 == (a2 - 24))
    {
      *v9 = v6;
      v9[1] = v7;
      v9[2] = v8;
    }

    else
    {
      v25 = *(a2 - 8);
      *v9 = *(a2 - 24);
      v9[2] = v25;
      *(a2 - 24) = v6;
      *(a2 - 16) = v7;
      *(a2 - 8) = v8;

      return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(result, (v9 + 3), a3, 0xAAAAAAAAAAAAAAABLL * (v9 + 3 - result));
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::vector<int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 24 * (v4 >> 1);
  v7 = *(a2 - 24);
  v8 = *(a2 - 16);
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = v8 - v7;
  if (v11 >= (v10 - *v6) >> 2)
  {
    v12 = (v10 - *v6) >> 2;
  }

  else
  {
    v12 = v8 - v7;
  }

  if ((v12 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    v14 = *(a2 - 24);
    if (v7 == v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  v13 = 4 * v12;
  v14 = *(a2 - 24);
  v15 = &v9[v12];
  while (*v9 == *v14)
  {
    ++v9;
    ++v14;
    v13 -= 4;
    if (!v13)
    {
      v9 = v15;
      break;
    }
  }

  if (v14 != v8)
  {
LABEL_13:
    if (v9 == v10 || *v9 < *v14)
    {
      v16 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v17 = *(v6 + 16);
      *(a2 - 24) = *v6;
      *(a2 - 8) = v17;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      if (v4 >= 2)
      {
        while (1)
        {
          v20 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v18 = result + 24 * v5;
          v22 = *v18;
          v21 = *(v18 + 8);
          v23 = v11 >= (v21 - *v18) >> 2 ? (v21 - *v18) >> 2 : v8 - v7;
          if ((v23 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v24 = 4 * v23;
            v25 = v7;
            v26 = &v22[v23];
            while (*v22 == *v25)
            {
              ++v22;
              ++v25;
              v24 -= 4;
              if (!v24)
              {
                v22 = v26;
                break;
              }
            }
          }

          else
          {
            v25 = v7;
          }

          if (v25 == v8 || v22 != v21 && *v22 >= *v25)
          {
            break;
          }

          v19 = *(v18 + 16);
          *v6 = *v18;
          *(v6 + 16) = v19;
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          v6 = result + 24 * v5;
          if (v20 < 2)
          {
            goto LABEL_17;
          }
        }
      }

      v18 = v6;
LABEL_17:
      *v18 = v7;
      *(v18 + 8) = v8;
      *(v18 + 16) = v16;
    }
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t operations_research::DynamicPermutation::DynamicPermutation(uint64_t this, int a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0u;
  *(this + 104) = 0;
  *(this + 96) = this + 104;
  *(this + 112) = 0;
  *(this + 64) = 0u;
  *(this + 80) = 0u;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  v2 = *this;
  v3 = *(this + 8) - *this;
  if ((v3 >> 2) >= 1)
  {
    v4 = 0;
    v5 = *(this + 24);
    v6 = (v3 >> 2) & 0x7FFFFFFF;
    if (v6 < 8)
    {
      goto LABEL_15;
    }

    if ((v2 - v5) <= 0x1F)
    {
      goto LABEL_15;
    }

    v7 = (v3 >> 2) & 7;
    v4 = v6 - v7;
    v8 = v5 + 1;
    v9 = xmmword_23CE38660;
    v10 = v2 + 1;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    v13 = v6 - v7;
    do
    {
      v14 = vaddq_s32(v9, v11);
      v8[-1] = v9;
      *v8 = v14;
      v10[-1] = v9;
      *v10 = v14;
      v9 = vaddq_s32(v9, v12);
      v8 += 2;
      v10 += 2;
      v13 -= 8;
    }

    while (v13);
    if (v7)
    {
LABEL_15:
      do
      {
        v5->i32[v4] = v4;
        v2->i32[v4] = v4;
        ++v4;
      }

      while (v6 != v4);
    }
  }

  return this;
}

void sub_23C9A6A28(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *v3 = v5;
    operator delete(v5);
    v6 = *v1;
    if (!*v1)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v1;
    if (!*v1)
    {
      goto LABEL_4;
    }
  }

  *(v1 + 8) = v6;
  operator delete(v6);
  goto LABEL_4;
}

void sub_23C9A6AAC()
{
  if (!*v0)
  {
    JUMPOUT(0x23C9A6A70);
  }

  JUMPOUT(0x23C9A6A68);
}

void operations_research::DynamicPermutation::AddMappings(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a1 + 6;
  v28 = (a1[7] - a1[6]) >> 2;
  std::vector<int>::push_back[abi:ne200100]((a1 + 9), &v28);
  v9 = a3 + ((v8[1] - *v8) >> 2);
  if (v9 > (v8[2] - *v8) >> 2)
  {
    if (!(v9 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a2 + 4 * v10);
      v27 = v12;
      v13 = *(a4 + 4 * v10);
      v14 = a1[3];
      do
      {
        v15 = v12;
        v12 = *(v14 + 4 * v12);
      }

      while (v12 != v15);
      *(v14 + 4 * v13) = v15;
      v16 = *a1;
      *(*a1 + 4 * v27) = v13;
      v17 = a1[13];
      if (*(v16 + 4 * v13) == v13)
      {
        if (!v17)
        {
LABEL_17:
          operator new();
        }

        v18 = a1[13];
        while (1)
        {
          while (1)
          {
            v19 = v18;
            v20 = *(v18 + 28);
            if (v13 >= v20)
            {
              break;
            }

            v18 = *v19;
            if (!*v19)
            {
              goto LABEL_17;
            }
          }

          if (v20 >= v13)
          {
            break;
          }

          v18 = v19[1];
          if (!v18)
          {
            goto LABEL_17;
          }
        }
      }

      if (v17)
      {
        v21 = a1 + 13;
        v22 = a1[13];
        do
        {
          if (*(v22 + 28) >= v27)
          {
            v21 = v22;
          }

          v22 = *(v22 + 8 * (*(v22 + 28) < v27));
        }

        while (v22);
        if (v21 != a1 + 13 && v27 >= *(v21 + 7))
        {
          v23 = v21[1];
          v24 = v21;
          if (v23)
          {
            do
            {
              v25 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v25 = v24[2];
              v26 = *v25 == v24;
              v24 = v25;
            }

            while (!v26);
          }

          if (a1[12] == v21)
          {
            a1[12] = v25;
          }

          --a1[14];
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v17, v21);
          operator delete(v21);
        }
      }

      std::vector<int>::push_back[abi:ne200100](v8, &v27);
      v10 = ++v11;
    }

    while (a3 > v11);
  }
}

void operations_research::DynamicPermutation::UndoLastMappings(void *a1, char **a2)
{
  v3 = *a2;
  a2[1] = v3;
  v4 = a1[10];
  if (a1[9] != v4)
  {
    v6 = *(v4 - 4);
    v8 = (a1 + 6);
    v7 = a1[6];
    a1[10] = v4 - 4;
    v9 = (a1[7] - v7) >> 2;
    v10 = v9 - v6;
    if (v10 > (a2[2] - v3) >> 2)
    {
      if ((v10 & 0x80000000) == 0)
      {
        v11 = a2[1] - v3;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a2, v3, (a1[6] + 4 * v6), a1[7], (a1[7] - (a1[6] + 4 * v6)) >> 2);
    v12 = v9 - 1;
    if (v9 - 1 >= v6)
    {
      v15 = (a1 + 13);
      v16 = *a1;
      v17 = a1[3];
      do
      {
        v18 = v8->__begin_[v12];
        v19 = *(v16 + 4 * v18);
        v20 = *v15;
        if (*(v17 + 4 * v18) != v18)
        {
          if (!v20)
          {
LABEL_20:
            operator new();
          }

          v21 = *v15;
          while (1)
          {
            while (1)
            {
              v22 = v21;
              v23 = *(v21 + 7);
              if (v18 >= v23)
              {
                break;
              }

              v21 = *v22;
              if (!*v22)
              {
                goto LABEL_20;
              }
            }

            if (v23 >= v18)
            {
              break;
            }

            v21 = v22[1];
            if (!v21)
            {
              goto LABEL_20;
            }
          }
        }

        if (v20)
        {
          v24 = (a1 + 13);
          v25 = *v15;
          do
          {
            if (*(v25 + 7) >= v19)
            {
              v24 = v25;
            }

            v25 = v25[*(v25 + 7) < v19];
          }

          while (v25);
          if (v24 != v15 && v19 >= *(v24 + 7))
          {
            v26 = v24[1];
            v27 = v24;
            if (v26)
            {
              do
              {
                v28 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v28 = v27[2];
                v29 = *v28 == v27;
                v27 = v28;
              }

              while (!v29);
            }

            if (a1[12] == v24)
            {
              a1[12] = v28;
            }

            --a1[14];
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v24);
            operator delete(v24);
          }
        }

        v17 = a1[3];
        *(v17 + 4 * v19) = v19;
        v16 = *a1;
        *(*a1 + 4 * v18) = v18;
        --v12;
      }

      while (v12 >= v6);
    }

    v13 = a1[6];
    v14 = (a1[7] - v13) >> 2;
    if (v6 <= v14)
    {
      if (v6 < v14)
      {
        a1[7] = v13 + 4 * v6;
      }
    }

    else
    {

      std::vector<int>::__append(v8, v6 - v14);
    }
  }
}

void operations_research::DynamicPermutation::Reset(operations_research::DynamicPermutation *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  if (v1 != v2)
  {
    v3 = *this;
    v4 = *(this + 3);
    v5 = *(this + 6);
    do
    {
      v6 = *v5++;
      *(v4 + 4 * *(v3 + 4 * v6)) = *(v3 + 4 * v6);
      *(v3 + 4 * v6) = v6;
    }

    while (v5 != v2);
  }

  v8 = (this + 104);
  v7 = *(this + 13);
  *(this + 7) = v1;
  *(this + 10) = *(this + 9);
  std::__tree<int>::destroy(this + 96, v7);
  *v8 = 0;
  v8[1] = 0;
  *(v8 - 1) = v8;
}

void *std::unique_ptr<operations_research::SparsePermutation>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      v1[5] = v3;
      operator delete(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      v1[2] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x1010C40738DD8B8);
    return v2;
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__src, char *a3, unint64_t a4, uint64_t a5)
{
  v5 = __src;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = (__src - v11);
    v48 = 4 * ((__src - v11) >> 2);
    v49 = v48;
    if ((a5 & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_43;
    }

    v49 = (v48 + 4 * a5);
    v50 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - a3) >= 0x20)
    {
      v60 = v50 + 1;
      v61 = (v50 + 1) & 0x7FFFFFFFFFFFFFF8;
      v51 = (v48 + 4 * v61);
      v52 = &a3[4 * v61];
      v62 = (a3 + 16);
      v63 = (v48 + 16);
      v64 = v61;
      do
      {
        v65 = *v62;
        *(v63 - 1) = *(v62 - 1);
        *v63 = v65;
        v62 += 2;
        v63 += 2;
        v64 -= 8;
      }

      while (v64);
      if (v60 == v61)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v51 = v48;
      v52 = a3;
    }

    do
    {
      v53 = *v52;
      v52 += 4;
      *v51 = v53;
      v51 += 4;
    }

    while (v51 != v49);
LABEL_43:
    v54 = *(a1 + 8) - __src;
    memcpy(v49, __src, v54);
    v55 = &v49[v54];
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __src;
  v16 = (v10 - __src) >> 2;
  if (v16 < a5)
  {
    v17 = a4 - &a3[v15];
    if (a4 != &a3[v15])
    {
      v18 = a5;
      v19 = a4;
      memmove(*(a1 + 8), &a3[v15], a4 - &a3[v15]);
      a4 = v19;
      a5 = v18;
    }

    v20 = (v10 + v17);
    *(a1 + 8) = v10 + v17;
    if (v16 < 1)
    {
      return v5;
    }

    v21 = 4 * a5;
    v22 = &v5[4 * a5];
    v23 = &v20[-4 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &a3[v21] + 4;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &a3[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x1C)
      {
        goto LABEL_65;
      }

      if ((a5 & 0x3FFFFFFFFFFFFFF8) == 0)
      {
        goto LABEL_65;
      }

      v27 = (v25 >> 2) + 1;
      v28 = 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
      v23 += v28;
      v26 = &v20[v28];
      v29 = (&v5[a4] - a3 + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 8;
      }

      while (v31);
      if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_65:
        do
        {
          v33 = *v23;
          v23 += 4;
          *v26 = v33;
          v26 += 4;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(&v5[4 * a5], v5, v20 - v22);
    }

    if (v10 == v5)
    {
      return v5;
    }

LABEL_50:
    memmove(v5, a3, v15);
    return v5;
  }

  v15 = 4 * a5;
  v34 = &__src[4 * a5];
  v35 = (v10 - 4 * a5);
  if (v35 >= v10)
  {
    v39 = *(a1 + 8);
  }

  else
  {
    v36 = v35 + 1;
    if (v10 > (v35 + 1))
    {
      v36 = *(a1 + 8);
    }

    v37 = v36 + v15 + ~v10;
    v38 = v37 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
    v39 = *(a1 + 8);
    if (v38)
    {
      goto LABEL_66;
    }

    v40 = (v37 >> 2) + 1;
    v41 = 4 * (v40 & 0x7FFFFFFFFFFFFFF8);
    v35 = (v35 + v41);
    v39 = (v10 + v41);
    v42 = (v10 + 16);
    v43 = (v10 + 16 - v15);
    v44 = v40 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v45 = *v43;
      *(v42 - 1) = *(v43 - 1);
      *v42 = v45;
      v42 += 2;
      v43 += 2;
      v44 -= 8;
    }

    while (v44);
    if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_66:
      do
      {
        v46 = *v35++;
        *v39++ = v46;
      }

      while (v35 < v10);
    }
  }

  *(a1 + 8) = v39;
  if (v10 != v34)
  {
    memmove(&__src[4 * a5], __src, v10 - v34);
  }

  if (v15)
  {
    goto LABEL_50;
  }

  return v5;
}

uint64_t absl::lts_20240722::flags_internal::FlagOps<BOOL>(int a1, unsigned __int8 *a2, char *__p)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
        return 1;
      }

      *__p = *a2;
      return 0;
    }

    if (!a1)
    {

      operator new();
    }

    if (a1 == 1)
    {
      operator delete(__p);
    }

    return 0;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return &absl::lts_20240722::base_internal::FastTypeTag<BOOL>::dummy_var;
    }

    else
    {
      return MEMORY[0x277D82798];
    }
  }

  if (a1 == 7)
  {
    LOBYTE(v5) = *__p;
    if (absl::lts_20240722::flags_internal::AbslParseFlag(*a2, *(a2 + 1), &v5))
    {
      *__p = v5;
      return __p;
    }

    return 0;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
      return 80;
    }

    return 0;
  }

  absl::lts_20240722::flags_internal::Unparse(*a2, &v5);
  if (__p[23] < 0)
  {
    operator delete(*__p);
  }

  *__p = v5;
  *(__p + 2) = v6;
  return 0;
}

unint64_t AbslFlagHelpGenForminimize_permutation_support_size::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t *operations_research::GraphSymmetryFinder::GraphSymmetryFinder(uint64_t *a1, uint64_t a2, char a3)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  v6 = (a1 + 1);
  v7 = a1 + 7;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  operations_research::TimeLimit::TimeLimit((a1 + 7));
  a1[25] = 0;
  a1[26] = 0;
  a1[27] = 0;
  operations_research::DynamicPermutation::DynamicPermutation((a1 + 28), *(*a1 + 8));
  v8 = *a1;
  v9 = *(*a1 + 8);
  a1[47] = 0;
  a1[48] = 0;
  a1[46] = 0;
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(v8 + 8);
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  v11 = *(v8 + 8);
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  v43 = a1 + 55;
  v44 = 0;
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    if ((v13 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[66] = 0;
  *(a1 + 31) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  operations_research::MergingPartition::Reset((a1 + 58), 0);
  a1[69] = 0;
  *(a1 + 67) = 0u;
  operations_research::GraphSymmetryFinder::Stats::Stats((a1 + 70));
  a1[24] = v7;
  operations_research::MergingPartition::Reset((a1 + 58), *(*a1 + 8));
  if ((a3 & 1) == 0)
  {
    v14 = *(a2 + 8) + 2;
    LODWORD(v43) = 0;
    std::vector<int>::assign((a1 + 4), v14, &v43);
    v15 = *(a2 + 8);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = *(a2 + 32);
      v18 = *(a2 + 56);
      do
      {
        v19 = *(v17 + 4 * v16++);
        if (v16 >= *(a2 + 8))
        {
          v20 = (a2 + 16);
        }

        else
        {
          v20 = (v17 + 4 * v16);
        }

        v21 = *v20;
        if (v19 != v21)
        {
          v22 = a1[4];
          do
          {
            v23 = *(v18 + 4 * v19) + 2;
            ++*(v22 + 4 * v23);
            ++v19;
          }

          while (v21 != v19);
        }
      }

      while (v16 != v15);
    }

    v24 = a1[5];
    v25 = (a1[4] + 8);
    v26 = (a1[4] + 12);
    if (v25 != v24 && v26 != v24)
    {
      v28 = *v25;
      do
      {
        v28 += *v26;
        *v26++ = v28;
      }

      while (v26 != v24);
    }

    v29 = *(a2 + 16);
    LODWORD(v43) = -1;
    std::vector<int>::assign(v6, v29, &v43);
    v30 = *(a2 + 8);
    if (v30 >= 1)
    {
      v31 = 0;
      v32 = *(a2 + 32);
      v33 = *(a2 + 56);
      do
      {
        v34 = *(v32 + 4 * v31);
        v35 = v31 + 1;
        if (v31 + 1 >= *(a2 + 8))
        {
          v36 = (a2 + 16);
        }

        else
        {
          v36 = (v32 + 4 * (v31 + 1));
        }

        v37 = *v36;
        if (v34 != v37)
        {
          v38 = a1[4];
          begin = v6->__begin_;
          do
          {
            v40 = *(v33 + 4 * v34) + 1;
            v41 = *(v38 + 4 * v40);
            *(v38 + 4 * v40) = v41 + 1;
            begin[v41] = v31;
            ++v34;
          }

          while (v37 != v34);
        }

        ++v31;
      }

      while (v35 != v30);
    }
  }

  return a1;
}

void sub_23C9A814C(_Unwind_Exception *a1)
{
  operations_research::GraphSymmetryFinder::Stats::~Stats((v1 + 70));
  v7 = *v5;
  if (*v5)
  {
    v1[68] = v7;
    operator delete(v7);
  }

  operations_research::MergingPartition::~MergingPartition((v1 + 58));
  std::vector<std::vector<int>>::~vector[abi:ne200100](v4);
  v8 = v1[52];
  if (v8)
  {
    v1[53] = v8;
    operator delete(v8);
    v9 = v1[49];
    if (!v9)
    {
LABEL_5:
      v10 = v1[46];
      if (!v10)
      {
LABEL_10:
        operations_research::DynamicPermutation::~DynamicPermutation((v1 + 28));
        std::vector<operations_research::GraphSymmetryFinder::SearchState>::~vector[abi:ne200100](v3);
        v11 = v1[12];
        if (v11)
        {
          v1[13] = v11;
          operator delete(v11);
          v12 = v1[4];
          if (!v12)
          {
LABEL_12:
            v13 = *v2;
            if (!*v2)
            {
              goto LABEL_13;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v12 = v1[4];
          if (!v12)
          {
            goto LABEL_12;
          }
        }

        v1[5] = v12;
        operator delete(v12);
        v13 = *v2;
        if (!*v2)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_16:
        v1[2] = v13;
        operator delete(v13);
        _Unwind_Resume(a1);
      }

LABEL_9:
      operator delete(v10);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = v1[49];
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v1[50] = v9;
  operator delete(v9);
  v10 = v1[46];
  if (!v10)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

operations_research::TimeLimit *operations_research::TimeLimit::TimeLimit(operations_research::TimeLimit *this)
{
  v1 = this;
  *(this + 40) = 0u;
  *(this + 3) = (0.0001 * 1000000000.0);
  *(this + 8) = 100;
  *(this + 11) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 13) = 0x7FF0000000000000;
  *(this + 14) = 0;
  explicit = atomic_load_explicit(&qword_2810BD7F8, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  this = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_time_limit_use_usertime);
  if (this)
  {
LABEL_3:
    *(v1 + 72) = 1;
    this = absl::lts_20240722::GetCurrentTimeNanos(this);
    *(v1 + 10) = this;
    *(v1 + 12) = 0x7FF0000000000000;
  }

LABEL_4:
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  *v1 = CurrentTimeNanos;
  *(v1 + 1) = CurrentTimeNanos;
  if (CurrentTimeNanos % 1000000000 >= 0)
  {
    v4 = 4 * (CurrentTimeNanos % 1000000000);
  }

  else
  {
    LODWORD(v4) = 4 * (CurrentTimeNanos % 1000000000) - 294967296;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = -1;
  v5 = absl::lts_20240722::Duration::operator+=(&v8, CurrentTimeNanos / 1000000000 + ((CurrentTimeNanos % 1000000000) >> 61), v4);
  v6 = *(v5 + 2);
  v8 = *v5;
  v9 = v6;
  *(v1 + 2) = absl::lts_20240722::IDivDuration(v8, v6, 0, 4, &v8);
  return v1;
}

void sub_23C9A8408(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::MergingPartition::~MergingPartition(operations_research::MergingPartition *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void operations_research::DynamicPermutation::~DynamicPermutation(operations_research::DynamicPermutation *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    operator delete(v2);
  }

  std::__tree<int>::destroy(this + 96, *(this + 13));
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }

  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

void **std::vector<operations_research::GraphSymmetryFinder::SearchState>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::GraphSymmetryFinder::IsGraphAutomorphism(operations_research::GraphSymmetryFinder *this, const operations_research::DynamicPermutation *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 7);
  if (v2 == v3)
  {
    return 1;
  }

  v4 = *a2;
  v5 = *(a2 + 6);
  do
  {
    v6 = *v5;
    v7 = *(v4 + 4 * v6);
    if (v7 != v6)
    {
      v8 = *(*this + 56);
      v9 = *(*this + 32);
      v10 = *(v9 + 4 * v6);
      v11 = v6 + 1;
      v12 = *(*this + 8);
      if (v11 >= v12)
      {
        v13 = (*this + 16);
      }

      else
      {
        v13 = (v9 + 4 * v11);
      }

      v14 = *v13;
      v15 = *(v9 + 4 * v7);
      v16 = (v8 + 4 * v15);
      v17 = v7 + 1;
      v18 = (v9 + 4 * v17);
      if (v17 >= v12)
      {
        v19 = (*this + 16);
      }

      else
      {
        v19 = v18;
      }

      v20 = *v19 - v15;
      if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = *(this + 46);
        v22 = 4 * v20;
        v23 = (v8 + 4 * v15);
        do
        {
          v24 = *v23++;
          *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
          v22 -= 4;
        }

        while (v22);
        v25 = v20;
        v26 = v14 - v10;
        if ((v26 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
LABEL_18:
          v27 = *(this + 46);
          v28 = 4 * v26;
          v29 = (v8 + 4 * v10);
          while (1)
          {
            v30 = *(v4 + 4 * *v29);
            v31 = v30 >> 6;
            v32 = 1 << v30;
            v33 = *(v27 + 8 * v31);
            if ((v32 & v33) == 0)
            {
              break;
            }

            --v25;
            *(v27 + 8 * v31) = v33 & ~v32;
            ++v29;
            v28 -= 4;
            if (!v28)
            {
              goto LABEL_3;
            }
          }

LABEL_22:
          if ((v20 & 0x3FFFFFFFFFFFFFFFLL) == 0)
          {
            return 0;
          }

          v34 = *(this + 46);
          v35 = 4 * v20;
          do
          {
            v36 = *v16++;
            *(v34 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v36);
            v35 -= 4;
          }

          while (v35);
          return 0;
        }
      }

      else
      {
        v25 = 0;
        v26 = v14 - v10;
        if ((v26 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_18;
        }
      }

LABEL_3:
      if (v25)
      {
        goto LABEL_22;
      }
    }

    ++v5;
  }

  while (v5 != v3);
  v39 = *(this + 4);
  if (v39 != *(this + 5))
  {
    v40 = *a2;
    while (1)
    {
      v41 = *v2;
      v42 = *(v40 + 4 * v41);
      if (v42 != v41)
      {
        v43 = *(this + 1);
        v44 = *(v39 + 4 * v41);
        v45 = *(v39 + 4 * (v41 + 1));
        v46 = 4 * *(v39 + 4 * v42);
        v47 = (v46 + v43);
        v48 = 4 * *(v39 + 4 * (v42 + 1));
        v49 = (v48 + v43);
        if (v46 == v48)
        {
          v50 = 0;
        }

        else
        {
          v50 = 0;
          v51 = *(this + 46);
          v52 = (v46 + v43);
          do
          {
            v53 = *v52++;
            ++v50;
            *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
          }

          while (v52 != v49);
        }

        v54 = 4 * v44;
        v55 = 4 * v45;
        if (v54 != v55)
        {
          v56 = (v54 + v43);
          v57 = (v55 + v43);
          v58 = *(this + 46);
          while (1)
          {
            v59 = *(v40 + 4 * *v56);
            v60 = v59 >> 6;
            v61 = 1 << v59;
            v62 = *(v58 + 8 * v60);
            if ((v61 & v62) == 0)
            {
              break;
            }

            --v50;
            *(v58 + 8 * v60) = v62 & ~v61;
            if (++v56 == v57)
            {
              goto LABEL_41;
            }
          }

          if (v46 == v48)
          {
            return 0;
          }

          do
          {
LABEL_47:
            v37 = 0;
            v63 = *v47++;
            *(v58 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v63);
          }

          while (v47 != v49);
          return v37;
        }

LABEL_41:
        if (v46 != v48 && v50)
        {
          v58 = *(this + 46);
          goto LABEL_47;
        }

        if (v50)
        {
          return 0;
        }
      }

      ++v2;
      v37 = 1;
      if (v2 == v3)
      {
        return v37;
      }
    }
  }

  return 1;
}

void operations_research::GraphSymmetryFinder::DistinguishNodeInPartition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 72);
  v3 = *(a3 + 80);
  operator new();
}

uint64_t operations_research::GraphSymmetryFinder::FindSymmetries@<X0>(operations_research::GraphSymmetryFinder *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = (a1 + 56);
  if (a5)
  {
    v8 = a5;
  }

  *(a1 + 24) = v8;
  v9 = *a3;
  v10 = a3[1];
  if (v10 != *a3)
  {
    do
    {
      v12 = *--v10;
      v11 = v12;
      *v10 = 0;
      if (v12)
      {
        v13 = v11[4];
        if (v13)
        {
          v11[5] = v13;
          operator delete(v13);
        }

        v14 = v11[1];
        if (v14)
        {
          v11[2] = v14;
          operator delete(v14);
        }

        MEMORY[0x23EED9460](v11, 0x1010C40738DD8B8);
      }
    }

    while (v10 != v9);
  }

  a3[1] = v9;
  a4[1] = *a4;
  if (*(*a1 + 8) == (a2[1] - *a2) >> 2)
  {
    operations_research::DynamicPartition::DynamicPartition(&v19, a2);
    operations_research::GraphSymmetryFinder::RecursivelyRefinePartitionByAdjacency(a1, 0, &v19);
  }

  return absl::lts_20240722::Status::Status(a6, 3, "Invalid 'node_equivalence_classes_io'.", 38);
}

void sub_23C9A9F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a71);
    operations_research::DynamicPartition::~DynamicPartition((v71 - 248));
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a71);
  operations_research::DynamicPartition::~DynamicPartition((v71 - 248));
  _Unwind_Resume(a1);
}

void sub_23C9AA004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a46);
  if (a16)
  {
    operator delete(a16);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a55);
  operations_research::MergingPartition::~MergingPartition(&a58);
  operations_research::DynamicPartition::~DynamicPartition((v58 - 248));
  _Unwind_Resume(a1);
}

uint64_t operations_research::TimeLimit::LimitReached(operations_research::TimeLimit *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = atomic_load(v2);
    if (v3)
    {
      return 1;
    }
  }

  v4 = *(this + 16);
  if (v4)
  {
    v5 = atomic_load(v4);
    if (v5)
    {
      return 1;
    }
  }

  if (fmax(*(this + 13) - *(this + 14), 0.0) <= 0.0)
  {
    return 1;
  }

  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  v7 = CurrentTimeNanos;
  if (*(this + 3) <= CurrentTimeNanos - *(this + 1))
  {
    v8 = CurrentTimeNanos - *(this + 1);
  }

  else
  {
    v8 = *(this + 3);
  }

  v29 = v8;
  v10 = *(this + 5);
  v11 = *(this + 6);
  OneBool = this + 40;
  v12 = v11 - v10;
  v13 = *(this + 8);
  if (v13 > (v11 - v10) >> 3)
  {
    if (v10 == v11 || *&v10[8 * *(this + 17)] <= v8)
    {
      *(this + 17) = v12 >> 3;
    }

    std::vector<long long>::push_back[abi:ne200100](OneBool, &v29);
    v14 = *(this + 17);
    v15 = *(this + 5);
    *(this + 1) = v7;
    if (*(v15 + 8 * v14) + v7 >= *(this + 2))
    {
      goto LABEL_14;
    }

    return 0;
  }

  v20 = *(this + 16);
  v21 = *(this + 17);
  if (*&v10[8 * v21] <= v8)
  {
    *(this + 17) = v20;
    *&v10[8 * v20] = v8;
    v22 = v20;
  }

  else
  {
    *&v10[8 * v20] = v8;
    if (v20 == v21)
    {
      *(this + 17) = 0;
      if ((v12 >> 3) < 2)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = *v10;
        v24 = (v12 >> 3) & 0x7FFFFFFF;
        v25 = 1;
        do
        {
          v26 = *&v10[8 * v25];
          if (v26 > v23)
          {
            *(this + 17) = v25;
            v22 = v25;
            v23 = v26;
          }

          ++v25;
        }

        while (v24 != v25);
      }

      v20 = v21;
    }

    else
    {
      v22 = v21;
    }
  }

  if (v20 + 1 == v13)
  {
    v28 = 0;
  }

  else
  {
    v28 = v20 + 1;
  }

  *(this + 16) = v28;
  *(this + 1) = v7;
  if (*&v10[8 * v22] + v7 < *(this + 2))
  {
    return 0;
  }

LABEL_14:
  explicit = atomic_load_explicit(&qword_2810BD7F8, memory_order_acquire);
  if (!explicit)
  {
    OneBool = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_time_limit_use_usertime);
    if (OneBool)
    {
      goto LABEL_16;
    }

LABEL_29:
    result = 1;
    *(this + 2) = 0;
    return result;
  }

  if ((explicit & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  v17 = *(this + 12);
  if (*(this + 72) == 1)
  {
    v18 = absl::lts_20240722::GetCurrentTimeNanos(OneBool) - *(this + 10) + *(this + 11);
  }

  else
  {
    v18 = *(this + 11);
  }

  v27 = v17 + v18 * -0.000000001;
  if (v27 <= 0.0001)
  {
    goto LABEL_29;
  }

  result = 0;
  *(this + 2) = *(this + 1) + (v27 * 1000000000.0);
  return result;
}

void operations_research::GraphSymmetryFinder::FindOneSuitablePermutation(uint64_t a1, int a2, std::vector<int>::value_type a3, uint64_t a4)
{
  __u = a3;
  v20[0] = a2;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *v12 = 0;
  LODWORD(__p) = -1;
  v6 = -1431655765 * ((*(a4 + 80) - *(a4 + 72)) >> 3);
  v10[0] = v6;
  v11[0] = v6;
  v11[1] = 0;
  v7 = *(a1 + 208);
  if (v7 >= *(a1 + 216))
  {
    v8 = std::vector<operations_research::GraphSymmetryFinder::SearchState>::__emplace_back_slow_path<int &,int,int,int>(a1 + 200, v20, &__p, v10, v11);
  }

  else
  {
    *v7 = a2;
    *(v7 + 4) = -1;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 8) = 0;
    v8 = v7 + 40;
    *(v7 + 32) = v6;
    *(v7 + 36) = v6;
  }

  *(a1 + 208) = v8;
  std::vector<int>::assign((v8 - 32), 1uLL, &__u);
  operations_research::GraphSymmetryFinder::DistinguishNodeInPartition(a1, v20[0], a4);
}

void sub_23C9AAF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v31 = a29;
    if (!a29)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v31 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v31);
  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<operations_research::SparsePermutation>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void operations_research::DynamicPartition::~DynamicPartition(operations_research::DynamicPartition *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void operations_research::GraphSymmetryFinder::SearchState::DebugString(operations_research::GraphSymmetryFinder::SearchState *this@<X0>, void *a2@<X8>)
{
  v8[8] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*(this + 1), *(this + 2), " ", 1uLL, &__p);
  v4 = *(this + 1);
  v8[0] = *this;
  v8[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v8[2] = v4;
  v8[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  v5 = *(this + 8);
  v8[4] = &__p;
  v8[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  v8[6] = v5;
  v8[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("SearchState{ base_node=%d, first_image_node=%d, remaining_pruned_image_nodes=[%s], num_parts_before_trying_to_map_base_node=%d }", 128, v8, 4uLL, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C9AB2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::GraphSymmetryFinder::ConfirmFullMatchOrFindNextMappingDecision(operations_research::GraphSymmetryFinder *this, const operations_research::DynamicPartition *a2, const operations_research::DynamicPartition *a3, const operations_research::DynamicPermutation **a4, int *a5, int *a6, int *a7)
{
  *a6 = -1;
  *a7 = -1;
  explicit = atomic_load_explicit(&qword_2810BD958, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = a7;
    v23 = a3;
    v24 = a6;
    v25 = a2;
    v26 = a5;
    v27 = a4;
    OneBool = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_minimize_permutation_support_size);
    a4 = v27;
    a5 = v26;
    a2 = v25;
    a6 = v24;
    a3 = v23;
    a7 = v22;
    if ((OneBool & 1) == 0)
    {
LABEL_3:
      v8 = a4[12];
      if (v8 == (a4 + 13))
      {
        v12 = *a6;
      }

      else
      {
        v9 = a4[3];
        v10 = *(a3 + 6);
        v11 = *(a2 + 6);
        do
        {
          v12 = *(v8 + 7);
          *a6 = v12;
          v13 = v12;
          do
          {
            LODWORD(v14) = v13;
            v13 = *(v9 + v13);
          }

          while (v13 != v14);
          if (*(v10 + 4 * v14) == *(v11 + 4 * v12))
          {
            goto LABEL_47;
          }

          v15 = *(v8 + 1);
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = *(v8 + 2);
              v17 = *v16 == v8;
              v8 = v16;
            }

            while (!v17);
          }

          v8 = v16;
        }

        while (v16 != (a4 + 13));
      }

      if (v12 != -1)
      {
        v18 = *(*(a2 + 6) + 4 * v12);
        v19 = *a3;
        v20 = *(a3 + 9);
        v21 = 24 * v18;
LABEL_46:
        LODWORD(v14) = *(v19 + 4 * *(v20 + v21));
        goto LABEL_47;
      }
    }
  }

  v29 = *a5;
  v30 = *(a2 + 9);
  if (*a5 >= (-1431655765 * ((*(a2 + 10) - v30) >> 3)))
  {
    return 1;
  }

  v31 = v29 + 1;
  v32 = *(a3 + 9);
  v21 = 24 * v29;
  v33 = 1431655765 * ((*(a2 + 10) - v30) >> 3);
  while (1)
  {
    v34 = v30 + v21;
    if (*(v30 + v21 + 4) - *(v30 + v21) != 1 && *(v34 + 16) != *(v32 + 16 + v21))
    {
      v43 = atomic_load_explicit(&qword_2810BD958, memory_order_acquire);
      if (v43)
      {
        if (v43)
        {
LABEL_37:
          v44 = (*(a2 + 9) + v21);
          v45 = 4 * *v44;
          v46 = 4 * v44[1];
          v47 = (v45 + *a2);
          if (v45 != v46)
          {
            v48 = (v45 + *a2);
            do
            {
              v14 = *v48;
              if (v31 - *(*(a3 + 6) + 4 * v14) == 1)
              {
                goto LABEL_42;
              }

              ++v48;
            }

            while (v48 != (v46 + *a2));
          }

          *a6 = *v47;
LABEL_45:
          v19 = *a3;
          v20 = *(a3 + 9);
          goto LABEL_46;
        }
      }

      else
      {
        v49 = a7;
        v50 = a3;
        v51 = a6;
        v52 = a2;
        v53 = v21;
        v54 = v31;
        v55 = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_minimize_permutation_support_size);
        v31 = v54;
        v21 = v53;
        a2 = v52;
        a6 = v51;
        a3 = v50;
        a7 = v49;
        if (v55)
        {
          goto LABEL_37;
        }
      }

      v14 = *(*a2 + 4 * *(*(a2 + 9) + v21));
      *a6 = v14;
      if (v31 - *(*(a3 + 6) + 4 * v14) == 1)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v35 = *(v34 + 8);
    if (v35 < v29 && *(v30 + 24 * v35 + 4) - *(v30 + 24 * v35) != 1 && *(v30 + 24 * v35 + 16) != *(v32 + 24 * v35 + 16))
    {
      break;
    }

    *a5 = v31++;
    v21 += 24;
    if (v33 + v31 == 1)
    {
      return 1;
    }
  }

  v36 = atomic_load_explicit(&qword_2810BD958, memory_order_acquire);
  if (!v36)
  {
    v56 = a7;
    v57 = a3;
    v58 = a6;
    v59 = a2;
    v60 = v35;
    v61 = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_minimize_permutation_support_size);
    LODWORD(v35) = v60;
    a2 = v59;
    a6 = v58;
    a3 = v57;
    a7 = v56;
    if ((v61 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_29:
    v37 = (*(a2 + 9) + 24 * v35);
    v38 = 4 * *v37;
    v39 = 4 * v37[1];
    v40 = (v38 + *a2);
    if (v38 == v39)
    {
LABEL_33:
      *a6 = *v40;
      goto LABEL_50;
    }

    v41 = (v38 + *a2);
    while (1)
    {
      v14 = *v41;
      if (*(*(a3 + 6) + 4 * v14) == v35)
      {
        break;
      }

      if (++v41 == (v39 + *a2))
      {
        goto LABEL_33;
      }
    }

LABEL_42:
    *a6 = v14;
    goto LABEL_47;
  }

  if (v36)
  {
    goto LABEL_29;
  }

LABEL_49:
  v14 = *(*a2 + 4 * *(*(a2 + 9) + 24 * v35));
  *a6 = v14;
  if (*(*(a3 + 6) + 4 * v14) != v35)
  {
LABEL_50:
    LODWORD(v14) = *(*a3 + 4 * *(*(a3 + 9) + 24 * v35));
  }

LABEL_47:
  result = 0;
  *a7 = v14;
  return result;
}

void operations_research::GraphSymmetryFinder::PruneOrbitsUnderPermutationsCompatibleWithPartition(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, std::vector<int> *a7)
{
  if (dword_2810BF8A8 >= 4)
  {
    v61 = a6;
    v62 = a7;
    IsEnabled4 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled4(&off_2810BF8A0, dword_2810BF8A8);
    a7 = v62;
    a6 = v61;
    if (IsEnabled4)
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v75, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/algorithms/find_graph_symmetries.cc", 964);
      v64 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v75, 4);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v64, "    Pruning [", 0xDuLL);
      absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(v62->__begin_, v62->__end_, ", ", 2uLL, &v74);
      v65 = absl::lts_20240722::log_internal::LogMessage::operator<<(v64, &v74);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, "]", 1uLL);
      operations_research::sat::BruteForceOrthogonalPacking(&v74, v75);
      a6 = v61;
      a7 = v62;
    }
  }

  if ((a7->__end_ - a7->__begin_) >= 5)
  {
    v68 = a7;
    if ((a6 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v70 = &a5[a6];
      while (1)
      {
        v9 = *(a3 + 8 * *a5);
        v11 = v9[4];
        v10 = v9[5];
        if (((v10 - v11) >> 2) >= 1)
        {
          break;
        }

LABEL_37:
        v37 = v9[1];
        v38 = v9[2];
        while (v37 != v38)
        {
          v40 = *v37;
          v41 = a1[46];
          v42 = *(v41 + 8 * (v40 >> 6));
          if (((1 << v40) & v42) == 0)
          {
            *(v41 + 8 * (v40 >> 6)) = (1 << v40) | v42;
            v44 = a1[53];
            v43 = a1[54];
            if (v44 < v43)
            {
              *v44 = v40;
              v39 = v44 + 4;
            }

            else
            {
              v45 = a1[52];
              v46 = v44 - v45;
              v47 = (v44 - v45) >> 2;
              v48 = v47 + 1;
              if ((v47 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v49 = v43 - v45;
              if (v49 >> 1 > v48)
              {
                v48 = v49 >> 1;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v50 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                if (!(v50 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v51 = (v44 - v45) >> 2;
              v52 = (4 * v47);
              v53 = (4 * v47 - 4 * v51);
              *v52 = v40;
              v39 = v52 + 1;
              memcpy(v53, v45, v46);
              a1[52] = v53;
              a1[53] = v39;
              a1[54] = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            a1[53] = v39;
          }

          ++v37;
        }

LABEL_5:
        if (++a5 == v70)
        {
          goto LABEL_55;
        }
      }

      v12 = v9[1];
      v13 = *(a2 + 48);
      v14 = *(a2 + 72);
      if (*(v14 + 24 * *(v13 + 4 * *v12) + 4) - *(v14 + 24 * *(v13 + 4 * *v12)) < *v11)
      {
        goto LABEL_5;
      }

      v15 = ((v10 - v11) >> 2) & 0x7FFFFFFF;
      v16 = v15 - 1;
      if (v15 != 1)
      {
        v17 = v11 + 1;
        do
        {
          v18 = *(v17 - 1);
          v19 = *(v13 + 4 * v12[v18]);
          if (*(v14 + 24 * v19 + 4) - *(v14 + 24 * v19) < *v17 - v18)
          {
            goto LABEL_5;
          }

          ++v17;
          --v16;
        }

        while (v16);
      }

      v20 = 0;
      v21 = v9[1];
      v22 = 1;
LABEL_14:
      while (2)
      {
        if (v20)
        {
          v23 = 4 * v11[v20 - 1];
          v24 = 4 * v11[v20];
          if (v23 == v24)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v23 = 0;
          v24 = 4 * *v11;
          if (!v24)
          {
LABEL_13:
            if (++v20 != v15)
            {
              continue;
            }

            if ((v22 & 1) == 0)
            {
              goto LABEL_5;
            }

            v29 = 0;
            while (2)
            {
              if (v29)
              {
                v30 = 4 * v11[v29 - 1];
                v31 = 4 * v11[v29];
                if (v30 != v31)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v30 = 0;
                v31 = 4 * *v11;
                if (v31)
                {
LABEL_33:
                  v32 = v9[1];
                  v33 = (v31 + v32);
                  v34 = (v30 + v32);
                  v35 = 0xFFFFFFFFLL;
                  do
                  {
                    v36 = *v34;
                    if ((v35 & 0x80000000) == 0)
                    {
                      operations_research::MergingPartition::MergePartsOf((a1 + 58), v35, *v34);
                    }

                    ++v34;
                    v35 = v36;
                  }

                  while (v34 != v33);
                  v11 = v9[4];
                  v10 = v9[5];
                }
              }

              if (++v29 >= ((v10 - v11) >> 2))
              {
                goto LABEL_37;
              }

              continue;
            }
          }
        }

        break;
      }

      v25 = (v24 + v21);
      v26 = (v23 + v21);
      v27 = 0xFFFFFFFFLL;
      while (1)
      {
        v28 = *(*(a2 + 48) + 4 * *v26);
        if (v28 == v27)
        {
          v28 = v27;
        }

        else if ((v27 & 0x80000000) == 0)
        {
          v22 = 0;
          if (++v20 == v15)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }

        ++v26;
        v27 = v28;
        if (v26 == v25)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_55:
    operations_research::MergingPartition::KeepOnlyOneNodePerPart(a1 + 58, v68);
    v54 = a1[52];
    v55 = a1[53];
    if (v54 != v55)
    {
      v56 = a1[46];
      v57 = a1[58];
      v58 = a1[52];
      v59 = a1[61];
      do
      {
        v60 = *v58++;
        *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v60);
        *(v57 + 4 * v60) = v60;
        *(v59 + 4 * v60) = 1;
      }

      while (v58 != v55);
    }

    a1[53] = v54;
    if (dword_2810BF8C0 >= 4 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled4(&off_2810BF8B8, dword_2810BF8C0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v73, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/algorithms/find_graph_symmetries.cc", 1032);
      v66 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v73, 4);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, "    Pruned: [", 0xDuLL);
      absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(v68->__begin_, v68->__end_, ", ", 2uLL, &v72);
      v67 = absl::lts_20240722::log_internal::LogMessage::operator<<(v66, &v72);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v67, "]", 1uLL);
      operations_research::sat::BruteForceOrthogonalPacking(&v72, v73);
    }
  }
}

void sub_23C9ABC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23C9ABC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a25);
  _Unwind_Resume(a1);
}

void sub_23C9ABCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

operations_research::GraphSymmetryFinder::Stats *operations_research::GraphSymmetryFinder::Stats::Stats(operations_research::GraphSymmetryFinder::Stats *this)
{
  *(this + 23) = 19;
  strcpy(this, "GraphSymmetryFinder");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "a Initialization", 0x10uLL, this);
  *(this + 10) = &unk_284F44CD0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  operations_research::DistributionStat::DistributionStat(this + 184, "b  ┗╸Refine", 0xFuLL, this);
  *(this + 23) = &unk_284F44CD0;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 33) = 0;
  operations_research::DistributionStat::DistributionStat(this + 288, "c Invariant Dive", 0x10uLL, this);
  *(this + 36) = &unk_284F44CD0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 46) = 0;
  operations_research::DistributionStat::DistributionStat(this + 392, "d Main Search", 0xDuLL, this);
  *(this + 49) = &unk_284F44CD0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 59) = 0;
  operations_research::DistributionStat::DistributionStat(this + 496, "e  ┣╸Dive unroll", 0x14uLL, this);
  *(this + 62) = &unk_284F44CD0;
  *(this + 72) = 0;
  *(this + 74) = 0;
  *(this + 73) = 0;
  operations_research::DistributionStat::DistributionStat(this + 600, "f  ┣╸Permutation output", 0x1BuLL, this);
  *(this + 75) = &unk_284F44CD0;
  *(this + 85) = 0;
  *(this + 87) = 0;
  *(this + 86) = 0;
  operations_research::DistributionStat::DistributionStat(this + 704, "g  ┗╸FindOneSuitablePermutation()", 0x25uLL, this);
  *(this + 88) = &unk_284F44CD0;
  *(this + 98) = 0;
  *(this + 100) = 0;
  *(this + 99) = 0;
  operations_research::DistributionStat::DistributionStat(this + 808, "h    ┣╸Fail", 0xFuLL, this);
  *(this + 101) = &unk_284F44CD0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 112) = 0;
  operations_research::DistributionStat::DistributionStat(this + 912, "i    ┣╸Success", 0x12uLL, this);
  *(this + 114) = &unk_284F44CD0;
  *(this + 124) = 0;
  *(this + 126) = 0;
  *(this + 125) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1016, "j    ┣╸Initial refine", 0x19uLL, this);
  *(this + 127) = &unk_284F44CD0;
  *(this + 137) = 0;
  *(this + 139) = 0;
  *(this + 138) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1120, "k    ┣╸Further refines", 0x1AuLL, this);
  *(this + 140) = &unk_284F44CD0;
  *(this + 150) = 0;
  *(this + 152) = 0;
  *(this + 151) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1224, "l    ┣╸Compatibility checks", 0x1FuLL, this);
  *(this + 153) = &unk_284F44CD0;
  *(this + 163) = 0;
  *(this + 165) = 0;
  *(this + 164) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1328, "m    ┃ ┣╸Fail", 0x13uLL, this);
  *(this + 166) = &unk_284F44CD0;
  *(this + 176) = 0;
  *(this + 178) = 0;
  *(this + 177) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1432, "n    ┃ ┗╸Success", 0x16uLL, this);
  *(this + 179) = &unk_284F44CD0;
  *(this + 189) = 0;
  *(this + 191) = 0;
  *(this + 190) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1536, "o    ┣╸Dynamic permutation refinement", 0x29uLL, this);
  *(this + 192) = &unk_284F44CD0;
  *(this + 202) = 0;
  *(this + 204) = 0;
  *(this + 203) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1640, "p    ┣╸Mapping election / full match detection", 0x32uLL, this);
  *(this + 205) = &unk_284F44CD0;
  *(this + 215) = 0;
  *(this + 217) = 0;
  *(this + 216) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1744, "q    ┃ ┣╸Mapping elected", 0x1EuLL, this);
  *(this + 218) = &unk_284F44CD0;
  *(this + 228) = 0;
  *(this + 230) = 0;
  *(this + 229) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1848, "r    ┃ ┗╸Full Match", 0x19uLL, this);
  *(this + 231) = &unk_284F44CD0;
  *(this + 241) = 0;
  *(this + 243) = 0;
  *(this + 242) = 0;
  operations_research::DistributionStat::DistributionStat(this + 1952, "s    ┣╸[Upon full match] Automorphism check", 0x2FuLL, this);
  *(this + 244) = &unk_284F44CD0;
  *(this + 254) = 0;
  *(this + 256) = 0;
  *(this + 255) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2056, "t    ┃ ┣╸Fail", 0x13uLL, this);
  *(this + 257) = &unk_284F44CD0;
  *(this + 267) = 0;
  *(this + 269) = 0;
  *(this + 268) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2160, "u    ┃ ┗╸Success", 0x16uLL, this);
  *(this + 270) = &unk_284F44CD0;
  *(this + 280) = 0;
  *(this + 282) = 0;
  *(this + 281) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2264, "v    ┣╸[Upon auto success] Finalization", 0x2BuLL, this);
  *(this + 283) = &unk_284F44CD0;
  *(this + 293) = 0;
  *(this + 295) = 0;
  *(this + 294) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2368, "w    ┣╸[Upon auto fail, full] Dynamic permutation undo", 0x3AuLL, this);
  *(this + 296) = &unk_284F44CD0;
  *(this + 306) = 0;
  *(this + 308) = 0;
  *(this + 307) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2472, "x    ┣╸[Upon auto fail, partial] Mapping re-election", 0x38uLL, this);
  *(this + 309) = &unk_284F44CD0;
  *(this + 319) = 0;
  *(this + 321) = 0;
  *(this + 320) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2576, "y    ┃ ┗╸Non-singleton search", 0x23uLL, this);
  *(this + 322) = &unk_284F44CD0;
  *(this + 332) = 0;
  *(this + 334) = 0;
  *(this + 333) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2680, "z    ┗╸Backtracking", 0x17uLL, this);
  *(this + 335) = &unk_284F44CD0;
  *(this + 345) = 0;
  *(this + 347) = 0;
  *(this + 346) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2784, "{      ┗╸Pruning", 0x14uLL, this);
  *(this + 348) = &unk_284F44CD0;
  *(this + 358) = 0;
  *(this + 360) = 0;
  *(this + 359) = 0;
  operations_research::DistributionStat::DistributionStat(this + 2888, "~ Search Stats: search_depth", 0x1CuLL, this);
  *(this + 361) = &unk_284F44DF0;
  return this;
}