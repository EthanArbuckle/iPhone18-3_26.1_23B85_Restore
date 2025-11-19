uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(uint64_t result)
{
  LODWORD(v1) = *(result + 8);
  if (*result)
  {
    v2 = *result + 7;
  }

  else
  {
    v2 = result;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  do
  {
    while (1)
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        break;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
      v2 += 8;
      if (!--v1)
      {
        goto LABEL_10;
      }
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    v2 += 8;
    --v1;
  }

  while (v1);
LABEL_10:
  *(result + 8) = 0;
  return result;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(int *a1)
{
  v2 = a1[2];
  if (*a1)
  {
    v3 = (*a1 + 7);
  }

  else
  {
    v3 = a1;
  }

  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  do
  {
    v5 = *v3;
    v3 += 2;
    result = (*(*v5 + 24))(v5);
    --v4;
  }

  while (v4);
  a1[2] = 0;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!result[2])
  {
    operator new();
  }

  v6 = *a2;
  v7 = *result;
  v8 = *(*result + 10);
  if (!*(*result + 10))
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 0;
  v10 = (v7 + 16);
  do
  {
    v11 = *v10;
    v10 += 8;
    if (v11 >= v6)
    {
      goto LABEL_9;
    }

    ++v9;
  }

  while (v8 != v9);
  LODWORD(v9) = v8;
LABEL_9:
  while (!*(v7 + 11))
  {
    v7 = *(v7 + 8 * v9 + 240);
    v8 = *(v7 + 10);
    if (*(v7 + 10))
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v9) = 0;
  }

  v12 = v9;
  v13 = v9;
  v14 = v7;
  while (v13 == *(v14 + 10))
  {
    v13 = *(v14 + 8);
    v14 = *v14;
    if (*(v14 + 11))
    {
      goto LABEL_17;
    }
  }

  if (v6 < SLODWORD(v14[4 * v13 + 2]))
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, v7, v12, a3);
    v14 = result;
    v15 = 1;
    v13 = v16;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = a2;
  v23 = a3;
  v6 = *(a2 + 11);
  if (*(a2 + 11))
  {
    if (*(a2 + 10) == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = *(a2 + 10);
    v10 = v9 - a3;
    if (v9 <= a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *(a2 + 8 * a3 + 240);
  for (i = a2; !*(a2 + 11); i = a2)
  {
    a2 = *(a2 + 8 * *(a2 + 10) + 240);
  }

  LOBYTE(a3) = *(a2 + 10);
  LODWORD(v23) = a3;
  v6 = *(a2 + 11);
  if (!*(a2 + 11))
  {
    v6 = 7;
  }

  if (*(a2 + 10) != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 6)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v23;
  v9 = *(i + 10);
  v10 = v9 - v23;
  if (v9 > v23)
  {
LABEL_13:
    if ((v10 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v11 = (v7 + 32 * v8 + 16 + 32 * v10);
      v12 = 32 * v8 - 32 * v9;
      do
      {
        v13 = *(v11 - 1);
        *v11 = *(v11 - 2);
        v11[1] = v13;
        v11 -= 2;
        v12 += 32;
      }

      while (v12);
      LODWORD(v9) = *(v7 + 10);
    }
  }

LABEL_17:
  v14 = v7 + 32 * v8;
  *(v14 + 16) = *a4;
  v15 = *(a4 + 8);
  *(v14 + 40) = *(a4 + 24);
  *(v14 + 24) = v15;
  v16 = v9 + 1;
  *(v7 + 10) = v16;
  if (!*(v7 + 11))
  {
    v17 = v8 + 1;
    if (v17 < v16)
    {
      v18 = v7 + 240;
      do
      {
        v19 = *(v18 + 8 * (v16 - 1));
        *(v18 + 8 * v16) = v19;
        *(v19 + 8) = v16;
      }

      while (v17 < --v16);
    }
  }

  ++a1[2];
  return i;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(void *a1, unsigned __int8 *a2)
{
  result = *a2;
  v5 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v6 = *(result + 8);
  if (*(result + 8))
  {
    v7 = *(v5 + 8 * (v6 - 1) + 240);
    v8 = *(v7 + 10);
    if (v8 <= 6)
    {
      v9 = a2[8];
      v10 = (7 - v8) >> (v9 < 7);
      v11 = v10 <= 1 ? 1 : v10;
      if (v9 >= v11 || (v11 + v8) <= 6u)
      {
        v13 = *(v7 + 8);
        v14 = *v7;
        v15 = &v7[4 * v8];
        v16 = *v7 + 32 * v13;
        v17 = *(v16 + 32);
        *(v15 + 1) = *(v16 + 16);
        *(v15 + 2) = v17;
        v18 = result + 2;
        v19 = (v11 - 1);
        v20 = &result[4 * v19 + 2];
        if (v11 != 1)
        {
          v21 = 32 * v8 + 48;
          v22 = 32 * v19;
          v23 = (result + 2);
          do
          {
            v24 = (v7 + v21);
            v25 = *v23;
            v26 = v23[1];
            v23 += 2;
            *v24 = v25;
            v24[1] = v26;
            v21 += 32;
            v22 -= 32;
          }

          while (v22);
          v14 = *v7;
          v13 = *(v7 + 8);
        }

        v27 = v14 + 32 * v13;
        v28 = *(v20 + 1);
        *(v27 + 16) = *v20;
        *(v27 + 32) = v28;
        v29 = *(result + 10);
        if (v29 != v11)
        {
          v30 = 32 * v29 - 32 * v11;
          do
          {
            v31 = v18[2 * v11 + 1];
            *v18 = v18[2 * v11];
            v18[1] = v31;
            v18 += 2;
            v30 -= 32;
          }

          while (v30);
        }

        if (!*(v7 + 11))
        {
          v32 = result + 30;
          v33 = result[30];
          v34 = v7 + 30;
          v35 = *(v7 + 10) + 1;
          v7[v35 + 30] = v33;
          *(v33 + 8) = v35;
          *v33 = v7;
          if (v10 > 1)
          {
            v36 = *(v7 + 10) + 2;
            v37 = result[31];
            v34[v36] = v37;
            *(v37 + 8) = v36;
            *v37 = v7;
            if (v10 != 2)
            {
              v38 = *(v7 + 10) + 3;
              v39 = result[32];
              v34[v38] = v39;
              *(v39 + 8) = v38;
              *v39 = v7;
              if (v10 != 3)
              {
                v40 = *(v7 + 10) + 4;
                v41 = result[33];
                v34[v40] = v41;
                *(v41 + 8) = v40;
                *v41 = v7;
                if (v10 != 4)
                {
                  v42 = *(v7 + 10) + 5;
                  v43 = result[34];
                  v34[v42] = v43;
                  *(v43 + 8) = v42;
                  *v43 = v7;
                  if (v10 != 5)
                  {
                    v44 = *(v7 + 10) + 6;
                    v45 = result[35];
                    v34[v44] = v45;
                    *(v45 + 8) = v44;
                    *v45 = v7;
                    if (v10 != 6)
                    {
                      v46 = *(v7 + 10) + 7;
                      v47 = result[36];
                      v34[v46] = v47;
                      *(v47 + 8) = v46;
                      *v47 = v7;
                    }
                  }
                }
              }
            }
          }

          if (*(result + 10) >= v11)
          {
            v48 = 0;
            do
            {
              v49 = v32[(v48 + v11)];
              v32[v48] = v49;
              *(v49 + 8) = v48;
              *v49 = result;
              ++v48;
            }

            while (*(result + 10) - v11 >= v48);
          }
        }

        *(v7 + 10) += v11;
        *(result + 10) -= v11;
        v50 = a2[8] - v11;
        *(a2 + 2) = v50;
        if (v50 >= 0)
        {
          return result;
        }

        v61 = v50 + *(v7 + 10) + 1;
LABEL_48:
        *(a2 + 2) = v61;
        *a2 = v7;
        return result;
      }
    }
  }

  v51 = *(v5 + 10);
  if (v6 >= v51 || (v7 = *(v5 + 8 * (v6 + 1) + 240), v52 = *(v7 + 10), v52 > 6) || ((v53 = *(a2 + 2), (7 - v52) >> (v53 > 0) <= 1u) ? (v54 = 1) : (v54 = (7 - v52) >> (v53 > 0)), (v55 = (v54 + v52), (*(result + 10) - v54) < v53) ? (v56 = v55 > 6) : (v56 = 0), v56))
  {
    if (v51 == 7)
    {
      v62 = v5;
      v63 = v6;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_or_split(a1, &v62);
      result = *a2;
      v59 = **a2;
    }

    v60 = *(result + 8) + 1;
    if (*(result + 11))
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(result, v54, *(v5 + 8 * (v6 + 1) + 240));
  v57 = *(a2 + 2);
  v58 = *(*a2 + 10);
  if (v57 > v58)
  {
    v61 = v57 + ~v58;
    goto LABEL_48;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (*(a3 + 10))
  {
    v4 = 32 * *(a3 + 10);
    do
    {
      v5 = (a3 - 16 + 32 * a2 + v4);
      v6 = *(a3 + v4);
      *v5 = *(a3 - 16 + v4);
      v5[1] = v6;
      v4 -= 32;
    }

    while (v4);
  }

  v7 = &v3[2 * a2 - 2];
  v8 = *result + 32 * *(result + 8);
  v9 = *(v8 + 32);
  *v7 = *(v8 + 16);
  v7[1] = v9;
  v10 = *(result + 10);
  if (a2 != 1)
  {
    v11 = -32 * a2;
    v12 = result + 32 * v10 + 48;
    do
    {
      v13 = *(v12 + v11 + 16);
      *v3 = *(v12 + v11);
      v3[1] = v13;
      v3 += 2;
      v11 += 32;
    }

    while (v11 != -32);
    LODWORD(v10) = *(result + 10);
  }

  v14 = *result + 32 * *(result + 8);
  v15 = (result + 16 + 32 * (v10 - a2));
  v16 = v15[1];
  *(v14 + 16) = *v15;
  *(v14 + 32) = v16;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v17 = a3 + 240;
      v18 = (*(a3 + 10) + 1);
      do
      {
        v19 = *(v17 + 8 * (v18 - 1));
        *(v17 + 8 * (v18 - 1 + a2)) = v19;
        *(v19 + 8) = v18 - 1 + a2;
        *v19 = a3;
        --v18;
      }

      while (v18);
    }

    if (a2)
    {
      v20 = 0;
      if ((a2 + 1) <= 2u)
      {
        v21 = 2;
      }

      else
      {
        v21 = (a2 + 1);
      }

      v22 = v21 - 1;
      do
      {
        v23 = *(result + 240 + 8 * (v20 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v20 + 240) = v23;
        *(v23 + 8) = v20;
        *v23 = a3;
        ++v20;
      }

      while (v22 != v20);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = result + 16;
  if (*(a3 + 10))
  {
    v6 = &v5[32 * v4];
    v7 = (a3 + 16);
    v8 = 32 * *(a3 + 10);
    do
    {
      v9 = *v6;
      v10 = *(v6 + 1);
      v6 += 32;
      *v7 = v9;
      v7[1] = v10;
      v7 += 2;
      v8 -= 32;
    }

    while (v8);
    v4 = result[10];
  }

  v11 = v4 - 1;
  result[10] = v4 - 1;
  v12 = *result;
  v13 = result[8];
  v14 = &v5[32 * v11];
  v15 = *(*result + 10);
  v16 = v15 - v13;
  if (v15 > v13 && (v16 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = (v12 + 32 * v13 + 16 + 32 * v16);
    v18 = 32 * v13 - 32 * v15;
    do
    {
      v19 = *(v17 - 1);
      *v17 = *(v17 - 2);
      v17[1] = v19;
      v17 -= 2;
      v18 += 32;
    }

    while (v18);
    LODWORD(v15) = *(v12 + 10);
  }

  v20 = v12 + 32 * v13;
  v21 = *(v14 + 1);
  *(v20 + 16) = *v14;
  *(v20 + 32) = v21;
  v22 = v15 + 1;
  *(v12 + 10) = v15 + 1;
  if (!*(v12 + 11))
  {
    v23 = v13 + 1;
    if (v23 < v22)
    {
      v24 = v12 + 240;
      do
      {
        v25 = *(v24 + 8 * (v22 - 1));
        *(v24 + 8 * v22) = v25;
        *(v25 + 8) = v22;
      }

      while (v23 < --v22);
    }
  }

  *(*result + 8 * (result[8] + 1) + 240) = a3;
  v27 = result[11];
  if (!result[11])
  {
    v28 = result[10];
    do
    {
      v29 = *&result[8 * ++v28 + 240];
      *(a3 + 240 + 8 * v27) = v29;
      *(v29 + 8) = v27;
      *v29 = a3;
      ++v27;
    }

    while (*(a3 + 10) >= v27);
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_hint_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (result[2])
  {
    v6 = result[1];
    v7 = *(v6 + 10);
    v8 = v6 == a2 && a3 == v7;
    if (v8 || (v9 = *a4, v10 = *(a2 + 32 * a3 + 16), *a4 < v10))
    {
      if (**result != a2 || a3 != 0)
      {
        if (*(a2 + 11))
        {
          if (a3 <= 0)
          {
            v18 = a2;
            while (1)
            {
              i = *v18;
              if (*(*v18 + 11))
              {
                break;
              }

              v12 = v18[8];
              v18 = *v18;
              if (v12)
              {
                goto LABEL_28;
              }
            }
          }

          v12 = a3;
          i = a2;
        }

        else
        {
            ;
          }

          v12 = *(i + 10);
        }

LABEL_28:
        if (*(i + (((v12 << 32) - 0x100000000) >> 27) + 16) >= *a4)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (v10 >= v9)
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        return result;
      }

      if (*(a2 + 11))
      {
        v14 = (a3 + 1);
        a3 = a3 & 0xFFFFFFFF00000000 | v14;
        if (v14 == *(a2 + 10))
        {
          v15 = a2;
          while (1)
          {
            v16 = *v15;
            if (*(*v15 + 11))
            {
              break;
            }

            v17 = v15[8];
            a3 = a3 & 0xFFFFFFFF00000000 | v17;
            v15 = *v15;
            if (v17 != *(v16 + 10))
            {
              goto LABEL_37;
            }
          }

          a3 = a3 & 0xFFFFFFFF00000000 | v14;
        }

        v16 = a2;
      }

      else
      {
        v19 = a2 + 8 * (a3 + 1) + 240;
        do
        {
          v16 = *v19;
          v20 = *(*v19 + 11);
          v19 = *v19 + 240;
        }

        while (!v20);
        a3 &= 0xFFFFFFFF00000000;
      }

LABEL_37:
      if ((v16 != v6 || a3 != v7) && v9 >= *(v16 + 32 * a3 + 16))
      {
        goto LABEL_29;
      }

      a2 = v16;
    }

    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::internal_emplace<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, a2, a3, a5);
    *a6 = result;
    *(a6 + 8) = v22;
    *(a6 + 16) = 1;
    return result;
  }

LABEL_29:

  return absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(result, a4, a5, a6);
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase_range(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a3;
  v7 = a2;
  v22 = a4;
  v23 = a5;
  v10 = absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>,std::pair<operations_research::Domain const,int>&,std::pair<operations_research::Domain const,int>*>::operator-(&v22, a2, a3);
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 16);
    if (v12 == v10)
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(a1);
      v13 = *(a1 + 8);
      v14 = *(v13 + 10);
      *a6 = v11;
      *(a6 + 8) = v13;
      *(a6 + 16) = v14;
      return;
    }

    if (v22 == v7)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(v7, v6, (v23 - v6));
      *(a1 + 16) -= v11;
      v20 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, v7, v6);
      *a6 = v11;
      *(a6 + 8) = v20;
      *(a6 + 16) = v21;
      return;
    }

    v15 = v12 - v10;
    if (v12 >= v10)
    {
      do
      {
        while (!v7[11])
        {
          v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase(a1, v7, v6);
          v6 = v6 & 0xFFFFFFFF00000000 | v16;
          v12 = *(a1 + 16);
          if (v12 <= v15)
          {
            goto LABEL_14;
          }
        }

        v17 = v12 - v15;
        if (v7[10] - v6 >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v7[10] - v6;
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(v7, v6, v18);
        *(a1 + 16) -= v18;
        v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, v7, v6);
        v6 = v6 & 0xFFFFFFFF00000000 | v19;
        v12 = *(a1 + 16);
      }

      while (v12 > v15);
    }

LABEL_14:
    *a6 = v11;
  }

  else
  {
    *a6 = 0;
  }

  *(a6 + 8) = v7;
  *(a6 + 16) = v6;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 10);
  v6 = (a3 + a2);
  if (v6 != v5)
  {
    v7 = (a1 + 16 + 32 * v6);
    v8 = (a1 + 16 + 32 * a2);
    v9 = 32 * v5 - 32 * v6;
    do
    {
      v10 = *v7;
      v11 = v7[1];
      v7 += 2;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 -= 32;
    }

    while (v9);
  }

  if (!*(a1 + 11))
  {
    v25 = a3 + a2;
    if (a3)
    {
      v12 = 0;
      v13 = a2 + 1;
      do
      {
        v14 = *(a1 + 240 + 8 * (v13 + v12));
        if (*(v14 + 11) || !*(v14 + 10))
        {
          operator delete(v14);
          goto LABEL_8;
        }

        v15 = *v14;
        do
        {
          v14 = v14[30];
        }

        while (!*(v14 + 11));
        v16 = *(v14 + 8);
        v17 = *v14;
        while (1)
        {
          v18 = *&v17[8 * v16 + 240];
          if (!v18[11])
          {
            break;
          }

          v19 = v17;
          operator delete(*&v17[8 * v16 + 240]);
          v17 = v19;
          if (v16 >= v19[10])
          {
            goto LABEL_20;
          }

LABEL_14:
          ++v16;
        }

        do
        {
          v18 = *(v18 + 30);
        }

        while (!v18[11]);
        v16 = v18[8];
        v20 = *v18;
        operator delete(v18);
        v17 = v20;
        if (v16 < v20[10])
        {
          goto LABEL_14;
        }

LABEL_20:
        while (1)
        {
          v16 = v17[8];
          v21 = *v17;
          operator delete(v17);
          if (v21 == v15)
          {
            break;
          }

          v17 = v21;
          if (v16 < v21[10])
          {
            goto LABEL_14;
          }
        }

LABEL_8:
        ++v12;
      }

      while (v12 != a3);
    }

    v22 = v25 + 1;
    if (v5 >= (v25 + 1))
    {
      v23 = a1 + 240;
      do
      {
        v24 = *(v23 + 8 * v22);
        *(v23 + 8 * (v22 - a3)) = v24;
        *(v24 + 8) = v22++ - a3;
      }

      while (v5 >= v22);
    }
  }

  *(a1 + 10) = v5 - a3;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v17 = a2;
  v18 = a3;
  if (*a1 == a2)
  {
    goto LABEL_8;
  }

  if (a2[10] > 2u)
  {
    goto LABEL_9;
  }

  v6 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(a1, &v17);
  v4 = v17;
  v3 = v3 & 0xFFFFFFFF00000000 | v18;
  if (!v6)
  {
    goto LABEL_9;
  }

  LODWORD(v18) = v17[8];
  v7 = *v17;
  v17 = v7;
  if (v7 == *a1)
  {
LABEL_8:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_shrink(a1);
    if (!a1[2])
    {
      result = a1[1];
      v14 = result[10];
      return result;
    }
  }

  else
  {
    while (v7[10] <= 2u && absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(a1, &v17))
    {
      LODWORD(v18) = v17[8];
      v7 = *v17;
      v17 = v7;
      if (v7 == *a1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v8 = v4[10];
  if (v3 != v8)
  {
    return v4;
  }

  v9 = v3 & 0xFFFFFFFF00000000;
  if (v4[11])
  {
    v10 = v9 | v8;
    v11 = v4;
    while (1)
    {
      result = *v11;
      if (*(*v11 + 11))
      {
        break;
      }

      v13 = v11[8];
      v10 = v10 & 0xFFFFFFFF00000000 | v13;
      v11 = *v11;
      if (v13 != result[10])
      {
        return result;
      }
    }

    return v4;
  }

  v15 = &v4[8 * v8 + 240];
  do
  {
    result = *v15;
    v16 = *(*v15 + 11);
    v15 = *v15 + 240;
  }

  while (!v16);
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::erase(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a2[11];
  if (a2[11])
  {
    v4 = a2[10];
    if (v4 != (a3 + 1))
    {
      v5 = (32 * a3) | 0x10;
      v6 = 32 * (v4 - (a3 + 1));
      v7 = (32 * (a3 + 1)) | 0x10;
      do
      {
        v8 = &a2[v5];
        v9 = *&a2[v7 + 16];
        *v8 = *&a2[v7];
        *(v8 + 1) = v9;
        v5 += 32;
        v7 += 32;
        v6 -= 32;
      }

      while (v6);
    }

    i = a2;
  }

  else
  {
      ;
    }

    v11 = a3 << 32;
    a3 = a3 & 0xFFFFFFFF00000000 | (i[10] - 1);
    v12 = &i[(i[10] + 0xFFFFFFFFLL) << 32 >> 27];
    v13 = *(v12 + 1);
    v14 = *(v12 + 2);
    v15 = &a2[v11 >> 27];
    *(v15 + 1) = v13;
    *(v15 + 2) = v14;
  }

  --i[10];
  --*(a1 + 16);
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_after_delete(a1, i, a3);
  if (!v3)
  {
    if (result[11])
    {
      if (v17 + 1 == result[10])
      {
        v18 = result;
        while (1)
        {
          v19 = *v18;
          if (*(*v18 + 11))
          {
            break;
          }

          v20 = v18[8];
          v18 = *v18;
          if (v20 != *(v19 + 10))
          {
            return v19;
          }
        }
      }
    }

    else
    {
      v21 = &result[8 * (v17 + 1) + 240];
      do
      {
        v22 = *v21;
        v23 = *(*v21 + 11);
        v21 = *v21 + 240;
      }

      while (!v23);
      return v22;
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_shrink(uint64_t a1)
{
  v2 = *a1;
  if (*(v2 + 10))
  {
    return;
  }

  if (!*(v2 + 11))
  {
    v3 = v2[30];
    *v3 = **v3;
    *a1 = v3;
    if (!*(v2 + 11))
    {
      goto LABEL_7;
    }

LABEL_11:

    operator delete(v2);
    return;
  }

  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::EmptyNode(void)::empty_node;
  if (*(v2 + 11))
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!*(v2 + 10))
  {
    goto LABEL_11;
  }

  v4 = *v2;
  do
  {
    v2 = v2[30];
  }

  while (!*(v2 + 11));
  v5 = *(v2 + 8);
  v6 = *v2;
  while (1)
  {
    v7 = *&v6[8 * v5 + 240];
    if (!v7[11])
    {
      break;
    }

    v8 = v6;
    operator delete(*&v6[8 * v5 + 240]);
    v6 = v8;
    if (v5 >= v8[10])
    {
      goto LABEL_20;
    }

LABEL_14:
    ++v5;
  }

  do
  {
    v7 = *(v7 + 30);
  }

  while (!v7[11]);
  v5 = v7[8];
  v9 = *v7;
  operator delete(v7);
  v6 = v9;
  if (v5 < v9[10])
  {
    goto LABEL_14;
  }

LABEL_20:
  while (1)
  {
    v5 = v6[8];
    v10 = *v6;
    operator delete(v6);
    if (v10 == v4)
    {
      break;
    }

    v6 = v10;
    if (v5 < v10[10])
    {
      goto LABEL_14;
    }
  }
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::try_merge_or_rebalance(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 8);
  if (*(*a2 + 8))
  {
    v7 = *(v5 + 8 * (v6 - 1) + 240);
    v8 = *(v7 + 10) + 1;
    if (v8 + *(v4 + 10) <= 7)
    {
      *(a2 + 8) += v8;
      v22 = *(v7 + 10);
      v23 = *v7 + 32 * *(v7 + 8);
      v24 = (v7 + 32 * v22);
      v25 = *(v23 + 32);
      v24[1] = *(v23 + 16);
      v24[2] = v25;
      if (*(v4 + 10))
      {
        v26 = (v4 + 2);
        v27 = v24 + 3;
        v28 = 32 * *(v4 + 10);
        do
        {
          v29 = *v26;
          v30 = v26[1];
          v26 += 2;
          *v27 = v29;
          v27[1] = v30;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        LODWORD(v22) = *(v7 + 10);
        v31 = *(v7 + 11);
        if (*(v7 + 11))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v31 = *(v7 + 11);
        if (*(v7 + 11))
        {
LABEL_15:
          LOBYTE(v32) = *(v4 + 10);
LABEL_51:
          *(v7 + 10) = v32 + v22 + 1;
          *(v4 + 10) = 0;
          absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(*v7, *(v7 + 8), 1);
          if (*(a1 + 8) == v4)
          {
            *(a1 + 8) = v7;
          }

          *a2 = v7;
          return 1;
        }
      }

      do
      {
        LODWORD(v22) = v22 + 1;
        v68 = v4[v31 + 30];
        *(v7 + 240 + 8 * v22) = v68;
        *(v68 + 8) = v22;
        *v68 = v7;
        ++v31;
        v32 = *(v4 + 10);
      }

      while (v32 >= v31);
      LOBYTE(v22) = *(v7 + 10);
      goto LABEL_51;
    }
  }

  if (v6 >= *(v5 + 10))
  {
    goto LABEL_42;
  }

  v9 = *(v5 + 8 * (v6 + 1) + 240);
  v10 = *(v4 + 10);
  v11 = *(v9 + 10);
  if (v10 + v11 + 1 <= 7)
  {
    v12 = v5 + 32 * v6;
    v13 = &v4[4 * v10];
    v14 = *(v12 + 32);
    *(v13 + 1) = *(v12 + 16);
    *(v13 + 2) = v14;
    if (*(v9 + 10))
    {
      v15 = (v9 + 16);
      v16 = v13 + 6;
      v17 = 32 * *(v9 + 10);
      do
      {
        v18 = *v15;
        v19 = v15[1];
        v15 += 2;
        *v16 = v18;
        v16[1] = v19;
        v16 += 2;
        v17 -= 32;
      }

      while (v17);
      LODWORD(v10) = *(v4 + 10);
    }

    v20 = *(v4 + 11);
    if (*(v4 + 11))
    {
      LOBYTE(v21) = *(v9 + 10);
    }

    else
    {
      do
      {
        LODWORD(v10) = v10 + 1;
        v69 = *(v9 + 240 + 8 * v20);
        v4[v10 + 30] = v69;
        *(v69 + 8) = v10;
        *v69 = v4;
        ++v20;
        v21 = *(v9 + 10);
      }

      while (v21 >= v20);
      LOBYTE(v10) = *(v4 + 10);
    }

    *(v4 + 10) = v21 + v10 + 1;
    *(v9 + 10) = 0;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::remove_values(*v4, *(v4 + 8), 1);
    result = 1;
    if (*(a1 + 8) == v9)
    {
      *(a1 + 8) = v4;
    }

    return result;
  }

  if (v11 < 4 || *(v4 + 10) && *(a2 + 8) < 1)
  {
LABEL_42:
    if (!*(*a2 + 8))
    {
      return 0;
    }

    v62 = *(v5 + 8 * (v6 - 1) + 240);
    v63 = *(v62 + 10);
    if (v63 < 4)
    {
      return 0;
    }

    v64 = *(v4 + 10);
    if (*(v4 + 10))
    {
      if (*(a2 + 8) >= v64)
      {
        return 0;
      }
    }

    v65 = ((v63 - v64 + (((v63 - v64) & 0x8000) >> 15)) >> 1);
    v66 = (v63 - 1);
    if (v66 >= v65)
    {
      v67 = v65;
    }

    else
    {
      v67 = v66;
    }

    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::rebalance_left_to_right(v62, v67, v4);
    result = 0;
    *(a2 + 8) += v67;
    return result;
  }

  v33 = (v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1;
  v34 = v11 - 1;
  LODWORD(v35) = (v11 - 1);
  if (v35 >= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v35;
  }

  v36 = &v4[4 * v10];
  v37 = v5 + 32 * v6;
  v38 = *(v37 + 32);
  *(v36 + 1) = *(v37 + 16);
  *(v36 + 2) = v38;
  v39 = (v9 + 16);
  v40 = (v9 + 16 + 32 * (v35 - 1));
  if (v35 != 1)
  {
    v41 = 32 * v10 + 48;
    v42 = v34;
    if (v34 >= v33)
    {
      v42 = v33;
    }

    v43 = 32 * v42 - 32;
    v44 = (v9 + 16);
    do
    {
      v45 = (v4 + v41);
      v46 = *v44;
      v47 = v44[1];
      v44 += 2;
      *v45 = v46;
      v45[1] = v47;
      v41 += 32;
      v43 -= 32;
    }

    while (v43);
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  v48 = v5 + 32 * v6;
  v49 = v40[1];
  *(v48 + 16) = *v40;
  *(v48 + 32) = v49;
  v50 = *(v9 + 10);
  if (v50 != v35)
  {
    v51 = 32 * v50 - 32 * v35;
    do
    {
      v52 = v39[2 * v35 + 1];
      *v39 = v39[2 * v35];
      v39[1] = v52;
      v39 += 2;
      v51 -= 32;
    }

    while (v51);
  }

  if (!*(v4 + 11))
  {
    if (v35)
    {
      v53 = (v9 + 240);
      v54 = 1;
      v55 = v35;
      do
      {
        v56 = *(v4 + 10) + v54;
        v57 = *v53++;
        v4[v56 + 30] = v57;
        *(v57 + 8) = v56;
        *v57 = v4;
        ++v54;
        --v55;
      }

      while (v55);
    }

    if (*(v9 + 10) >= v35)
    {
      v58 = 0;
      v59 = v9 + 240;
      do
      {
        v60 = *(v59 + 8 * (v58 + v35));
        *(v59 + 8 * v58) = v60;
        *(v60 + 8) = v58;
        *v60 = v9;
        ++v58;
      }

      while (*(v9 + 10) - v35 >= v58);
    }
  }

  result = 0;
  *(v4 + 10) += v35;
  *(v9 + 10) -= v35;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t **a2)
{
  result = **a2;
  v3 = *(a2[1] + 10);
  return result;
}

BOOL google::protobuf::internal::ValidateEnum(google::protobuf::internal *this, unsigned int *a2, const unsigned int *a3)
{
  v3 = *a2;
  v4 = v3 >> 16;
  v5 = this - v3;
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    return 1;
  }

  v9 = a2[1];
  if (v7 < v9)
  {
    return (a2[(v7 >> 5) + 2] >> v7) & 1;
  }

  v10 = 0;
  v11 = v9 >> 16;
  v12 = &a2[(v9 >> 5) + 2];
  do
  {
    v13 = v10 < v11;
    if (v10 >= v11)
    {
      break;
    }

    v14 = *(v12 + 4 * v10);
    v13 = 1;
    v15 = v14 == this;
    v16 = v14 > this ? 1 : 2;
    v10 = v16 + 2 * v10;
  }

  while (!v15);
  return v13;
}

unsigned __int16 *google::protobuf::internal::TcParser::ParseLoop(uint64_t a1, unsigned __int16 *done, google::protobuf::internal::EpsCopyInputStream *this, uint64_t a4)
{
  v7 = a4 + 48;
  while (done < *this)
  {
LABEL_3:
    v8 = *done;
    v9 = v7 + 2 * (v8 & *(v7 - 40));
    done = (*v9)(a1, done, this, *(v9 + 8) ^ v8, v7 - 48, 0);
    if (!done || *(this + 20))
    {
      return done;
    }
  }

  v10 = (done - *(this + 2));
  if (*(this + 7) != v10)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v10, *(this + 23));
    if (v11)
    {
      return done;
    }

    goto LABEL_3;
  }

  if (v10 >= 1 && !*(this + 2))
  {
    return 0;
  }

  return done;
}

uint64_t google::protobuf::internal::TcParser::Error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6)
{
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return 0;
}

uint64_t google::protobuf::internal::TcParser::MiniParse(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x8_t a7)
{
  v9 = *a2;
  v8 = (a2 + 1);
  v10 = v9;
  if ((v9 & 0x80000000) == 0)
  {
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 <= 0x1F)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = (*(a5 + 10) + a5);
    v19 = *v18;
    if (*v18 <= v11)
    {
      while (1)
      {
        v20 = v18 + 6;
        v21 = *(v18 + 2);
        v22 = v11 - v19;
        v23 = (v11 - v19) >> 4;
        if (v23 < v21)
        {
          break;
        }

        v18 = (v20 + 4 * v21);
        v19 = *v18;
        if (*v18 > v11)
        {
          return (*(a5 + 40))();
        }
      }

      v24 = (v20 + 4 * v23);
      v25 = *v24;
      v26 = 1 << (v22 & 0xF);
      if ((v26 & v25) == 0)
      {
        a7.i32[0] = (v26 - 1) & v25;
        v27 = vcnt_s8(a7);
        v27.i16[0] = vaddlv_u8(v27);
        v16 = (v22 & 0xF) - v27.i32[0] + v24[1];
        return (*(&google::protobuf::internal::TcParser::MiniParse<false>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::kMiniParseTable + (*(v12 + a5 + 12 * v16 + 10) & 0xF)))(a1, v8, a3, v10 | ((v12 + 12 * v16) << 32));
      }
    }

    return (*(a5 + 40))();
  }

  v10 = *v8 | (v10 << 57);
  if ((*v8 & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 57);
    v8 = (a2 + 2);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

LABEL_3:
    v14 = *(a5 + 12);
    if ((v14 & (1 << v13)) == 0)
    {
      a7.i32[0] = v14 & ((1 << v13) - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v13 - v15.i32[0];
      return (*(&google::protobuf::internal::TcParser::MiniParse<false>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::kMiniParseTable + (*(v12 + a5 + 12 * v16 + 10) & 0xF)))(a1, v8, a3, v10 | ((v12 + 12 * v16) << 32));
    }

    return (*(a5 + 40))();
  }

  v10 = __ROR8__(v10, 7) & 0xFFFC000000000000 | a2[2];
  if ((a2[2] & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 50);
    v8 = (a2 + 3);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v10 = __ROR8__(v10, 7) & 0xFFFFF80000000000 | a2[3];
  if ((a2[3] & 0x80000000) == 0)
  {
    LODWORD(v10) = __ROR8__(v10, 43);
    v8 = (a2 + 4);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v28 = a2[4];
  if ((v28 & 0x8000000000000000) == 0)
  {
    LODWORD(v10) = __ROR8__(__ROR8__(v10, 7) & 0xFFFFFFF000000000 | v28, 36);
    v8 = (a2 + 5);
    v11 = v10 >> 3;
    v12 = *(a5 + 16);
    v13 = (v10 >> 3) - 1;
    if (v13 > 0x1F)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  return google::protobuf::internal::TcParser::Error(a1, v8, a3, a4, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::FastEndG1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a3 + 80) = WORD1(a4) - 1;
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return (a2 + 1);
}

uint64_t google::protobuf::internal::TcParser::FastEndG2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a3 + 80) = WORD1(a4) - 1;
  if (*a5)
  {
    *(a1 + *a5) |= a6;
  }

  return (a2 + 2);
}

uint64_t google::protobuf::internal::TcParser::FastMdS1(uint64_t a1, uint64_t a2, google::protobuf::internal::ParseContext *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v8 = HIWORD(a4);
    v9 = *(a1 + HIWORD(a4));
    if (!v9)
    {
      v10 = *(a1 + 8);
      v12 = a2;
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v10);
      *(a1 + v8) = v9;
      a2 = v12;
    }

    return google::protobuf::internal::ParseContext::ParseMessage(this, v9, (a2 + 1));
  }
}

uint64_t google::protobuf::internal::TcParser::FastMdS2(uint64_t a1, uint64_t a2, google::protobuf::internal::ParseContext *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v8 = HIWORD(a4);
    v9 = *(a1 + HIWORD(a4));
    if (!v9)
    {
      v10 = *(a1 + 8);
      v12 = a2;
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v10);
      *(a1 + v8) = v9;
      a2 = v12;
    }

    return google::protobuf::internal::ParseContext::ParseMessage(this, v9, (a2 + 2));
  }
}

uint64_t google::protobuf::internal::TcParser::FastGdS1(uint64_t a1, unsigned __int8 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v8 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v9 = HIWORD(a4);
    v10 = *(a1 + HIWORD(a4));
    if (v10)
    {
      v11 = a3[11].i32[0];
      v12 = __OFSUB__(v11--, 1);
      a3[11].i32[0] = v11;
      if (v11 < 0 == v12)
      {
LABEL_6:
        ++a3[11].i32[1];
        result = (*(*v10 + 56))(v10, a2 + 1, a3);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v14 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v14 != v8)
        {
          return 0;
        }

        return result;
      }
    }

    else
    {
      v15 = *(a1 + 8);
      v17 = a2;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v15);
      *(a1 + v9) = v10;
      a2 = v17;
      v18 = a3[11].i32[0];
      v12 = __OFSUB__(v18--, 1);
      a3[11].i32[0] = v18;
      if (v18 < 0 == v12)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastGdS2(uint64_t a1, unsigned __int8 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v8 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
    }

    v9 = HIWORD(a4);
    v10 = *(a1 + HIWORD(a4));
    if (v10)
    {
      v11 = a3[11].i32[0];
      v12 = __OFSUB__(v11--, 1);
      a3[11].i32[0] = v11;
      if (v11 < 0 == v12)
      {
LABEL_6:
        ++a3[11].i32[1];
        result = (*(*v10 + 56))(v10, a2 + 2, a3);
        a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
        v14 = a3[10].i32[0];
        a3[10].i32[0] = 0;
        if (v14 != (v8 + v8) >> 1)
        {
          return 0;
        }

        return result;
      }
    }

    else
    {
      v15 = *(a1 + 8);
      v17 = a2;
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = (*(**(&a5[4 * BYTE3(a4)] + *(a5 + 6)) + 16))(*(&a5[4 * BYTE3(a4)] + *(a5 + 6)), v15);
      *(a1 + v9) = v10;
      a2 = v17;
      v18 = a3[11].i32[0];
      v12 = __OFSUB__(v18--, 1);
      a3[11].i32[0] = v18;
      if (v18 < 0 == v12)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastMtS1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  if (*(a1 + HIWORD(a4)))
  {
    v11 = (a2 + 1);
    v12 = a2[1];
    if ((a2[1] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    google::protobuf::internal::ReadSizeFallback(v11, v12);
    done = v20;
    if (!v20)
    {
      return done;
    }

    LODWORD(v12) = v19;
    v21 = *(this + 22);
    v15 = __OFSUB__(v21, 1);
    v16 = v21 - 1;
    if (v16 < 0 != v15)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v17 = *(a1 + 8);
  v18 = a2;
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + v9) = (*(**(v10 + 32) + 16))(*(v10 + 32), v17);
  a2 = v18;
  v11 = (v18 + 1);
  v12 = v18[1];
  if (v18[1] < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  done = (a2 + 2);
  v14 = *(this + 22);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 != v15)
  {
    return 0;
  }

LABEL_14:
  v22 = *(this + 1);
  v23 = v12 + done - v22;
  *this = v22 + (v23 & (v23 >> 31));
  LODWORD(v22) = *(this + 7);
  *(this + 7) = v23;
  v24 = v22 - v23;
  *(this + 22) = v16;
  v25 = *(a1 + v9);
  while (done < *this)
  {
LABEL_16:
    v26 = *done;
    v27 = v10 + 48 + 2 * (v26 & *(v10 + 8));
    done = (*v27)(v25, done, this, *(v27 + 8) ^ v26, v10, 0);
    if (!done || *(this + 20))
    {
LABEL_21:
      LODWORD(v28) = *(this + 7);
      goto LABEL_22;
    }
  }

  v28 = (done - *(this + 2));
  if (*(this + 7) != v28)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v28, *(this + 23));
    if (v29)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v28 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_22:
  ++*(this + 22);
  *(this + 7) = v28 + v24;
  if (*(this + 20))
  {
    return 0;
  }

  *this = *(this + 1) + ((v28 + v24) & ((v28 + v24) >> 31));
  return done;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastMtS2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  if (*(a1 + HIWORD(a4)))
  {
    v11 = (a2 + 2);
    v12 = a2[2];
    if ((a2[2] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    google::protobuf::internal::ReadSizeFallback(v11, v12);
    done = v20;
    if (!v20)
    {
      return done;
    }

    LODWORD(v12) = v19;
    v21 = *(this + 22);
    v15 = __OFSUB__(v21, 1);
    v16 = v21 - 1;
    if (v16 < 0 != v15)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v17 = *(a1 + 8);
  v18 = a2;
  if (v17)
  {
    v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + v9) = (*(**(v10 + 32) + 16))(*(v10 + 32), v17);
  a2 = v18;
  v11 = (v18 + 2);
  v12 = v18[2];
  if (v18[2] < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  done = (a2 + 3);
  v14 = *(this + 22);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 != v15)
  {
    return 0;
  }

LABEL_14:
  v22 = *(this + 1);
  v23 = v12 + done - v22;
  *this = v22 + (v23 & (v23 >> 31));
  LODWORD(v22) = *(this + 7);
  *(this + 7) = v23;
  v24 = v22 - v23;
  *(this + 22) = v16;
  v25 = *(a1 + v9);
  while (done < *this)
  {
LABEL_16:
    v26 = *done;
    v27 = v10 + 48 + 2 * (v26 & *(v10 + 8));
    done = (*v27)(v25, done, this, *(v27 + 8) ^ v26, v10, 0);
    if (!done || *(this + 20))
    {
LABEL_21:
      LODWORD(v28) = *(this + 7);
      goto LABEL_22;
    }
  }

  v28 = (done - *(this + 2));
  if (*(this + 7) != v28)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v28, *(this + 23));
    if (v29)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v28 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_22:
  ++*(this + 22);
  *(this + 7) = v28 + v24;
  if (*(this + 20))
  {
    return 0;
  }

  *this = *(this + 1) + ((v28 + v24) & ((v28 + v24) >> 31));
  return done;
}

unsigned __int16 *google::protobuf::internal::TcParser::FastGtS1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  v8 = *a2;
  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v11 = *(a1 + HIWORD(a4));
  if (!v11)
  {
    v23 = *(a1 + 8);
    v25 = a2;
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = (*(**(v10 + 32) + 16))(*(v10 + 32), v23);
    *(a1 + v9) = v11;
    a2 = v25;
    v26 = *(this + 22);
    v13 = __OFSUB__(v26--, 1);
    *(this + 22) = v26;
    if (v26 < 0 == v13)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

LABEL_6:
  done = (a2 + 1);
  ++*(this + 23);
  v15 = v10 + 48;
  while (done < *this)
  {
LABEL_8:
    v16 = *done;
    v17 = v15 + 2 * (v16 & *(v15 - 40));
    done = (*v17)(v11, done, this, *(v17 + 8) ^ v16, v15 - 48, 0);
    if (!done || *(this + 20))
    {
LABEL_13:
      v18 = *(this + 23);
      goto LABEL_14;
    }
  }

  v18 = *(this + 23);
  v19 = (done - *(this + 2));
  if (*(this + 7) != v19)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v19, v18);
    if (v20)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v19 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_14:
  ++*(this + 22);
  *(this + 23) = v18 - 1;
  v21 = *(this + 20);
  *(this + 20) = 0;
  if (v21 == v8)
  {
    return done;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastGtS2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
  }

  v8 = *a2;
  if (*a5)
  {
    *(a1 + *a5) |= (1 << SBYTE2(a4)) | a6;
  }

  v9 = HIWORD(a4);
  v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v11 = *(a1 + HIWORD(a4));
  if (!v11)
  {
    v24 = *(a1 + 8);
    v26 = a2;
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = (*(**(v10 + 32) + 16))(*(v10 + 32), v24);
    *(a1 + v9) = v11;
    a2 = v26;
    v27 = *(this + 22);
    v13 = __OFSUB__(v27--, 1);
    *(this + 22) = v27;
    if (v27 < 0 == v13)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

LABEL_6:
  v14 = (v8 + v8) >> 1;
  done = (a2 + 2);
  ++*(this + 23);
  v16 = v10 + 48;
  while (done < *this)
  {
LABEL_8:
    v17 = *done;
    v18 = v16 + 2 * (v17 & *(v16 - 40));
    done = (*v18)(v11, done, this, *(v18 + 8) ^ v17, v16 - 48, 0);
    if (!done || *(this + 20))
    {
LABEL_13:
      v19 = *(this + 23);
      goto LABEL_14;
    }
  }

  v19 = *(this + 23);
  v20 = (done - *(this + 2));
  if (*(this + 7) != v20)
  {
    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v20, v19);
    if (v21)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v20 >= 1 && !*(this + 2))
  {
    done = 0;
  }

LABEL_14:
  ++*(this + 22);
  *(this + 23) = v19 - 1;
  v22 = *(this + 20);
  *(this + 20) = 0;
  if (v22 == v14)
  {
    return done;
  }

  else
  {
    return 0;
  }
}

void google::protobuf::internal::TcParser::FastMlS1()
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v0, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_lite.cc", 457);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v0, "Unimplemented");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v0);
}

void google::protobuf::internal::TcParser::FastMlS2()
{
  absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v0, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/generated_message_tctable_lite.cc", 457);
  absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v0, "Unimplemented");
  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v0);
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMdR1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::ParseContext *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v15, v10 + 1);
      if (!result)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      if (*result != v12)
      {
        v20 = *result;
        v21 = &a5[(v20 & a5[4])];
        v22 = *(v21 + 6);
        v23 = *(v21 + 7) ^ v20;

        return v22(a1, result, a3, v23, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastMdR2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::ParseContext *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      result = google::protobuf::internal::ParseContext::ParseMessage(a3, v15, v10 + 2);
      if (!result)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      v20 = *result;
      if (v20 != v12)
      {
        v21 = &a5[(v20 & a5[4])];
        v22 = *(v21 + 6);
        v23 = *(v21 + 7) ^ v20;

        return v22(a1, result, a3, v23, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGdR1(uint64_t a1, unsigned __int8 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v13);
      v19 = a3[11].i32[0];
      v20 = __OFSUB__(v19, 1);
      a3[11].i32[0] = --v19;
      if (v19 < 0 != v20)
      {
        break;
      }

      ++a3[11].i32[1];
      result = (*(*v15 + 56))(v15, v10 + 1, a3);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v22 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v22 != v12 || result == 0)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      if (*result != v12)
      {
        v24 = *result;
        v25 = &a5[(v24 & a5[4])];
        v26 = *(v25 + 6);
        v27 = *(v25 + 7) ^ v24;

        return v26(a1, result, a3, v27, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
  }
}

unsigned __int8 *google::protobuf::internal::TcParser::FastGdR2(uint64_t a1, unsigned __int8 *a2, int32x2_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v13 = *a2;
    v14 = (a1 + HIWORD(a4));
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v14, v12);
      v19 = a3[11].i32[0];
      v20 = __OFSUB__(v19, 1);
      a3[11].i32[0] = --v19;
      if (v19 < 0 != v20)
      {
        break;
      }

      ++a3[11].i32[1];
      result = (*(*v15 + 56))(v15, v10 + 2, a3);
      a3[11] = vadd_s32(a3[11], 0xFFFFFFFF00000001);
      v22 = a3[10].i32[0];
      a3[10].i32[0] = 0;
      if (v22 != (v13 + v13) >> 1 || result == 0)
      {
        break;
      }

      v10 = result;
      if (*a3 <= result)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }

      v24 = *result;
      if (v24 != v13)
      {
        v25 = &a5[(v24 & a5[4])];
        v26 = *(v25 + 6);
        v27 = *(v25 + 7) ^ v24;

        return v26(a1, result, a3, v27, a5, a6);
      }
    }

    return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
  }
}

uint64_t google::protobuf::internal::TcParser::FastMtR1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = *a2;
  v11 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v12 = (a1 + HIWORD(a4));
  v13 = *(v11 + 32);
  v14 = v11 + 48;
  while (2)
  {
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
    v18 = *(done + 1);
    if ((v18 & 0x80) != 0)
    {
      google::protobuf::internal::ReadSizeFallback((done + 1), v18);
      if (!v22)
      {
        break;
      }

      done = v22;
      v23 = *(a3 + 88);
      v20 = __OFSUB__(v23, 1);
      v21 = v23 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    else
    {
      ++done;
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    v24 = *(a3 + 8);
    v25 = v18 + done - v24;
    *a3 = v24 + (v25 & (v25 >> 31));
    LODWORD(v24) = *(a3 + 28);
    *(a3 + 28) = v25;
    v26 = v24 - v25;
    *(a3 + 88) = v21;
    while (done < *a3)
    {
LABEL_11:
      v27 = *done;
      v28 = v14 + 2 * (v27 & *(v14 - 40));
      done = (*v28)(v17, done, a3, *(v28 + 8) ^ v27, v14 - 48, 0);
      if (!done || *(a3 + 80))
      {
LABEL_16:
        v18 = *(a3 + 28);
        goto LABEL_17;
      }
    }

    v18 = (done - *(a3 + 8));
    if (*(a3 + 28) != v18)
    {
      done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v18, *(a3 + 92));
      if (v29)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v18 >= 1 && !*(a3 + 16))
    {
      done = 0;
    }

LABEL_17:
    ++*(a3 + 88);
    *(a3 + 28) = v18 + v26;
    if (!*(a3 + 80))
    {
      v30 = *(a3 + 8) + ((v18 + v26) & ((v18 + v26) >> 31));
      *a3 = v30;
      if (done)
      {
        if (v30 <= done)
        {
          if (*a5)
          {
            *(a1 + *a5) |= a6;
          }

          return done;
        }

        if (*done != v10)
        {
          v32 = *done;
          v33 = &a5[(v32 & a5[4])];
          v34 = *(v33 + 6);
          v35 = *(v33 + 7) ^ v32;

          return v34(a1, done, a3, v35, a5, a6);
        }

        continue;
      }
    }

    break;
  }

  return google::protobuf::internal::TcParser::Error(a1, v18, v15, v16, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::FastMtR2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v10 = *a2;
  v11 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
  v12 = (a1 + HIWORD(a4));
  v13 = *(v11 + 32);
  v14 = v11 + 48;
  while (2)
  {
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
    v18 = *(done + 2);
    if ((v18 & 0x80) != 0)
    {
      google::protobuf::internal::ReadSizeFallback((done + 1), v18);
      if (!v22)
      {
        break;
      }

      done = v22;
      v23 = *(a3 + 88);
      v20 = __OFSUB__(v23, 1);
      v21 = v23 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    else
    {
      done = (done + 3);
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v21 < 0 != v20)
      {
        break;
      }
    }

    v24 = *(a3 + 8);
    v25 = v18 + done - v24;
    *a3 = v24 + (v25 & (v25 >> 31));
    LODWORD(v24) = *(a3 + 28);
    *(a3 + 28) = v25;
    v26 = v24 - v25;
    *(a3 + 88) = v21;
    while (done < *a3)
    {
LABEL_11:
      v27 = *done;
      v28 = v14 + 2 * (v27 & *(v14 - 40));
      done = (*v28)(v17, done, a3, *(v28 + 8) ^ v27, v14 - 48, 0);
      if (!done || *(a3 + 80))
      {
LABEL_16:
        v18 = *(a3 + 28);
        goto LABEL_17;
      }
    }

    v18 = (done - *(a3 + 8));
    if (*(a3 + 28) != v18)
    {
      done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v18, *(a3 + 92));
      if (v29)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v18 >= 1 && !*(a3 + 16))
    {
      done = 0;
    }

LABEL_17:
    ++*(a3 + 88);
    *(a3 + 28) = v18 + v26;
    if (!*(a3 + 80))
    {
      v30 = *(a3 + 8) + ((v18 + v26) & ((v18 + v26) >> 31));
      *a3 = v30;
      if (done)
      {
        if (v30 <= done)
        {
          if (*a5)
          {
            *(a1 + *a5) |= a6;
          }

          return done;
        }

        v31 = *done;
        if (v31 != v10)
        {
          v33 = &a5[(v31 & a5[4])];
          v34 = *(v33 + 6);
          v35 = *(v33 + 7) ^ v31;

          return v34(a1, done, a3, v35, a5, a6);
        }

        continue;
      }
    }

    break;
  }

  return google::protobuf::internal::TcParser::Error(a1, v18, v15, v16, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::FastGtR1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (!a4)
  {
    v11 = *a2;
    v12 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v13 = (a1 + HIWORD(a4));
    v14 = *(v12 + 32);
    v15 = v12 + 48;
    while (1)
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v13, v14);
      v20 = *(a3 + 88);
      v21 = __OFSUB__(v20--, 1);
      *(a3 + 88) = v20;
      if (v20 < 0 != v21)
      {
LABEL_23:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, a6);
      }

      v22 = v16;
      done = (done + 1);
      ++*(a3 + 92);
      while (done < *a3)
      {
LABEL_6:
        v23 = *done;
        v24 = v15 + 2 * (v23 & *(v15 - 40));
        done = (*v24)(v22, done, a3, *(v24 + 8) ^ v23, v15 - 48, 0);
        if (!done || *(a3 + 80))
        {
LABEL_11:
          v18 = *(a3 + 92);
          goto LABEL_12;
        }
      }

      v18 = *(a3 + 92);
      v17 = (done - *(a3 + 8));
      if (*(a3 + 28) != v17)
      {
        break;
      }

      if (v17 >= 1 && !*(a3 + 16))
      {
        done = 0;
      }

LABEL_12:
      ++*(a3 + 88);
      *(a3 + 92) = v18 - 1;
      v25 = *(a3 + 80);
      *(a3 + 80) = 0;
      if (v25 != v11 || done == 0)
      {
        goto LABEL_23;
      }

      if (*a3 <= done)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return done;
      }

      if (*done != v11)
      {
        v28 = *done;
        v29 = &a5[(v28 & a5[4])];
        v30 = *(v29 + 6);
        v31 = *(v29 + 7) ^ v28;

        return v30(a1, done, a3, v31, a5, a6);
      }
    }

    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v17, v18);
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastGtR2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  done = a2;
  if (!a4)
  {
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = *a2;
    v12 = (a1 + HIWORD(a4));
    v13 = *(v10 + 32);
    v14 = v10 + 48;
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessage(v12, v13);
      v19 = *(a3 + 88);
      v20 = __OFSUB__(v19--, 1);
      *(a3 + 88) = v19;
      if (v19 < 0 != v20)
      {
LABEL_23:

        return google::protobuf::internal::TcParser::Error(a1, v16, v17, v18, a5, a6);
      }

      v21 = v15;
      ++done;
      ++*(a3 + 92);
      while (done < *a3)
      {
LABEL_6:
        v22 = *done;
        v23 = v14 + 2 * (v22 & *(v14 - 40));
        done = (*v23)(v21, done, a3, *(v23 + 8) ^ v22, v14 - 48, 0);
        if (!done || *(a3 + 80))
        {
LABEL_11:
          v17 = *(a3 + 92);
          goto LABEL_12;
        }
      }

      v17 = *(a3 + 92);
      v16 = (done - *(a3 + 8));
      if (*(a3 + 28) != v16)
      {
        break;
      }

      if (v16 >= 1 && !*(a3 + 16))
      {
        done = 0;
      }

LABEL_12:
      ++*(a3 + 88);
      *(a3 + 92) = v17 - 1;
      v24 = *(a3 + 80);
      *(a3 + 80) = 0;
      if (v24 != (v11 + v11) >> 1 || done == 0)
      {
        goto LABEL_23;
      }

      if (*a3 <= done)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return done;
      }

      v26 = *done;
      if (v26 != v11)
      {
        v28 = &a5[(v26 & a5[4])];
        v29 = *(v28 + 6);
        v30 = *(v28 + 7) ^ v26;

        return v29(a1, done, a3, v30, a5, a6);
      }
    }

    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a3, v16, v17);
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastF32S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 1);
  v8 = (a2 + 5);
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v7;
    }

    return v8;
  }

  else
  {
    v9 = *v8;
    v10 = &a5[(v9 & a5[4])];
    v11 = *(v10 + 7) ^ v9;
    return (*(v10 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastF32S2(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 2);
  v8 = (a2 + 6);
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v7;
    }

    return v8;
  }

  else
  {
    v9 = *v8;
    v10 = &a5[(v9 & a5[4])];
    v11 = *(v10 + 7) ^ v9;
    return (*(v10 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastF64S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 1);
  v8 = (a2 + 9);
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v7;
    }

    return v8;
  }

  else
  {
    v9 = *v8;
    v10 = &a5[(v9 & a5[4])];
    v11 = *(v10 + 7) ^ v9;
    return (*(v10 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastF64S2(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = *(a2 + 2);
  v8 = (a2 + 10);
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v7;
    }

    return v8;
  }

  else
  {
    v9 = *v8;
    v10 = &a5[(v9 & a5[4])];
    v11 = *(v10 + 7) ^ v9;
    return (*(v10 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastF32R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    v9 = *v7;
    v10 = v7[1];
    while (1)
    {
      v11 = *(a2 + 1);
      if (v9 == v10)
      {
        v13 = a3;
        v14 = a1;
        v15 = a2;
        v16 = a6;
        v17 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, v9, (v9 + 1));
        a3 = v13;
        a1 = v14;
        a5 = v17;
        a2 = v15;
        a6 = v16;
        LODWORD(v9) = *v7;
        v10 = v7[1];
      }

      v12 = *(v7 + 1);
      *v7 = v9 + 1;
      *(v12 + 4 * v9) = v11;
      a2 += 5;
      if (*a3 <= a2)
      {
        break;
      }

      v9 = (v9 + 1);
      if (*a2 != v8)
      {
        v18 = *a2;
        v19 = &a5[(v18 & a5[4])];
        v20 = *(v19 + 6);
        v21 = *(v19 + 7) ^ v18;

        return v20(a1);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return a2;
  }
}

uint64_t google::protobuf::internal::TcParser::FastF32R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 6);
    v9 = v10;
    v11 = *v7;
    v12 = v7[1];
    while (1)
    {
      v13 = *(v8 - 1);
      if (v11 == v12)
      {
        v17 = a3;
        v18 = a1;
        v19 = v8;
        v20 = a6;
        v21 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, v11, (v11 + 1));
        a3 = v17;
        v8 = v19;
        a1 = v18;
        a5 = v21;
        a6 = v20;
        LODWORD(v11) = *v7;
        v12 = v7[1];
      }

      v14 = *(v7 + 1);
      *v7 = v11 + 1;
      *(v14 + 4 * v11) = v13;
      if (*a3 <= v8)
      {
        break;
      }

      v16 = *v8;
      v8 += 3;
      v15 = v16;
      v11 = (v11 + 1);
      if (v16 != v9)
      {
        v22 = &a5[(v15 & a5[4])];
        v23 = *(v22 + 6);
        v24 = v8 - 3;
        v25 = *(v22 + 7) ^ v15;

        return v23(a1, v24);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

uint64_t google::protobuf::internal::TcParser::FastF64R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *a2;
    v9 = *v7;
    while (1)
    {
      v10 = *(a2 + 1);
      if (v9 == v7[1])
      {
        v12 = a3;
        v13 = a1;
        v14 = a2;
        v15 = a6;
        v16 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, v9);
        a3 = v12;
        a1 = v13;
        a5 = v16;
        a2 = v14;
        a6 = v15;
        LODWORD(v9) = *v7;
      }

      v11 = *(v7 + 1);
      *v7 = v9 + 1;
      *(v11 + 8 * v9) = v10;
      a2 += 9;
      if (*a3 <= a2)
      {
        break;
      }

      v9 = (v9 + 1);
      if (*a2 != v8)
      {
        v17 = *a2;
        v18 = &a5[(v17 & a5[4])];
        v19 = *(v18 + 6);
        v20 = *(v18 + 7) ^ v17;

        return v19(a1);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return a2;
  }
}

uint64_t google::protobuf::internal::TcParser::FastF64R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 10);
    v9 = v10;
    v11 = *v7;
    while (1)
    {
      v12 = *(v8 - 1);
      if (v11 == v7[1])
      {
        v16 = a3;
        v17 = a1;
        v18 = v8;
        v19 = a6;
        v20 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, v11);
        a3 = v16;
        v8 = v18;
        a1 = v17;
        a5 = v20;
        a6 = v19;
        LODWORD(v11) = *v7;
      }

      v13 = *(v7 + 1);
      *v7 = v11 + 1;
      *(v13 + 8 * v11) = v12;
      if (*a3 <= v8)
      {
        break;
      }

      v15 = *v8;
      v8 += 5;
      v14 = v15;
      v11 = (v11 + 1);
      if (v15 != v9)
      {
        v21 = &a5[(v14 & a5[4])];
        v22 = *(v21 + 6);
        v23 = v8 - 5;
        v24 = *(v21 + 7) ^ v14;

        return v22(a1, v23);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF32P1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[1];
    if (a2[1] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 1), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = (a2 + 2);
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF32P2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[2];
    if (a2[2] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 2), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = (a2 + 3);
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF64P1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[1];
    if (a2[1] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 1), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = (a2 + 2);
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(v10, v11, v12, v9);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastF64P2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v8 = a2[2];
    if (a2[2] < 0)
    {
      google::protobuf::internal::ReadSizeFallback((a2 + 2), v8);
      v18 = v17;
      v20 = v19;
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = v18;
      v12 = v20;
    }

    else
    {
      v9 = (a1 + HIWORD(a4));
      v10 = a3;
      v11 = (a2 + 3);
      v12 = v8;
    }

    return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(v10, v11, v12, v9);
  }
}

uint64_t google::protobuf::internal::TcParser::FastV8S1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if ((a4 & 0xFEFF) != 0)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a1 + HIWORD(a4)) = BYTE1(a4);
  v7 = (a2 + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (*a3 <= v7)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v7;
  }

  else
  {
    v9 = *v7;
    v10 = &a5[(v9 & a5[4])];
    v11 = *(v10 + 7) ^ v9;
    return (*(v10 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastV8S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<BOOL,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7 != 0;
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastV32S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v8 = *(a2 + 1);
  if (v8 < 0)
  {
    *(&v16 + 1) = *(a2 + 2);
    *&v16 = -128;
    v15 = v16 >> 57;
    if (v15 < 0)
    {
      *(&v18 + 1) = *(a2 + 3);
      *&v18 = -128;
      v17 = v18 >> 50;
      if (v17 < 0)
      {
        *(&v19 + 1) = *(a2 + 4);
        *&v19 = -128;
        v15 &= v19 >> 43;
        if (v15 < 0 != v7)
        {
          *(&v20 + 1) = *(a2 + 5);
          *&v20 = -128;
          v17 &= v20 >> 36;
          if (v17 < 0 != v7)
          {
            if (*(a2 + 6) < 0)
            {
              if (*(a2 + 7) < 0)
              {
                if (*(a2 + 8) < 0)
                {
                  if (*(a2 + 9) < 0)
                  {
                    v9 = (a2 + 11);
                    v21 = *(a2 + 10);
                    if (v21 != 1 && v21 < 0)
                    {
                      return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                    }
                  }

                  else
                  {
                    v9 = (a2 + 10);
                  }
                }

                else
                {
                  v9 = (a2 + 9);
                }
              }

              else
              {
                v9 = (a2 + 8);
              }
            }

            else
            {
              v9 = (a2 + 7);
            }
          }

          else
          {
            v9 = (a2 + 6);
          }
        }

        else
        {
          v9 = (a2 + 5);
        }
      }

      else
      {
        v9 = (a2 + 4);
      }

      LODWORD(v15) = v15 & v17;
    }

    else
    {
      v9 = (a2 + 3);
    }

    LODWORD(v8) = v15 & v8;
  }

  else
  {
    v9 = (a2 + 2);
  }

  v10 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = v8;
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v10;
    }

    return v9;
  }

  else
  {
    v11 = *v9;
    v12 = &a5[(v11 & a5[4])];
    v13 = *(v12 + 7) ^ v11;
    return (*(v12 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastV32S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<unsigned int,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7;
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastV64S1(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v8 = *(a2 + 1);
  if (v8 < 0)
  {
    *(&v16 + 1) = *(a2 + 2);
    *&v16 = -128;
    v15 = v16 >> 57;
    if (v15 < 0)
    {
      *(&v18 + 1) = *(a2 + 3);
      *&v18 = -128;
      v17 = v18 >> 50;
      if (v17 < 0)
      {
        *(&v19 + 1) = *(a2 + 4);
        *&v19 = -128;
        v15 &= v19 >> 43;
        if (v15 < 0 != v7)
        {
          *(&v20 + 1) = *(a2 + 5);
          *&v20 = -128;
          v17 &= v20 >> 36;
          if (v17 < 0 != v7)
          {
            *(&v21 + 1) = *(a2 + 6);
            *&v21 = -128;
            v15 &= v21 >> 29;
            if (v15 < 0 != v7)
            {
              *(&v22 + 1) = *(a2 + 7);
              *&v22 = -128;
              v17 &= v22 >> 22;
              if (v17 < 0 != v7)
              {
                *(&v23 + 1) = *(a2 + 8);
                *&v23 = -128;
                v15 &= v23 >> 15;
                if (v15 < 0 != v7)
                {
                  *(&v24 + 1) = *(a2 + 9);
                  *&v24 = -128;
                  v17 &= v24 >> 8;
                  if (v17 < 0 != v7)
                  {
                    v9 = (a2 + 11);
                    v25 = *(a2 + 10);
                    if (v25 != 1)
                    {
                      if ((v25 & 0x80) != 0)
                      {
                        return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                      }

                      if ((v25 & 1) == 0)
                      {
                        v17 &= ~0x8000000000000000;
                      }
                    }
                  }

                  else
                  {
                    v9 = (a2 + 10);
                  }
                }

                else
                {
                  v9 = (a2 + 9);
                }
              }

              else
              {
                v9 = (a2 + 8);
              }
            }

            else
            {
              v9 = (a2 + 7);
            }
          }

          else
          {
            v9 = (a2 + 6);
          }
        }

        else
        {
          v9 = (a2 + 5);
        }
      }

      else
      {
        v9 = (a2 + 4);
      }

      v15 &= v17;
    }

    else
    {
      v9 = (a2 + 3);
    }

    v8 &= v15;
  }

  else
  {
    v9 = (a2 + 2);
  }

  v10 = (1 << SBYTE2(a4)) | a6;
  *(a1 + HIWORD(a4)) = v8;
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v10;
    }

    return v9;
  }

  else
  {
    v11 = *v9;
    v12 = &a5[(v11 & a5[4])];
    v13 = *(v12 + 7) ^ v11;
    return (*(v12 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastV64S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if (v7 < 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<unsigned long long,unsigned short,false>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = v7;
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastZ32S1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 1);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x80000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<int,unsigned char,true>(a1, (this + 1), a3, a4, a5, v8);
  }

  v9 = (this + 2);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastZ32S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x80000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<int,unsigned char,true>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastZ64S1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 1);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<long long,unsigned char,true>(a1, (this + 1), a3, a4, a5, v8);
  }

  v9 = (this + 2);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

char *google::protobuf::internal::TcParser::FastZ64S2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
  }

  v7 = *(this + 2);
  v8 = (1 << SBYTE2(a4)) | a6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    return google::protobuf::internal::TcParser::SingularVarBigint<long long,unsigned char,true>(a1, (this + 2), a3, a4, a5, v8);
  }

  v9 = (this + 3);
  *(a1 + HIWORD(a4)) = -(v7 & 1) ^ (v7 >> 1);
  if (*a3 <= v9)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v8;
    }

    return v9;
  }

  else
  {
    v10 = *v9;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastV8R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      v9 = a2 + 2;
      v10 = a2[1];
      if (v10 < 2)
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        v20 = a2[2];
        v14 = v20 | v10 & 0x7F;
        if (v20 < 0)
        {
          v21 = a2[3];
          v14 = v21 | v14 & 0x7F;
          if (v21 < 0)
          {
            v22 = a2[4];
            v14 = v22 | v14 & 0x7F;
            if (v22 < 0)
            {
              v23 = a2[5];
              v14 = v23 | v14 & 0x7F;
              if (v23 < 0)
              {
                v24 = a2[6];
                v14 = v24 | v14 & 0x7F;
                if (v24 < 0)
                {
                  v25 = a2[7];
                  v14 = v25 | v14 & 0x7F;
                  if (v25 < 0)
                  {
                    v26 = a2[8];
                    v14 = v26 | v14 & 0x7F;
                    if (v26 < 0)
                    {
                      v27 = a2[9];
                      v14 = v27 | v14 & 0x7F;
                      if (v27 < 0)
                      {
                        v28 = a2[10];
                        if (v28 < 0)
                        {

                          return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                        }

                        v9 = a2 + 11;
                        v14 = v28 & 0xFFFFFF81 | v14 & 0x7F;
                      }

                      else
                      {
                        v9 = a2 + 10;
                      }
                    }

                    else
                    {
                      v9 = a2 + 9;
                    }
                  }

                  else
                  {
                    v9 = a2 + 8;
                  }
                }

                else
                {
                  v9 = a2 + 7;
                }
              }

              else
              {
                v9 = a2 + 6;
              }
            }

            else
            {
              v9 = a2 + 5;
            }
          }

          else
          {
            v9 = a2 + 4;
          }
        }

        else
        {
          v9 = a2 + 3;
        }
      }

      else
      {
        v14 = 1;
      }

      LOBYTE(v10) = v14 != 0;
      a2 = v9;
      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        goto LABEL_11;
      }

LABEL_5:
      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + v12) = v10 & 1;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v29 = *a2;
        v30 = &a5[(v29 & a5[4])];
        v31 = *(v30 + 6);
        v32 = *(v30 + 7) ^ v29;

        return v31(a1);
      }
    }

    a2 += 2;
    v12 = *v7;
    v11 = *(v7 + 4);
    if (*v7 != v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = a3;
    v16 = a1;
    v17 = a2;
    v18 = a6;
    v19 = a5;
    google::protobuf::RepeatedField<BOOL>::Grow(v7, v11, (v11 + 1));
    a2 = v17;
    a3 = v15;
    a1 = v16;
    a5 = v19;
    a6 = v18;
    v12 = *v7;
    goto LABEL_5;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastV8R2(uint64_t a1, unsigned __int16 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      v9 = (a2 + 3);
      v10 = *(a2 + 2);
      if (v10 < 2)
      {
        break;
      }

      if ((v10 & 0x80) != 0)
      {
        v21 = *(a2 + 3);
        v15 = v21 | v10 & 0x7F;
        if (v21 < 0)
        {
          v22 = *(a2 + 4);
          v15 = v22 | v15 & 0x7F;
          if (v22 < 0)
          {
            v23 = *(a2 + 5);
            v15 = v23 | v15 & 0x7F;
            if (v23 < 0)
            {
              v24 = *(a2 + 6);
              v15 = v24 | v15 & 0x7F;
              if (v24 < 0)
              {
                v25 = *(a2 + 7);
                v15 = v25 | v15 & 0x7F;
                if (v25 < 0)
                {
                  v26 = *(a2 + 8);
                  v15 = v26 | v15 & 0x7F;
                  if (v26 < 0)
                  {
                    v27 = *(a2 + 9);
                    v15 = v27 | v15 & 0x7F;
                    if (v27 < 0)
                    {
                      v28 = *(a2 + 10);
                      v15 = v28 | v15 & 0x7F;
                      if (v28 < 0)
                      {
                        v29 = *(a2 + 11);
                        if (v29 < 0)
                        {

                          return google::protobuf::internal::TcParser::Error(a1, a2, a3, a4, a5, a6);
                        }

                        v9 = a2 + 6;
                        v15 = v29 & 0xFFFFFF81 | v15 & 0x7F;
                      }

                      else
                      {
                        v9 = (a2 + 11);
                      }
                    }

                    else
                    {
                      v9 = a2 + 5;
                    }
                  }

                  else
                  {
                    v9 = (a2 + 9);
                  }
                }

                else
                {
                  v9 = a2 + 4;
                }
              }

              else
              {
                v9 = (a2 + 7);
              }
            }

            else
            {
              v9 = a2 + 3;
            }
          }

          else
          {
            v9 = (a2 + 5);
          }
        }

        else
        {
          v9 = a2 + 2;
        }
      }

      else
      {
        v15 = 1;
      }

      LOBYTE(v10) = v15 != 0;
      a2 = v9;
      v12 = *v7;
      v11 = *(v7 + 4);
      if (*v7 == v11)
      {
        goto LABEL_11;
      }

LABEL_5:
      v13 = *(v7 + 8);
      *v7 = v12 + 1;
      *(v13 + v12) = v10 & 1;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v14 = *a2;
      if (v14 != v8)
      {
        v30 = &a5[(v14 & a5[4])];
        v31 = *(v30 + 6);
        v32 = *(v30 + 7) ^ v14;

        return v31(a1);
      }
    }

    a2 = (a2 + 3);
    v12 = *v7;
    v11 = *(v7 + 4);
    if (*v7 != v11)
    {
      goto LABEL_5;
    }

LABEL_11:
    v16 = a3;
    v17 = a1;
    v18 = a2;
    v19 = a6;
    v20 = a5;
    google::protobuf::RepeatedField<BOOL>::Grow(v7, v11, (v11 + 1));
    a2 = v18;
    a3 = v16;
    a1 = v17;
    a5 = v20;
    a6 = v19;
    v12 = *v7;
    goto LABEL_5;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastV32R1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 1);
      *v32 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v28 = a3;
          v29 = a1;
          v30 = a5;
          v31 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((this + 1), v32, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v29, v20, v21, v22, v30, v31);
          }

          this = v19;
          v10 = *v32;
          a5 = v30;
          a6 = v31;
          a3 = v28;
          a1 = v29;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 3);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 2);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = this;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v16;
        a3 = v14;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = v10;
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      if (*this != v8)
      {
        v23 = *this;
        v24 = &a5[(v23 & a5[4])];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v23;

        return v25(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastV32R2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 2);
      *v32 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v28 = a3;
          v29 = a1;
          v30 = a5;
          v31 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((this + 2), v32, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v29, v21, v22, v23, v30, v31);
          }

          this = v20;
          v10 = *v32;
          a5 = v30;
          a6 = v31;
          a3 = v28;
          a1 = v29;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 4);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 3);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = this;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v17;
        a3 = v15;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = v10;
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      v14 = *this;
      if (v14 != v8)
      {
        v24 = &a5[(v14 & a5[4])];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v14;

        return v25(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastV64R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v31 = 0;
      v9 = *(a2 + 1);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v27 = a3;
          v28 = a1;
          v29 = a5;
          v30 = a6;
          v18 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v31, v9);
          if (!v18)
          {

            return google::protobuf::internal::TcParser::Error(v28, v19, v20, v21, v29, v30);
          }

          a2 = v18;
          a6 = v30;
          v10 = *v31;
          a1 = v28;
          a5 = v29;
          a3 = v27;
        }

        else
        {
          v10 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
          a2 += 3;
        }
      }

      else
      {
        v10 = *(a2 + 1) & 0x7FLL;
        a2 += 2;
      }

      v11 = *v7;
      if (*v7 == *(v7 + 4))
      {
        v13 = a3;
        v14 = a1;
        v15 = a2;
        v16 = a6;
        v17 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4));
        a3 = v13;
        a2 = v15;
        a1 = v14;
        a5 = v17;
        a6 = v16;
        v11 = *v7;
      }

      v12 = *(v7 + 8);
      *v7 = v11 + 1;
      *(v12 + 8 * v11) = v10;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v22 = *a2;
        v23 = &a5[(v22 & a5[4])];
        v24 = *(v23 + 6);
        v25 = *(v23 + 7) ^ v22;

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastV64R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v31 = 0;
      v9 = *(a2 + 2);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v27 = a3;
          v28 = a1;
          v29 = a5;
          v30 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v31, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v28, v20, v21, v22, v29, v30);
          }

          a2 = v19;
          a6 = v30;
          v10 = *v31;
          a1 = v28;
          a5 = v29;
          a3 = v27;
        }

        else
        {
          v10 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
          a2 += 4;
        }
      }

      else
      {
        v10 = *(a2 + 2) & 0x7FLL;
        a2 += 3;
      }

      v11 = *v7;
      if (*v7 == *(v7 + 4))
      {
        v14 = a3;
        v15 = a1;
        v16 = a2;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4));
        a3 = v14;
        a2 = v16;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v11 = *v7;
      }

      v12 = *(v7 + 8);
      *v7 = v11 + 1;
      *(v12 + 8 * v11) = v10;
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v13 = *a2;
      if (v13 != v8)
      {
        v23 = &a5[(v13 & a5[4])];
        v24 = *(v23 + 6);
        v25 = *(v23 + 7) ^ v13;

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastZ32R1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 1);
      *v32 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v28 = a3;
          v29 = a1;
          v30 = a5;
          v31 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((this + 1), v32, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v29, v20, v21, v22, v30, v31);
          }

          this = v19;
          v10 = *v32;
          a5 = v30;
          a6 = v31;
          a3 = v28;
          a1 = v29;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 3);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 2);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v14 = a3;
        v15 = a1;
        v16 = this;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v16;
        a3 = v14;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      if (*this != v8)
      {
        v23 = *this;
        v24 = &a5[(v23 & a5[4])];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v23;

        return v25(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

google::protobuf::internal *google::protobuf::internal::TcParser::FastZ32R2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = (a1 + HIWORD(a4));
    v8 = *this;
    while (1)
    {
      v9 = *(this + 2);
      *v32 = 0;
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v28 = a3;
          v29 = a1;
          v30 = a5;
          v31 = a6;
          v20 = google::protobuf::internal::VarintParseSlowArm((this + 2), v32, v9);
          if (!v20)
          {

            return google::protobuf::internal::TcParser::Error(v29, v21, v22, v23, v30, v31);
          }

          this = v20;
          v10 = *v32;
          a5 = v30;
          a6 = v31;
          a3 = v28;
          a1 = v29;
        }

        else
        {
          v10 = v9 & 0x7F | (((v9 >> 8) & 0x7F) << 7);
          this = (this + 4);
        }
      }

      else
      {
        v10 = v9 & 0x7F;
        this = (this + 3);
      }

      v11 = HIDWORD(*v7);
      v12 = *v7;
      if (v12 == v11)
      {
        v15 = a3;
        v16 = a1;
        v17 = this;
        v18 = a6;
        v19 = a5;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v11 + 1));
        this = v17;
        a3 = v15;
        a1 = v16;
        a5 = v19;
        a6 = v18;
        v12 = *v7;
      }

      v13 = v7[1];
      *v7 = v12 + 1;
      *(v13 + 4 * v12) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= this)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return this;
      }

      v14 = *this;
      if (v14 != v8)
      {
        v24 = &a5[(v14 & a5[4])];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v14;

        return v25(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastZ64R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v31 = 0;
      v9 = *(a2 + 1);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v27 = a3;
          v28 = a1;
          v29 = a5;
          v30 = a6;
          v18 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v31, v9);
          if (!v18)
          {

            return google::protobuf::internal::TcParser::Error(v28, v19, v20, v21, v29, v30);
          }

          a2 = v18;
          a6 = v30;
          v10 = *v31;
          a1 = v28;
          a5 = v29;
          a3 = v27;
        }

        else
        {
          v10 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
          a2 += 3;
        }
      }

      else
      {
        v10 = *(a2 + 1) & 0x7FLL;
        a2 += 2;
      }

      v11 = *v7;
      if (*v7 == *(v7 + 4))
      {
        v13 = a3;
        v14 = a1;
        v15 = a2;
        v16 = a6;
        v17 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4));
        a3 = v13;
        a2 = v15;
        a1 = v14;
        a5 = v17;
        a6 = v16;
        v11 = *v7;
      }

      v12 = *(v7 + 8);
      *v7 = v11 + 1;
      *(v12 + 8 * v11) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      if (*a2 != v8)
      {
        v22 = *a2;
        v23 = &a5[(v22 & a5[4])];
        v24 = *(v23 + 6);
        v25 = *(v23 + 7) ^ v22;

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t google::protobuf::internal::TcParser::FastZ64R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v7 = a1 + HIWORD(a4);
    v8 = *a2;
    while (1)
    {
      *v31 = 0;
      v9 = *(a2 + 2);
      if ((v9 & 0x80) != 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v27 = a3;
          v28 = a1;
          v29 = a5;
          v30 = a6;
          v19 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v31, v9);
          if (!v19)
          {

            return google::protobuf::internal::TcParser::Error(v28, v20, v21, v22, v29, v30);
          }

          a2 = v19;
          a6 = v30;
          v10 = *v31;
          a1 = v28;
          a5 = v29;
          a3 = v27;
        }

        else
        {
          v10 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
          a2 += 4;
        }
      }

      else
      {
        v10 = *(a2 + 2) & 0x7FLL;
        a2 += 3;
      }

      v11 = *v7;
      if (*v7 == *(v7 + 4))
      {
        v14 = a3;
        v15 = a1;
        v16 = a2;
        v17 = a6;
        v18 = a5;
        google::protobuf::RepeatedField<long long>::Grow(v7, *(v7 + 4));
        a3 = v14;
        a2 = v16;
        a1 = v15;
        a5 = v18;
        a6 = v17;
        v11 = *v7;
      }

      v12 = *(v7 + 8);
      *v7 = v11 + 1;
      *(v12 + 8 * v11) = -(v10 & 1) ^ (v10 >> 1);
      if (*a3 <= a2)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return a2;
      }

      v13 = *a2;
      if (v13 != v8)
      {
        v23 = &a5[(v13 & a5[4])];
        v24 = *(v23 + 6);
        v25 = *(v23 + 7) ^ v13;

        return v24(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
}

void google::protobuf::internal::TcParser::FastV8P1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastV8P2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,BOOL,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastV32P1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastV32P2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastV64P1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastV64P2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastZ32P1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastZ32P2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned int,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastZ64P1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 1), (a1 + HIWORD(a4)));
  }
}

void google::protobuf::internal::TcParser::FastZ64P2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {
    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1}>(char const*,char const* google::protobuf::internal::TcParser::MpPackedVarintT<false,unsigned long long,(unsigned short)512>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(unsigned long long)#1})::{lambda(int)#1}>(a3, (a2 + 2), (a1 + HIWORD(a4)));
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUnknownEnumFallback(uint64_t a1, google::protobuf::internal *this, void *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  v10 = (this + 1);
  v11 = *this;
  if ((*this & 0x80000000) == 0)
  {
LABEL_4:
    *v26 = 0;
    v13 = *v10;
    if ((*v10 & 0x80) == 0)
    {
LABEL_5:
      v14 = v13 & 0x7F;
      v15 = (v10 + 1);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v12 = v11 + (*v10 << 7);
  v11 = v12 - 128;
  if ((*v10 & 0x80000000) == 0)
  {
    v10 = (this + 2);
    goto LABEL_4;
  }

  google::protobuf::internal::ReadTagFallback(this, (v12 - 128));
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v21;
  *v26 = 0;
  v13 = *v10;
  if ((*v10 & 0x80) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  if ((v13 & 0x8000) == 0)
  {
    v14 = v13 & 0x7F | (((v13 >> 8) & 0x7F) << 7);
    v15 = (v10 + 2);
    goto LABEL_6;
  }

  v25 = v11;
  v24 = google::protobuf::internal::VarintParseSlowArm(v10, v26, v13);
  if (v24)
  {
    v15 = v24;
    v11 = v25;
    v14 = *v26;
LABEL_6:
    google::protobuf::internal::TcParser::AddUnknownEnum(a1, a5, v11, v14);
    if (*a3 <= v15)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v15;
    }

    else
    {
      v16 = *v15;
      v17 = &a5[(v16 & a5[4])];
      v18 = *(v17 + 6);
      v19 = *(v17 + 7) ^ v16;

      return v18(a1, v15, a3, v19, a5, a6);
    }
  }

LABEL_19:

  return google::protobuf::internal::TcParser::Error(a1, v21, v22, v23, a5, a6);
}

uint64_t google::protobuf::internal::TcParser::AddUnknownEnum(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a2 + 40))(0, 0, 0, 0, 0, 0);

  return v7(a1, a3 >> 3, a4);
}

char *google::protobuf::internal::TcParser::MpUnknownEnumFallback(uint64_t a1, google::protobuf::internal *this, void *a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6)
{
  *v23 = 0;
  v10 = *this;
  if ((*this & 0x80) == 0)
  {
    v11 = *this & 0x7FLL;
    v12 = this + 1;
    goto LABEL_3;
  }

  if ((v10 & 0x8000) == 0)
  {
    v11 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
    v12 = this + 2;
    goto LABEL_3;
  }

  v22 = a4;
  v18 = google::protobuf::internal::VarintParseSlowArm(this, v23, v10);
  if (v18)
  {
    v12 = v18;
    a4 = v22;
    v11 = *v23;
LABEL_3:
    google::protobuf::internal::TcParser::AddUnknownEnum(a1, a5, a4, v11);
    if (*a3 <= v12)
    {
      if (*a5)
      {
        *(a1 + *a5) |= a6;
      }

      return v12;
    }

    else
    {
      v13 = *v12;
      v14 = &a5[(v13 & a5[4])];
      v15 = *(v14 + 6);
      v16 = *(v14 + 7) ^ v13;

      return v15(a1, v12, a3, v16, a5, a6);
    }
  }

  return google::protobuf::internal::TcParser::Error(a1, v19, v20, v21, a5, a6);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErS1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v31 = 0;
    v8 = *(a2 + 1);
    if ((v8 & 0x80) == 0)
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 2);
      goto LABEL_4;
    }

    if ((v8 & 0x8000) == 0)
    {
      v9 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
      v10 = (a2 + 3);
      goto LABEL_4;
    }

    v26 = a4;
    v27 = v7;
    v30 = a6;
    v25 = a3;
    v28 = a1;
    v29 = a5;
    v24 = a2;
    v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v31, v8);
    if (v20)
    {
      v10 = v20;
      a6 = v30;
      LODWORD(v9) = *v31;
      a5 = v29;
      LODWORD(v7) = v27;
      a1 = v28;
      a3 = v25;
      a4 = v26;
      a2 = v24;
LABEL_4:
      v11 = v7;
      v12 = v7 + WORD1(v7);
      if (v11 > v9 || v12 <= v9)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        v14 = (1 << SBYTE2(a4)) | a6;
        *(a1 + HIWORD(a4)) = v9;
        if (*a3 <= v10)
        {
          if (*a5)
          {
            *(a1 + *a5) |= v14;
          }

          return v10;
        }

        else
        {
          v15 = *v10;
          v16 = &a5[(v15 & a5[4])];
          v17 = *(v16 + 6);
          v18 = *(v16 + 7) ^ v15;

          return v17();
        }
      }
    }

    return google::protobuf::internal::TcParser::Error(v28, v21, v22, v23, v29, v30);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErS2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v31 = 0;
    v8 = *(a2 + 2);
    if ((v8 & 0x80) == 0)
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 3);
      goto LABEL_4;
    }

    if ((v8 & 0x8000) == 0)
    {
      v9 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
      v10 = (a2 + 4);
      goto LABEL_4;
    }

    v26 = a4;
    v27 = v7;
    v30 = a6;
    v25 = a3;
    v28 = a1;
    v29 = a5;
    v24 = a2;
    v20 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v31, v8);
    if (v20)
    {
      v10 = v20;
      a6 = v30;
      LODWORD(v9) = *v31;
      a5 = v29;
      LODWORD(v7) = v27;
      a1 = v28;
      a3 = v25;
      a4 = v26;
      a2 = v24;
LABEL_4:
      v11 = v7;
      v12 = v7 + WORD1(v7);
      if (v11 > v9 || v12 <= v9)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
      }

      else
      {
        v14 = (1 << SBYTE2(a4)) | a6;
        *(a1 + HIWORD(a4)) = v9;
        if (*a3 <= v10)
        {
          if (*a5)
          {
            *(a1 + *a5) |= v14;
          }

          return v10;
        }

        else
        {
          v15 = *v10;
          v16 = &a5[(v15 & a5[4])];
          v17 = *(v16 + 6);
          v18 = *(v16 + 7) ^ v15;

          return v17();
        }
      }
    }

    return google::protobuf::internal::TcParser::Error(v28, v21, v22, v23, v29, v30);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvS1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v39 = 0;
    v8 = *(a2 + 1);
    if ((v8 & 0x80) != 0)
    {
      if ((v8 & 0x8000) != 0)
      {
        v34 = a4;
        v35 = v7;
        v38 = a6;
        v33 = a3;
        v36 = a1;
        v37 = a5;
        v32 = a2;
        v23 = google::protobuf::internal::VarintParseSlowArm((a2 + 1), v39, v8);
        if (!v23)
        {

          return google::protobuf::internal::TcParser::Error(v36, v24, v25, v26, v37, v38);
        }

        v10 = v23;
        a6 = v38;
        LODWORD(v9) = *v39;
        a5 = v37;
        v7 = v35;
        a1 = v36;
        a3 = v33;
        a4 = v34;
        a2 = v32;
      }

      else
      {
        v9 = *(a2 + 1) & 0x7FLL | (((*(a2 + 1) >> 8) & 0x7FLL) << 7);
        v10 = (a2 + 3);
      }
    }

    else
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 2);
    }

    v11 = *v7;
    v12 = v11 >> 16;
    v13 = v9 - v11;
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      goto LABEL_5;
    }

    v22 = v7[1];
    if (v15 >= v22)
    {
      v27 = 0;
      v28 = &v7[(v22 >> 5) + 2];
      while (v27 < v22 >> 16)
      {
        v29 = *(v28 + 4 * v27);
        v30 = v29 == v9;
        if (v29 > v9)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        v27 = v31 + 2 * v27;
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else if ((v7[(v15 >> 5) + 2] >> v15))
    {
LABEL_5:
      v16 = (1 << SBYTE2(a4)) | a6;
      *(a1 + HIWORD(a4)) = v9;
      if (*a3 <= v10)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v16;
        }

        return v10;
      }

      else
      {
        v17 = *v10;
        v18 = &a5[(v17 & a5[4])];
        v19 = *(v18 + 6);
        v20 = *(v18 + 7) ^ v17;

        return v19();
      }
    }

    return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvS2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *v39 = 0;
    v8 = *(a2 + 2);
    if ((v8 & 0x80) != 0)
    {
      if ((v8 & 0x8000) != 0)
      {
        v34 = a4;
        v35 = v7;
        v38 = a6;
        v33 = a3;
        v36 = a1;
        v37 = a5;
        v32 = a2;
        v23 = google::protobuf::internal::VarintParseSlowArm((a2 + 2), v39, v8);
        if (!v23)
        {

          return google::protobuf::internal::TcParser::Error(v36, v24, v25, v26, v37, v38);
        }

        v10 = v23;
        a6 = v38;
        LODWORD(v9) = *v39;
        a5 = v37;
        v7 = v35;
        a1 = v36;
        a3 = v33;
        a4 = v34;
        a2 = v32;
      }

      else
      {
        v9 = *(a2 + 2) & 0x7FLL | (((*(a2 + 2) >> 8) & 0x7FLL) << 7);
        v10 = (a2 + 4);
      }
    }

    else
    {
      LODWORD(v9) = v8 & 0x7F;
      v10 = (a2 + 3);
    }

    v11 = *v7;
    v12 = v11 >> 16;
    v13 = v9 - v11;
    v14 = v13 >= v12;
    v15 = v13 - v12;
    if (!v14)
    {
      goto LABEL_5;
    }

    v22 = v7[1];
    if (v15 >= v22)
    {
      v27 = 0;
      v28 = &v7[(v22 >> 5) + 2];
      while (v27 < v22 >> 16)
      {
        v29 = *(v28 + 4 * v27);
        v30 = v29 == v9;
        if (v29 > v9)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        v27 = v31 + 2 * v27;
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else if ((v7[(v15 >> 5) + 2] >> v15))
    {
LABEL_5:
      v16 = (1 << SBYTE2(a4)) | a6;
      *(a1 + HIWORD(a4)) = v9;
      if (*a3 <= v10)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v16;
        }

        return v10;
      }

      else
      {
        v17 = *v10;
        v18 = &a5[(v17 & a5[4])];
        v19 = *(v18 + 6);
        v20 = *(v18 + 7) ^ v17;

        return v19();
      }
    }

    return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, a2, a3, a4, a5, a6);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErR1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10;
    v12 = v10 + WORD1(v10);
    while (1)
    {
      *v38 = 0;
      v13 = *(v7 + 1);
      if ((v13 & 0x80) != 0)
      {
        if ((v13 & 0x8000) != 0)
        {
          v34 = a3;
          v35 = a1;
          v36 = a5;
          v37 = a6;
          v33 = v7;
          v25 = google::protobuf::internal::VarintParseSlowArm((v7 + 1), v38, v13);
          if (!v25)
          {

            return google::protobuf::internal::TcParser::Error(v35, v26, v27, a4, v36, v37);
          }

          v15 = v25;
          a6 = v37;
          LODWORD(v14) = *v38;
          a1 = v35;
          a5 = v36;
          v7 = v33;
          a3 = v34;
        }

        else
        {
          v14 = *(v7 + 1) & 0x7FLL | (((*(v7 + 1) >> 8) & 0x7FLL) << 7);
          v15 = (v7 + 3);
        }
      }

      else
      {
        LODWORD(v14) = v13 & 0x7F;
        v15 = (v7 + 2);
      }

      if (v11 > v14 || v12 <= v14)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
      }

      v17 = HIDWORD(*v8);
      v18 = *v8;
      if (v18 == v17)
      {
        v20 = a3;
        v21 = a1;
        v22 = v15;
        v23 = a6;
        v24 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, HIDWORD(*v8), (v17 + 1));
        v15 = v22;
        a3 = v20;
        a1 = v21;
        a5 = v24;
        a6 = v23;
        v18 = *v8;
      }

      v19 = v8[1];
      *v8 = v18 + 1;
      *(v19 + 4 * v18) = v14;
      if (*a3 <= v15)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v15;
      }

      v7 = v15;
      if (*v15 != v9)
      {
        v28 = *v15;
        v29 = &a5[(v28 & a5[4])];
        v30 = *(v29 + 6);
        v31 = *(v29 + 7) ^ v28;

        return v30(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastErR2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10;
    v12 = v10 + WORD1(v10);
    while (1)
    {
      *v38 = 0;
      v13 = *(v7 + 2);
      if ((v13 & 0x80) != 0)
      {
        if ((v13 & 0x8000) != 0)
        {
          v34 = a3;
          v35 = a1;
          v36 = a5;
          v37 = a6;
          v33 = v7;
          v26 = google::protobuf::internal::VarintParseSlowArm((v7 + 2), v38, v13);
          if (!v26)
          {

            return google::protobuf::internal::TcParser::Error(v35, v27, v28, a4, v36, v37);
          }

          v15 = v26;
          a6 = v37;
          LODWORD(v14) = *v38;
          a1 = v35;
          a5 = v36;
          v7 = v33;
          a3 = v34;
        }

        else
        {
          v14 = *(v7 + 2) & 0x7FLL | (((*(v7 + 2) >> 8) & 0x7FLL) << 7);
          v15 = (v7 + 4);
        }
      }

      else
      {
        LODWORD(v14) = v13 & 0x7F;
        v15 = (v7 + 3);
      }

      if (v11 > v14 || v12 <= v14)
      {

        return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
      }

      v17 = HIDWORD(*v8);
      v18 = *v8;
      if (v18 == v17)
      {
        v21 = a3;
        v22 = a1;
        v23 = v15;
        v24 = a6;
        v25 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, HIDWORD(*v8), (v17 + 1));
        v15 = v23;
        a3 = v21;
        a1 = v22;
        a5 = v25;
        a6 = v24;
        v18 = *v8;
      }

      v19 = v8[1];
      *v8 = v18 + 1;
      *(v19 + 4 * v18) = v14;
      if (*a3 <= v15)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v15;
      }

      v20 = *v15;
      v7 = v15;
      if (v20 != v9)
      {
        v29 = &a5[(v20 & a5[4])];
        v30 = *(v29 + 6);
        v31 = *(v29 + 7) ^ v20;

        return v30(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvR1(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10 + 2;
    while (1)
    {
      *v48 = 0;
      v12 = *(v7 + 1);
      if ((v12 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          v45 = a6;
          v47 = a3;
          v43 = a1;
          v44 = a5;
          v42 = v7;
          v28 = google::protobuf::internal::VarintParseSlowArm((v7 + 1), v48, v12);
          if (!v28)
          {

            return google::protobuf::internal::TcParser::Error(v43, v29, v30, a4, v44, v45);
          }

          v14 = v28;
          a3 = v47;
          LODWORD(v13) = *v48;
          a5 = v44;
          a6 = v45;
          v7 = v42;
          a1 = v43;
        }

        else
        {
          v13 = *(v7 + 1) & 0x7FLL | (((*(v7 + 1) >> 8) & 0x7FLL) << 7);
          v14 = (v7 + 3);
        }
      }

      else
      {
        LODWORD(v13) = v12 & 0x7F;
        v14 = (v7 + 2);
      }

      v15 = *v10;
      v16 = v15 >> 16;
      v17 = v13 - v15;
      v18 = v17 >= v16;
      v19 = v17 - v16;
      if (v18)
      {
        v23 = v10[1];
        if (v19 >= v23)
        {
          v31 = 0;
          v32 = v23 >> 16;
          v33 = &v11[v23 >> 5];
          while (v31 < v32)
          {
            v34 = v33[v31];
            v35 = v34 == v13;
            if (v34 > v13)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }

            v31 = v36 + 2 * v31;
            if (v35)
            {
              goto LABEL_6;
            }
          }

LABEL_29:

          return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
        }

        if (((*(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_6:
      v20 = HIDWORD(*v8);
      v21 = *v8;
      if (v21 == v20)
      {
        v46 = a3;
        v24 = a1;
        v25 = v14;
        v26 = a6;
        v27 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, v20, (v20 + 1));
        v14 = v25;
        a3 = v46;
        a1 = v24;
        a5 = v27;
        a6 = v26;
        v21 = *v8;
      }

      v22 = v8[1];
      *v8 = v21 + 1;
      *(v22 + 4 * v21) = v13;
      if (*a3 <= v14)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v14;
      }

      v7 = v14;
      if (*v14 != v9)
      {
        v37 = *v14;
        v38 = &a5[(v37 & a5[4])];
        v39 = *(v38 + 6);
        v40 = *(v38 + 7) ^ v37;

        return v39(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastEvR2(uint64_t a1, google::protobuf::internal *this, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v7 = this;
  if (!a4)
  {
    v8 = (a1 + HIWORD(a4));
    v9 = *this;
    v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    v11 = v10 + 2;
    while (1)
    {
      *v48 = 0;
      v12 = *(v7 + 2);
      if ((v12 & 0x80) != 0)
      {
        if ((v12 & 0x8000) != 0)
        {
          v45 = a6;
          v47 = a3;
          v43 = a1;
          v44 = a5;
          v42 = v7;
          v29 = google::protobuf::internal::VarintParseSlowArm((v7 + 2), v48, v12);
          if (!v29)
          {

            return google::protobuf::internal::TcParser::Error(v43, v30, v31, a4, v44, v45);
          }

          v14 = v29;
          a3 = v47;
          LODWORD(v13) = *v48;
          a5 = v44;
          a6 = v45;
          v7 = v42;
          a1 = v43;
        }

        else
        {
          v13 = *(v7 + 2) & 0x7FLL | (((*(v7 + 2) >> 8) & 0x7FLL) << 7);
          v14 = (v7 + 4);
        }
      }

      else
      {
        LODWORD(v13) = v12 & 0x7F;
        v14 = (v7 + 3);
      }

      v15 = *v10;
      v16 = v15 >> 16;
      v17 = v13 - v15;
      v18 = v17 >= v16;
      v19 = v17 - v16;
      if (v18)
      {
        v24 = v10[1];
        if (v19 >= v24)
        {
          v32 = 0;
          v33 = v24 >> 16;
          v34 = &v11[v24 >> 5];
          while (v32 < v33)
          {
            v35 = v34[v32];
            v36 = v35 == v13;
            if (v35 > v13)
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            v32 = v37 + 2 * v32;
            if (v36)
            {
              goto LABEL_6;
            }
          }

LABEL_29:

          return google::protobuf::internal::TcParser::FastUnknownEnumFallback(a1, v7, a3, a4, a5, a6);
        }

        if (((*(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v19) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_6:
      v20 = HIDWORD(*v8);
      v21 = *v8;
      if (v21 == v20)
      {
        v46 = a3;
        v25 = a1;
        v26 = v14;
        v27 = a6;
        v28 = a5;
        google::protobuf::RepeatedField<int>::Grow(v8, v20, (v20 + 1));
        v14 = v26;
        a3 = v46;
        a1 = v25;
        a5 = v28;
        a6 = v27;
        v21 = *v8;
      }

      v22 = v8[1];
      *v8 = v21 + 1;
      *(v22 + 4 * v21) = v13;
      if (*a3 <= v14)
      {
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v14;
      }

      v23 = *v14;
      v7 = v14;
      if (v23 != v9)
      {
        v38 = &a5[(v23 & a5[4])];
        v39 = *(v38 + 6);
        v40 = *(v38 + 7) ^ v23;

        return v39(a1);
      }
    }
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, this, a3, a4, a5, a6, a7);
}

void google::protobuf::internal::TcParser::FastErP1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 1), &v10);
  }
}

void google::protobuf::internal::TcParser::FastErP2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1536>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 2), &v10);
  }
}

void google::protobuf::internal::TcParser::FastEvP1(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned char,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 1), &v10);
  }
}

void google::protobuf::internal::TcParser::FastEvP2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v14 = v7;
    v15 = v8;
    *&v10 = *(&a5[4 * BYTE3(a4)] + *(a5 + 6));
    *(&v10 + 1) = a1;
    v11 = a5;
    v12 = v9;
    v13 = a1 + HIWORD(a4);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1}>(char const*,char const* google::protobuf::internal::TcParser::PackedEnum<unsigned short,(unsigned short)1024>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1})::{lambda(int)#1}>(a3, (a2 + 2), &v10);
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr0S1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = a2[1];
  if (v7 > BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 2);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v9;
    }

    return v8;
  }

  else
  {
    v10 = *v8;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr0S2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = a2[2];
  if (v7 > BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 3);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v9;
    }

    return v8;
  }

  else
  {
    v10 = *v8;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr1S1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = a2[1];
  if ((v7 - 1) >= BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 2);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v9;
    }

    return v8;
  }

  else
  {
    v10 = *v8;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr1S2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  v7 = a2[2];
  if ((v7 - 1) >= BYTE3(a4))
  {
    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  *(a1 + HIWORD(a4)) = v7;
  v8 = (a2 + 3);
  v9 = (1 << SBYTE2(a4)) | a6;
  if (*a3 <= v8)
  {
    if (*a5)
    {
      *(a1 + *a5) |= v9;
    }

    return v8;
  }

  else
  {
    v10 = *v8;
    v11 = &a5[(v10 & a5[4])];
    v12 = *(v11 + 7) ^ v10;
    return (*(v11 + 6))();
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr0R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    v7 = a2 + 2;
    v8 = v9;
    v10 = BYTE3(a4);
    v11 = (a1 + HIWORD(a4));
    while (1)
    {
      v12 = *(v7 - 1);
      if (v12 > v10)
      {
        a2 = v7 - 2;
        goto LABEL_12;
      }

      a7 = *v11;
      v13 = HIDWORD(*v11);
      v14 = *v11;
      if (v14 == v13)
      {
        v17 = a3;
        v18 = a1;
        v19 = v7;
        v20 = a6;
        v21 = a5;
        google::protobuf::RepeatedField<int>::Grow(v11, HIDWORD(*v11), (v13 + 1));
        a3 = v17;
        a1 = v18;
        v7 = v19;
        a5 = v21;
        a6 = v20;
        v14 = v11->i32[0];
      }

      v15 = v11[1];
      v11->i32[0] = v14 + 1;
      *(*&v15 + 4 * v14) = v12;
      if (*a3 <= v7)
      {
        break;
      }

      v16 = *v7;
      v7 += 2;
      if (v16 != v8)
      {
        v23 = *(v7 - 1);
        v22 = v7 - 2;
        v24 = &a5[v23 & a5[4]];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v23;

        return v25(a1, v22);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v7;
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr0R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = *a2;
    v7 = (a2 + 3);
    v8 = v9;
    v10 = BYTE3(a4);
    v11 = (a1 + HIWORD(a4));
    while (1)
    {
      v12 = *(v7 - 1);
      if (v12 > v10)
      {
        a2 = v7 - 3;
        goto LABEL_12;
      }

      a7 = *v11;
      v13 = HIDWORD(*v11);
      v14 = *v11;
      if (v14 == v13)
      {
        v18 = a3;
        v19 = a1;
        v20 = v7;
        v21 = a6;
        v22 = a5;
        google::protobuf::RepeatedField<int>::Grow(v11, HIDWORD(*v11), (v13 + 1));
        v7 = v20;
        a3 = v18;
        a1 = v19;
        a5 = v22;
        a6 = v21;
        v14 = v11->i32[0];
      }

      v15 = v11[1];
      v11->i32[0] = v14 + 1;
      *(*&v15 + 4 * v14) = v12;
      if (*a3 <= v7)
      {
        break;
      }

      v17 = *v7;
      v7 = (v7 + 3);
      v16 = v17;
      if (v17 != v8)
      {
        v23 = &a5[(v16 & a5[4])];
        v24 = *(v23 + 6);
        v25 = v7 - 3;
        v26 = *(v23 + 7) ^ v16;

        return v24(a1, v25);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v7;
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr1R1(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = a2 + 2;
    v9 = v10;
    while (1)
    {
      v11 = *(v8 - 1);
      if ((v11 - 1) >= BYTE3(a4))
      {
        a2 = v8 - 2;
        goto LABEL_12;
      }

      a7 = *v7;
      v12 = HIDWORD(*v7);
      v13 = *v7;
      if (v13 == v12)
      {
        v16 = a3;
        v17 = a1;
        v18 = v8;
        v19 = a6;
        v20 = a5;
        v21 = a4;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v12 + 1));
        a4 = v21;
        a3 = v16;
        a1 = v17;
        v8 = v18;
        a5 = v20;
        a6 = v19;
        v13 = v7->i32[0];
      }

      v14 = v7[1];
      v7->i32[0] = v13 + 1;
      *(*&v14 + 4 * v13) = v11;
      if (*a3 <= v8)
      {
        break;
      }

      v15 = *v8;
      v8 += 2;
      if (v15 != v9)
      {
        v23 = *(v8 - 1);
        v22 = v8 - 2;
        v24 = &a5[v23 & a5[4]];
        v25 = *(v24 + 6);
        v26 = *(v24 + 7) ^ v23;

        return v25(a1, v22);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

uint64_t google::protobuf::internal::TcParser::FastEr1R2(uint64_t a1, unsigned __int8 *a2, void *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {
LABEL_12:

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v7 = (a1 + HIWORD(a4));
    v10 = *a2;
    v8 = (a2 + 3);
    v9 = v10;
    while (1)
    {
      v11 = *(v8 - 1);
      if ((v11 - 1) >= BYTE3(a4))
      {
        a2 = v8 - 3;
        goto LABEL_12;
      }

      a7 = *v7;
      v12 = HIDWORD(*v7);
      v13 = *v7;
      if (v13 == v12)
      {
        v17 = a3;
        v18 = a1;
        v19 = v8;
        v20 = a6;
        v21 = a5;
        v22 = a4;
        google::protobuf::RepeatedField<int>::Grow(v7, HIDWORD(*v7), (v12 + 1));
        a4 = v22;
        v8 = v19;
        a3 = v17;
        a1 = v18;
        a5 = v21;
        a6 = v20;
        v13 = v7->i32[0];
      }

      v14 = v7[1];
      v7->i32[0] = v13 + 1;
      *(*&v14 + 4 * v13) = v11;
      if (*a3 <= v8)
      {
        break;
      }

      v16 = *v8;
      v8 = (v8 + 3);
      v15 = v16;
      if (v16 != v9)
      {
        v23 = &a5[(v15 & a5[4])];
        v24 = *(v23 + 6);
        v25 = v8 - 3;
        v26 = *(v23 + 7) ^ v15;

        return v24(a1, v25);
      }
    }

    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    return v8;
  }
}

void google::protobuf::internal::TcParser::FastEr0P1(uint64_t a1, uint64_t a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10);
  }
}

void google::protobuf::internal::TcParser::FastEr0P2(uint64_t a1, __int16 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)0>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10);
  }
}

void google::protobuf::internal::TcParser::FastEr1P1(uint64_t a1, uint64_t a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned char,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10);
  }
}

void google::protobuf::internal::TcParser::FastEr1P2(uint64_t a1, __int16 *a2, int *a3, unint64_t a4, _WORD *a5, int a6, int8x8_t a7)
{
  if (a4)
  {

    google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    if (*a5)
    {
      *(a1 + *a5) |= a6;
    }

    v15 = v7;
    v16 = v8;
    v9 = *a2;
    LOBYTE(v11) = BYTE3(a4);
    *(&v11 + 1) = a1;
    v12 = a5;
    v13 = v9;
    v14 = (a1 + HIWORD(a4));
    v10[0] = v14;
    v10[1] = a3;
    v10[2] = (a2 + 1);
    google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#1},char const* google::protobuf::internal::TcParser::PackedEnumSmallRange<unsigned short,(unsigned char)1>(google::protobuf::MessageLite *,char const*,google::protobuf::internal::ParseContext *,google::protobuf::internal::TcFieldData,google::protobuf::internal::TcParseTableBase const*,unsigned long long)::{lambda(int)#2}>(a3, (a2 + 1), &v11, v10);
  }
}

unsigned __int16 *google::protobuf::internal::TcParser::FastBS1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 1), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v23;
    if (v23)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *v17;
        v19 = &a5[(v18 & a5[4])];
        v20 = *(v19 + 6);
        v21 = *(v19 + 7) ^ v18;

        return v20(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastBS2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 2), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v23;
    if (v23)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *v17;
        v19 = &a5[(v18 & a5[4])];
        v20 = *(v19 + 6);
        v21 = *(v19 + 7) ^ v18;

        return v20(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastSS1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 1), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v23;
    if (v23)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *v17;
        v19 = &a5[(v18 & a5[4])];
        v20 = *(v19 + 6);
        v21 = *(v19 + 7) ^ v18;

        return v20(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastSS2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, int a6, int8x8_t a7)
{
  if (!a4)
  {
    v10 = 1 << SBYTE2(a4);
    v11 = (a1 + HIWORD(a4));
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      v13 = v10 | a6;
      if (v12)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, (a2 + 2), v11, v12);
        v17 = v16;
        if (v16)
        {
          goto LABEL_5;
        }

LABEL_17:

        return google::protobuf::internal::TcParser::Error(a1, v17, v14, v15, a5, v13);
      }
    }

    else
    {
      v13 = v10 | a6;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v17 = v23;
    if (v23)
    {
LABEL_5:
      if (*this <= v17)
      {
        if (*a5)
        {
          *(a1 + *a5) |= v13;
        }

        return v17;
      }

      else
      {
        v18 = *v17;
        v19 = &a5[(v18 & a5[4])];
        v20 = *(v19 + 6);
        v21 = *(v19 + 7) ^ v18;

        return v20(a1);
      }
    }

    goto LABEL_17;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUS1(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v12 = *a2;
    v10 = (a2 + 1);
    v11 = v12;
    v13 = 1 << SBYTE2(a4);
    v14 = (a1 + HIWORD(a4));
    v15 = *(a1 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      v16 = v13 | a6;
      if (v15)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, v10, v14, v15);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

LABEL_11:
        v24 = (*v14 & 0xFFFFFFFFFFFFFFFCLL);
        v25 = v24[23];
        if (v25 < 0)
        {
          v24 = *v24;
          v25 = *((*v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        if (utf8_range::IsStructurallyValid(v24, v25))
        {
          if (*this <= v21)
          {
            if (*a5)
            {
              *(a1 + *a5) |= v16;
            }

            return v21;
          }

          else
          {
            v30 = *v21;
            v31 = &a5[(v30 & a5[4])];
            v32 = *(v31 + 6);
            v33 = *(v31 + 7) ^ v30;

            return v32(a1, v21, this, v33, a5, v16);
          }
        }

        google::protobuf::internal::TcParser::ReportFastUtf8Error(v11, a5, v26, v27, v28, v29);
LABEL_22:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, v16);
      }
    }

    else
    {
      v16 = v13 | a6;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v21 = v23;
    if (!v23)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

unsigned __int16 *google::protobuf::internal::TcParser::FastUS2(uint64_t a1, unsigned __int8 *a2, google::protobuf::internal::EpsCopyInputStream *this, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (!a4)
  {
    v12 = *a2;
    v10 = (a2 + 2);
    v11 = v12;
    v13 = 1 << SBYTE2(a4);
    v14 = (a1 + HIWORD(a4));
    v15 = *(a1 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      v16 = v13 | a6;
      if (v15)
      {
LABEL_4:
        google::protobuf::internal::EpsCopyInputStream::ReadArenaString(this, v10, v14, v15);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

LABEL_11:
        v24 = (*v14 & 0xFFFFFFFFFFFFFFFCLL);
        v25 = v24[23];
        if (v25 < 0)
        {
          v24 = *v24;
          v25 = *((*v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        if (utf8_range::IsStructurallyValid(v24, v25))
        {
          if (*this <= v21)
          {
            if (*a5)
            {
              *(a1 + *a5) |= v16;
            }

            return v21;
          }

          else
          {
            v30 = *v21;
            v31 = &a5[(v30 & a5[4])];
            v32 = *(v31 + 6);
            v33 = *(v31 + 7) ^ v30;

            return v32(a1, v21, this, v33, a5, v16);
          }
        }

        google::protobuf::internal::TcParser::ReportFastUtf8Error((v11 + v11) >> 1, a5, v26, v27, v28, v29);
LABEL_22:

        return google::protobuf::internal::TcParser::Error(a1, v17, v18, v19, a5, v16);
      }
    }

    else
    {
      v16 = v13 | a6;
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v21 = v23;
    if (!v23)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  return google::protobuf::internal::TcParser::MiniParse(a1, a2, this, a4, a5, a6, a7);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastBR1(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v11 = *a2;
    v12 = a1 + HIWORD(a4);
    if (!*(v12 + 16) || (v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v13 + 8) != *v14))
    {
      result = a2;
      goto LABEL_24;
    }

    v15 = v13;
    v16 = *v12;
    if (*v12)
    {
      v17 = *(v16 - 1);
    }

    else
    {
      v17 = v16 != 0;
    }

    result = a2;
    if (v17 == *(v12 + 8))
    {
      v19 = *(v15 + 16);
      while (1)
      {
        v20 = *(result + 1);
        if (*(result + 1) < 0)
        {
          google::protobuf::internal::ReadSizeFallback((result + 1), v20);
          if (!v30)
          {
            goto LABEL_34;
          }

          v21 = v30;
          LODWORD(v20) = v26;
          v22 = *(v19 + 5);
          if (v22)
          {
LABEL_11:
            v23 = v22 - 24;
            *(v19 + 5) = v23;
            v24 = (*(v19 + 4) + v23 + 16);
            v24->__r_.__value_.__r.__words[0] = 0;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v25 = *(v12 + 8);
            if (v25 > *(v12 + 12))
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v21 = result + 2;
          v22 = *(v19 + 5);
          if (v22)
          {
            goto LABEL_11;
          }
        }

        v24 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v19);
        v24->__r_.__value_.__r.__words[0] = 0;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v25 = *(v12 + 8);
        if (v25 > *(v12 + 12))
        {
LABEL_22:
          v31 = v24;
          v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
          v24 = v31;
          *v32 = v31;
          ++*(*v12 - 1);
          v25 = *(v12 + 8);
          goto LABEL_15;
        }

LABEL_12:
        if (*v12)
        {
          *(*v12 + 8 * v25 + 7) = v24;
          ++*(*v12 - 1);
        }

        else
        {
          *v12 = v24;
        }

LABEL_15:
        *(v12 + 8) = v25 + 1;
        result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v21, v20, v24);
        if (!result)
        {
          goto LABEL_34;
        }

        v29 = *a3;
        if (*a3 <= result)
        {
          goto LABEL_31;
        }

        if (*result != v11)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_24:
    while (1)
    {
      v33 = result;
      v34 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser(v34, v33 + 1);
      if (!result)
      {
        break;
      }

      v29 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_31;
      }

      if (*result != v11)
      {
LABEL_27:
        if (v29 > result)
        {
          v35 = *result;
          v36 = &a5[(v35 & a5[4])];
          v37 = *(v36 + 6);
          v38 = *(v36 + 7) ^ v35;

          return v37(a1, result, a3, v38, a5, a6);
        }

LABEL_31:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_34:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastBR2(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v11 = *a2;
    v12 = a1 + HIWORD(a4);
    if (!*(v12 + 16) || (v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v13 + 8) != *v14))
    {
      result = a2;
      goto LABEL_24;
    }

    v15 = v13;
    v16 = *v12;
    if (*v12)
    {
      v17 = *(v16 - 1);
    }

    else
    {
      v17 = v16 != 0;
    }

    result = a2;
    if (v17 == *(v12 + 8))
    {
      v19 = *(v15 + 16);
      while (1)
      {
        v20 = *(result + 2);
        if (*(result + 2) < 0)
        {
          google::protobuf::internal::ReadSizeFallback((result + 2), v20);
          if (!v31)
          {
            goto LABEL_34;
          }

          v21 = v31;
          LODWORD(v20) = v26;
          v22 = *(v19 + 5);
          if (v22)
          {
LABEL_11:
            v23 = v22 - 24;
            *(v19 + 5) = v23;
            v24 = (*(v19 + 4) + v23 + 16);
            v24->__r_.__value_.__r.__words[0] = 0;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v25 = *(v12 + 8);
            if (v25 > *(v12 + 12))
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v21 = result + 3;
          v22 = *(v19 + 5);
          if (v22)
          {
            goto LABEL_11;
          }
        }

        v24 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v19);
        v24->__r_.__value_.__r.__words[0] = 0;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v25 = *(v12 + 8);
        if (v25 > *(v12 + 12))
        {
LABEL_22:
          v32 = v24;
          v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
          v24 = v32;
          *v33 = v32;
          ++*(*v12 - 1);
          v25 = *(v12 + 8);
          goto LABEL_15;
        }

LABEL_12:
        if (*v12)
        {
          *(*v12 + 8 * v25 + 7) = v24;
          ++*(*v12 - 1);
        }

        else
        {
          *v12 = v24;
        }

LABEL_15:
        *(v12 + 8) = v25 + 1;
        result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v21, v20, v24);
        if (!result)
        {
          goto LABEL_34;
        }

        v29 = *a3;
        if (*a3 <= result)
        {
          goto LABEL_31;
        }

        v30 = *result;
        if (v30 != v11)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_24:
    while (1)
    {
      v34 = result;
      v35 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser(v35, v34 + 2);
      if (!result)
      {
        break;
      }

      v29 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_31;
      }

      v30 = *result;
      if (v30 != v11)
      {
LABEL_27:
        if (v29 > result)
        {
          v36 = &a5[v30 & a5[4]];
          v37 = *(v36 + 6);
          v38 = *(v36 + 7) ^ v30;

          return v37(a1, result, a3, v38, a5, a6);
        }

LABEL_31:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_34:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastSR1(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v11 = *a2;
    v12 = a1 + HIWORD(a4);
    if (!*(v12 + 16) || (v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v13 + 8) != *v14))
    {
      result = a2;
      goto LABEL_24;
    }

    v15 = v13;
    v16 = *v12;
    if (*v12)
    {
      v17 = *(v16 - 1);
    }

    else
    {
      v17 = v16 != 0;
    }

    result = a2;
    if (v17 == *(v12 + 8))
    {
      v19 = *(v15 + 16);
      while (1)
      {
        v20 = *(result + 1);
        if (*(result + 1) < 0)
        {
          google::protobuf::internal::ReadSizeFallback((result + 1), v20);
          if (!v30)
          {
            goto LABEL_34;
          }

          v21 = v30;
          LODWORD(v20) = v26;
          v22 = *(v19 + 5);
          if (v22)
          {
LABEL_11:
            v23 = v22 - 24;
            *(v19 + 5) = v23;
            v24 = (*(v19 + 4) + v23 + 16);
            v24->__r_.__value_.__r.__words[0] = 0;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v25 = *(v12 + 8);
            if (v25 > *(v12 + 12))
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v21 = result + 2;
          v22 = *(v19 + 5);
          if (v22)
          {
            goto LABEL_11;
          }
        }

        v24 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v19);
        v24->__r_.__value_.__r.__words[0] = 0;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v25 = *(v12 + 8);
        if (v25 > *(v12 + 12))
        {
LABEL_22:
          v31 = v24;
          v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
          v24 = v31;
          *v32 = v31;
          ++*(*v12 - 1);
          v25 = *(v12 + 8);
          goto LABEL_15;
        }

LABEL_12:
        if (*v12)
        {
          *(*v12 + 8 * v25 + 7) = v24;
          ++*(*v12 - 1);
        }

        else
        {
          *v12 = v24;
        }

LABEL_15:
        *(v12 + 8) = v25 + 1;
        result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v21, v20, v24);
        if (!result)
        {
          goto LABEL_34;
        }

        v29 = *a3;
        if (*a3 <= result)
        {
          goto LABEL_31;
        }

        if (*result != v11)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_24:
    while (1)
    {
      v33 = result;
      v34 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser(v34, v33 + 1);
      if (!result)
      {
        break;
      }

      v29 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_31;
      }

      if (*result != v11)
      {
LABEL_27:
        if (v29 > result)
        {
          v35 = *result;
          v36 = &a5[(v35 & a5[4])];
          v37 = *(v36 + 6);
          v38 = *(v36 + 7) ^ v35;

          return v37(a1, result, a3, v38, a5, a6);
        }

LABEL_31:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_34:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::TcParser::FastSR2(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v11 = *a2;
    v12 = a1 + HIWORD(a4);
    if (!*(v12 + 16) || (v13 = google::protobuf::internal::ThreadSafeArena::thread_cache_(), *(v13 + 8) != *v14))
    {
      result = a2;
      goto LABEL_24;
    }

    v15 = v13;
    v16 = *v12;
    if (*v12)
    {
      v17 = *(v16 - 1);
    }

    else
    {
      v17 = v16 != 0;
    }

    result = a2;
    if (v17 == *(v12 + 8))
    {
      v19 = *(v15 + 16);
      while (1)
      {
        v20 = *(result + 2);
        if (*(result + 2) < 0)
        {
          google::protobuf::internal::ReadSizeFallback((result + 2), v20);
          if (!v31)
          {
            goto LABEL_34;
          }

          v21 = v31;
          LODWORD(v20) = v26;
          v22 = *(v19 + 5);
          if (v22)
          {
LABEL_11:
            v23 = v22 - 24;
            *(v19 + 5) = v23;
            v24 = (*(v19 + 4) + v23 + 16);
            v24->__r_.__value_.__r.__words[0] = 0;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v25 = *(v12 + 8);
            if (v25 > *(v12 + 12))
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v21 = result + 3;
          v22 = *(v19 + 5);
          if (v22)
          {
            goto LABEL_11;
          }
        }

        v24 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v19);
        v24->__r_.__value_.__r.__words[0] = 0;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v25 = *(v12 + 8);
        if (v25 > *(v12 + 12))
        {
LABEL_22:
          v32 = v24;
          v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v12, 1);
          v24 = v32;
          *v33 = v32;
          ++*(*v12 - 1);
          v25 = *(v12 + 8);
          goto LABEL_15;
        }

LABEL_12:
        if (*v12)
        {
          *(*v12 + 8 * v25 + 7) = v24;
          ++*(*v12 - 1);
        }

        else
        {
          *v12 = v24;
        }

LABEL_15:
        *(v12 + 8) = v25 + 1;
        result = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v21, v20, v24);
        if (!result)
        {
          goto LABEL_34;
        }

        v29 = *a3;
        if (*a3 <= result)
        {
          goto LABEL_31;
        }

        v30 = *result;
        if (v30 != v11)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_24:
    while (1)
    {
      v34 = result;
      v35 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v12);
      result = google::protobuf::internal::InlineGreedyStringParser(v35, v34 + 2);
      if (!result)
      {
        break;
      }

      v29 = *a3;
      if (*a3 <= result)
      {
        goto LABEL_31;
      }

      v30 = *result;
      if (v30 != v11)
      {
LABEL_27:
        if (v29 > result)
        {
          v36 = &a5[v30 & a5[4]];
          v37 = *(v36 + 6);
          v38 = *(v36 + 7) ^ v30;

          return v37(a1, result, a3, v38, a5, a6);
        }

LABEL_31:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return result;
      }
    }

LABEL_34:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

uint64_t google::protobuf::internal::TcParser::FastUR1(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = a1 + HIWORD(a4);
    if (*(v13 + 16))
    {
      v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
      if (*(v14 + 8) == *v15)
      {
        v16 = *v13;
        v17 = (*v13 & 1) != 0 ? *(v16 - 1) : v16 != 0;
        if (v17 == *(v13 + 8))
        {
          v18 = *(v14 + 16);
          while (1)
          {
            v19 = v10[1];
            if (v10[1] < 0)
            {
              google::protobuf::internal::ReadSizeFallback((v10 + 1), v10[1]);
              if (!v37)
              {
                goto LABEL_45;
              }

              v20 = v37;
              v19 = v26;
              v21 = *(v18 + 5);
              if (v21)
              {
LABEL_11:
                v22 = v21 - 24;
                *(v18 + 5) = v22;
                v23 = (*(v18 + 4) + v22 + 16);
                v23->__r_.__value_.__r.__words[0] = 0;
                v23->__r_.__value_.__l.__size_ = 0;
                v23->__r_.__value_.__r.__words[2] = 0;
                v24 = *(v13 + 8);
                if (v24 <= *(v13 + 12))
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v20 = v10 + 2;
              v21 = *(v18 + 5);
              if (v21)
              {
                goto LABEL_11;
              }
            }

            v23 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v18);
            v23->__r_.__value_.__r.__words[0] = 0;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v24 = *(v13 + 8);
            if (v24 <= *(v13 + 12))
            {
LABEL_12:
              if (*v13)
              {
                *(*v13 + 8 * v24 + 7) = v23;
                ++*(*v13 - 1);
              }

              else
              {
                *v13 = v23;
              }

              goto LABEL_15;
            }

LABEL_27:
            v38 = v23;
            v39 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v13, 1);
            v23 = v38;
            *v39 = v38;
            ++*(*v13 - 1);
            v24 = *(v13 + 8);
LABEL_15:
            *(v13 + 8) = v24 + 1;
            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v20, v19, v23);
            if (!String)
            {
              goto LABEL_45;
            }

            v10 = String;
            v29 = *v13 + 8 * *(v13 + 8) - 1;
            if ((*v13 & 1) == 0)
            {
              v29 = v13;
            }

            v30 = *v29;
            v31 = *(*v29 + 23);
            if (v31 < 0)
            {
              v30 = *v30;
              v31 = *(*v29 + 8);
            }

            if (!utf8_range::IsStructurallyValid(v30, v31))
            {
              goto LABEL_44;
            }

            v36 = *a3;
            if (*a3 <= v10)
            {
              goto LABEL_41;
            }

            if (*v10 != v12)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (1)
    {
      v40 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v13);
      v41 = google::protobuf::internal::InlineGreedyStringParser(v40, v10 + 1);
      if (!v41)
      {
        break;
      }

      v10 = v41;
      v42 = *v13 + 8 * *(v13 + 8) - 1;
      if ((*v13 & 1) == 0)
      {
        v42 = v13;
      }

      v43 = *v42;
      v44 = *(*v42 + 23);
      if (v44 < 0)
      {
        v43 = *v43;
        v44 = *(*v42 + 8);
      }

      if (!utf8_range::IsStructurallyValid(v43, v44))
      {
LABEL_44:
        google::protobuf::internal::TcParser::ReportFastUtf8Error(v12, a5, v32, v33, v34, v35);
        break;
      }

      v36 = *a3;
      if (*a3 <= v10)
      {
        goto LABEL_41;
      }

      if (*v10 != v12)
      {
LABEL_37:
        if (v36 > v10)
        {
          v45 = *v10;
          v46 = &a5[(v45 & a5[4])];
          v47 = *(v46 + 6);
          v48 = *(v46 + 7) ^ v45;

          return v47(a1, v10, a3, v48, a5, a6);
        }

LABEL_41:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v10;
      }
    }

LABEL_45:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

uint64_t google::protobuf::internal::TcParser::FastUR2(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, int8x8_t a7)
{
  v10 = a2;
  if (a4)
  {

    return google::protobuf::internal::TcParser::MiniParse(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v12 = *a2;
    v13 = a1 + HIWORD(a4);
    if (*(v13 + 16))
    {
      v14 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
      if (*(v14 + 8) == *v15)
      {
        v16 = *v13;
        v17 = (*v13 & 1) != 0 ? *(v16 - 1) : v16 != 0;
        if (v17 == *(v13 + 8))
        {
          v18 = *(v14 + 16);
          while (1)
          {
            v19 = v10[2];
            if (v10[2] < 0)
            {
              google::protobuf::internal::ReadSizeFallback((v10 + 2), v10[2]);
              if (!v38)
              {
                goto LABEL_45;
              }

              v20 = v38;
              v19 = v26;
              v21 = *(v18 + 5);
              if (v21)
              {
LABEL_11:
                v22 = v21 - 24;
                *(v18 + 5) = v22;
                v23 = (*(v18 + 4) + v22 + 16);
                v23->__r_.__value_.__r.__words[0] = 0;
                v23->__r_.__value_.__l.__size_ = 0;
                v23->__r_.__value_.__r.__words[2] = 0;
                v24 = *(v13 + 8);
                if (v24 <= *(v13 + 12))
                {
                  goto LABEL_12;
                }

                goto LABEL_27;
              }
            }

            else
            {
              v20 = v10 + 3;
              v21 = *(v18 + 5);
              if (v21)
              {
                goto LABEL_11;
              }
            }

            v23 = google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(v18);
            v23->__r_.__value_.__r.__words[0] = 0;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v24 = *(v13 + 8);
            if (v24 <= *(v13 + 12))
            {
LABEL_12:
              if (*v13)
              {
                *(*v13 + 8 * v24 + 7) = v23;
                ++*(*v13 - 1);
              }

              else
              {
                *v13 = v23;
              }

              goto LABEL_15;
            }

LABEL_27:
            v39 = v23;
            v40 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(v13, 1);
            v23 = v39;
            *v40 = v39;
            ++*(*v13 - 1);
            v24 = *(v13 + 8);
LABEL_15:
            *(v13 + 8) = v24 + 1;
            String = google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v20, v19, v23);
            if (!String)
            {
              goto LABEL_45;
            }

            v10 = String;
            v29 = *v13 + 8 * *(v13 + 8) - 1;
            if ((*v13 & 1) == 0)
            {
              v29 = v13;
            }

            v30 = *v29;
            v31 = *(*v29 + 23);
            if (v31 < 0)
            {
              v30 = *v30;
              v31 = *(*v29 + 8);
            }

            if (!utf8_range::IsStructurallyValid(v30, v31))
            {
              goto LABEL_44;
            }

            v36 = *a3;
            if (*a3 <= v10)
            {
              goto LABEL_41;
            }

            v37 = *v10;
            if (v37 != v12)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

    while (1)
    {
      v41 = google::protobuf::internal::RepeatedPtrFieldBase::AddString(v13);
      v42 = google::protobuf::internal::InlineGreedyStringParser(v41, v10 + 2);
      if (!v42)
      {
        break;
      }

      v10 = v42;
      v43 = *v13 + 8 * *(v13 + 8) - 1;
      if ((*v13 & 1) == 0)
      {
        v43 = v13;
      }

      v44 = *v43;
      v45 = *(*v43 + 23);
      if (v45 < 0)
      {
        v44 = *v44;
        v45 = *(*v43 + 8);
      }

      if (!utf8_range::IsStructurallyValid(v44, v45))
      {
LABEL_44:
        google::protobuf::internal::TcParser::ReportFastUtf8Error((v12 + v12) >> 1, a5, v32, v33, v34, v35);
        break;
      }

      v36 = *a3;
      if (*a3 <= v10)
      {
        goto LABEL_41;
      }

      v37 = *v10;
      if (v37 != v12)
      {
LABEL_37:
        if (v36 > v10)
        {
          v46 = &a5[v37 & a5[4]];
          v47 = *(v46 + 6);
          v48 = *(v46 + 7) ^ v37;

          return v47(a1, v10, a3, v48, a5, a6);
        }

LABEL_41:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return v10;
      }
    }

LABEL_45:

    return google::protobuf::internal::TcParser::Error(a1, v26, v27, v28, a5, a6);
  }
}

uint64_t google::protobuf::internal::TcParser::ChangeOneof(uint64_t a1, uint64_t a2, int a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + 4);
  v9 = *(a6 + v8);
  *(a6 + v8) = a3;
  if (!v9)
  {
    return 1;
  }

  if (v9 == a3)
  {
    return 0;
  }

  v12 = v6;
  v13 = v7;
  google::protobuf::internal::TcParser::ChangeOneof(a1, v9, a6, &v11, a4);
  return v11;
}

uint64_t google::protobuf::internal::TcParser::MpVerifyUtf8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 != 1024)
  {
    return 1;
  }

  if (utf8_range::IsStructurallyValid(a1, a2))
  {
    return 1;
  }

  v9 = (*(a3 + 24) + a3 + 8 * *(a3 + 22));
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a4 - a3 - *(a3 + 16)) >> 2);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  v13 = &v9[v10 + 1];
  if (!v11)
  {
    if (v12 < 4)
    {
      v14 = (*(a3 + 20) + 8) & 0x1FFF8;
      v15 = (*(a3 + 24) + a3 + 8 * *(a3 + 22));
      goto LABEL_21;
    }

    if (v12 >= 0x10)
    {
      v16 = v12 & 0xFFFFFFFFFFFFFFF0;
      v17 = 0uLL;
      v18 = ((*(a3 + 20) + 8) & 0x1FFF8);
      v7.i32[1] = -255;
      v19 = v12 & 0xFFFFFFFFFFFFFFF0;
      v20 = (*(a3 + 24) + a3 + 8 * *(a3 + 22));
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = *v20++;
        v28 = vqtbl1q_s8(v27, xmmword_23CE4EF60);
        v29 = vqtbl1q_s8(v27, xmmword_23CE4EF70);
        v30 = vqtbl1q_s8(v27, xmmword_23CE4EF80);
        v31 = vqtbl1q_s8(v27, xmmword_23CE4EF90);
        v17 = vaddw_high_u32(v17, v29);
        v22 = vaddw_high_u32(v22, v28);
        v21 = vaddw_u32(v21, *v28.i8);
        v18 = vaddw_u32(v18, *v29.i8);
        v23 = vaddw_u32(v23, *v30.i8);
        v24 = vaddw_high_u32(v24, v30);
        v25 = vaddw_u32(v25, *v31.i8);
        v26 = vaddw_high_u32(v26, v31);
        v19 -= 16;
      }

      while (v19);
      v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v18, v23), vaddq_s64(v21, v25)), vaddq_s64(vaddq_s64(v17, v24), vaddq_s64(v22, v26))));
      if (v12 == v16)
      {
        goto LABEL_22;
      }

      if ((v12 & 0xC) == 0)
      {
        v15 = &v9[v16];
        do
        {
LABEL_21:
          v41 = *v15++;
          v14 += v41;
        }

        while (v15 != v13);
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
      v14 = (*(a3 + 20) + 8) & 0x1FFF8;
    }

    v15 = &v9[v12 & 0xFFFFFFFFFFFFFFFCLL];
    v32 = 0uLL;
    v33 = v14;
    v34 = &v9[v16];
    v35 = v16 - (v12 & 0xFFFFFFFFFFFFFFFCLL);
    v36.i64[0] = 255;
    v36.i64[1] = 255;
    do
    {
      v37 = *v34;
      v34 += 4;
      v7.i32[0] = v37;
      v38 = vmovl_u16(*&vmovl_u8(*v7.i8));
      v39.i64[0] = v38.u32[0];
      v39.i64[1] = v38.u32[1];
      v40 = vandq_s8(v39, v36);
      v39.i64[0] = v38.u32[2];
      v39.i64[1] = v38.u32[3];
      v7 = vandq_s8(v39, v36);
      v32 = vaddq_s64(v32, v7);
      v33 = vaddq_s64(v33, v40);
      v35 += 4;
    }

    while (v35);
    v14 = vaddvq_s64(vaddq_s64(v33, v32));
    if (v12 == (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = (*(a3 + 20) + 8) & 0x1FFF8;
LABEL_22:
  google::protobuf::internal::PrintUTF8ErrorLog(&v9[(*(a3 + 20) + 8) & 0x1FFF8], *v9, &v9[v14], *v13, "parsing");
  return 0;
}

void google::protobuf::internal::TcParser::WriteMapEntryAsUnknown(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  __p = 0;
  v25 = 0;
  v26 = 0;
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, &__p);
  v29 = v31;
  v30 = v31;
  v32 = v23;
  v33 = 0;
  v34 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  v35 = 0;
  v36 = v31;
  v37 = google::protobuf::io::StringOutputStream::ByteCount(v23);
  v28 = 0;
  v27 = 0;
  v10 = google::protobuf::io::StringOutputStream::Next(v23, &v28, &v27);
  if (v27 > 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    v13 = v28;
    if (v27 <= 0x10)
    {
      v14 = &v31[v27];
    }

    else
    {
      v14 = v28 + v27 - 16;
    }

    if (v27 <= 0x10)
    {
      v15 = v28;
    }

    else
    {
      v15 = 0;
    }

    if (v27 <= 0x10)
    {
      v13 = v31;
    }

    v29 = v14;
    v30 = v15;
    v36 = v13;
  }

  if ((a5 & 7u) > 1)
  {
    if ((a5 & 7) == 2)
    {
      google::protobuf::internal::WireFormatLite::WriteString(1, (a4 + 8), &v29);
    }

    else
    {
      google::protobuf::internal::WireFormatLite::WriteFixed32(1, *(a4 + 8), &v29, v11);
    }
  }

  else if ((a5 & 7) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteFixed64(1, *(a4 + 8), &v29, v11);
  }

  else
  {
    v16 = (a5 >> 3) & 7;
    if (v16 == 2)
    {
      if ((a5 & 0x40) != 0)
      {
        google::protobuf::internal::WireFormatLite::WriteSInt64(1, *(a4 + 8), &v29, v11);
      }

      else
      {
        google::protobuf::internal::WireFormatLite::WriteInt64(1, *(a4 + 8), &v29, v11);
      }
    }

    else if (v16 == 1)
    {
      if ((a5 & 0x40) != 0)
      {
        google::protobuf::internal::WireFormatLite::WriteSInt32(1, *(a4 + 8), &v29, v11);
      }

      else
      {
        v17 = *(a4 + 8);
        if ((a5 & 0x80) != 0)
        {
          google::protobuf::internal::WireFormatLite::WriteInt32(1, v17, &v29, v11);
        }

        else
        {
          google::protobuf::internal::WireFormatLite::WriteUInt32(1, v17, &v29, v11);
        }
      }
    }

    else
    {
      google::protobuf::internal::WireFormatLite::WriteBool(1, *(a4 + 8) & 1, &v29, v11);
    }
  }

  google::protobuf::internal::WireFormatLite::WriteInt32(2, *(a4 + WORD2(a5)), &v29, v18);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(&v29);
  v19 = *((*(a2 + 40))(0, 0, 0, 0, 0, 0) + 8);
  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v26 >= 0)
  {
    v21 = HIBYTE(v26);
  }

  else
  {
    v21 = v25;
  }

  v19(a1, a3 >> 3, p_p, v21);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23CD5869C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::TcParser::DestroyMapNode(void **__p, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x38) == 0x18 && *(__p + 31) < 0)
  {
    v7 = a2;
    operator delete(__p[1]);
    WORD2(a2) = WORD2(v7);
    v5 = (v7 >> 11) & 7;
    if (v5 != 4)
    {
      goto LABEL_4;
    }

LABEL_10:
    (**(__p + WORD2(a2)))(__p + WORD2(a2));
    if (*(a3 + 24))
    {
      return;
    }

    goto LABEL_11;
  }

  v5 = (a2 >> 11) & 7;
  if (v5 == 4)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v5 == 3)
  {
    v6 = (__p + WORD2(a2));
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }
  }

  if (!*(a3 + 24))
  {
LABEL_11:

    operator delete(__p);
  }
}

void google::protobuf::internal::TcParser::ParseOneMapEntry(uint64_t a1, google::protobuf::internal *done, google::protobuf::internal::EpsCopyInputStream *this, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = *a4 & 7 | 8;
  v11 = (*a4 >> 8) & 7 | 0x10;
  v12 = WORD2(*a4);
  v13 = *a4 >> 8;
  while (1)
  {
    if (done < *this)
    {
      goto LABEL_4;
    }

    v30 = (done - *(this + 2));
    if (*(this + 7) == v30)
    {
      break;
    }

    done = google::protobuf::internal::EpsCopyInputStream::DoneFallback(this, v30, *(this + 23));
    if (v31)
    {
      return;
    }

LABEL_4:
    LODWORD(v14) = *done;
    if (v10 == v14 || v11 == v14)
    {
      LODWORD(v14) = v14;
      v16 = done + 1;
      goto LABEL_10;
    }

    v16 = done + 1;
    if ((v14 & 0x80) == 0)
    {
      if (v14 != v10 && v14 != v11)
      {
        goto LABEL_54;
      }

      goto LABEL_10;
    }

    v14 = (v14 + (*v16 << 7) - 128);
    if (*v16 < 0)
    {
      google::protobuf::internal::ReadTagFallback(done, v14);
      v16 = v34;
      if (v14 == v10 || v14 == v11)
      {
        goto LABEL_10;
      }

LABEL_54:
      if (!v16)
      {
        return;
      }

      if (!v14 || (v14 & 7) == 4)
      {
        *(this + 20) = v14 - 1;
        return;
      }

      done = google::protobuf::internal::UnknownFieldParse(v14, 0, v16, this);
      if (!done)
      {
        return;
      }
    }

    else
    {
      v16 = done + 2;
      if (v14 != v10 && v14 != v11)
      {
        goto LABEL_54;
      }

LABEL_10:
      if (v14 == v10)
      {
        v17 = v9;
      }

      else
      {
        v17 = v13;
      }

      if (v14 == v10)
      {
        v18 = 8;
      }

      else
      {
        v18 = v12;
      }

      v19 = a1 + v18;
      if ((v17 & 7) > 1)
      {
        if ((v17 & 7) == 2)
        {
          if ((v17 & 0x38) == 0x18)
          {
            if (*v16 < 0)
            {
              google::protobuf::internal::ReadSizeFallback(v16, *v16);
              if (!v22)
              {
                return;
              }

              done = google::protobuf::internal::EpsCopyInputStream::ReadString(this, v22, v23, v19);
              if (!done)
              {
                return;
              }
            }

            else
            {
              done = google::protobuf::internal::EpsCopyInputStream::ReadString(this, v16 + 1, *v16, v19);
              if (!done)
              {
                return;
              }
            }

            if ((v17 & 0x40) != 0 && (v9 & 0x40000) != 0)
            {
              v24 = *(v19 + 23);
              if (v24 < 0)
              {
                v28 = done;
                IsStructurallyValid = utf8_range::IsStructurallyValid(*v19, *(v19 + 8));
                done = v28;
                if (!IsStructurallyValid)
                {
LABEL_74:
                  v36 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
                  v37 = 0xAAAAAAAAAAAAAAABLL * ((a6 - a5 - *(a5 + 16)) >> 2);
                  v38 = __CFADD__(v37, 1);
                  v39 = v37 + 1;
                  v40 = &v36[v37 + 1];
                  if (v38)
                  {
                    v41 = (*(a5 + 20) + 8) & 0x1FFF8;
LABEL_91:
                    google::protobuf::internal::PrintUTF8ErrorLog(&v36[(*(a5 + 20) + 8) & 0x1FFF8], *v36, &v36[v41], *v40, "parsing");
                    return;
                  }

                  if (v39 < 4)
                  {
                    v41 = (*(a5 + 20) + 8) & 0x1FFF8;
                    v42 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
                    goto LABEL_90;
                  }

                  if (v39 >= 0x10)
                  {
                    v43 = v39 & 0xFFFFFFFFFFFFFFF0;
                    v44 = 0uLL;
                    v45 = ((*(a5 + 20) + 8) & 0x1FFF8);
                    v27.i32[1] = -255;
                    v46 = v39 & 0xFFFFFFFFFFFFFFF0;
                    v47 = (*(a5 + 24) + a5 + 8 * *(a5 + 22));
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    do
                    {
                      v54 = *v47++;
                      v55 = vqtbl1q_s8(v54, xmmword_23CE4EF60);
                      v56 = vqtbl1q_s8(v54, xmmword_23CE4EF70);
                      v57 = vqtbl1q_s8(v54, xmmword_23CE4EF80);
                      v58 = vqtbl1q_s8(v54, xmmword_23CE4EF90);
                      v44 = vaddw_high_u32(v44, v56);
                      v49 = vaddw_high_u32(v49, v55);
                      v48 = vaddw_u32(v48, *v55.i8);
                      v45 = vaddw_u32(v45, *v56.i8);
                      v50 = vaddw_u32(v50, *v57.i8);
                      v51 = vaddw_high_u32(v51, v57);
                      v52 = vaddw_u32(v52, *v58.i8);
                      v53 = vaddw_high_u32(v53, v58);
                      v46 -= 16;
                    }

                    while (v46);
                    v41 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v45, v50), vaddq_s64(v48, v52)), vaddq_s64(vaddq_s64(v44, v51), vaddq_s64(v49, v53))));
                    if (v39 == v43)
                    {
                      goto LABEL_91;
                    }

                    if ((v39 & 0xC) == 0)
                    {
                      v42 = &v36[v43];
                      do
                      {
LABEL_90:
                        v68 = *v42++;
                        v41 += v68;
                      }

                      while (v42 != v40);
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v43 = 0;
                    v41 = (*(a5 + 20) + 8) & 0x1FFF8;
                  }

                  v42 = &v36[v39 & 0xFFFFFFFFFFFFFFFCLL];
                  v59 = 0uLL;
                  v60 = v41;
                  v61 = &v36[v43];
                  v62 = v43 - (v39 & 0xFFFFFFFFFFFFFFFCLL);
                  v63.i64[0] = 255;
                  v63.i64[1] = 255;
                  do
                  {
                    v64 = *v61;
                    v61 += 4;
                    v27.i32[0] = v64;
                    v65 = vmovl_u16(*&vmovl_u8(*v27.i8));
                    v66.i64[0] = v65.u32[0];
                    v66.i64[1] = v65.u32[1];
                    v67 = vandq_s8(v66, v63);
                    v66.i64[0] = v65.u32[2];
                    v66.i64[1] = v65.u32[3];
                    v27 = vandq_s8(v66, v63);
                    v59 = vaddq_s64(v59, v27);
                    v60 = vaddq_s64(v60, v67);
                    v62 += 4;
                  }

                  while (v62);
                  v41 = vaddvq_s64(vaddq_s64(v60, v59));
                  if (v39 == (v39 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_90;
                }
              }

              else
              {
                v25 = done;
                v26 = utf8_range::IsStructurallyValid(v19, v24);
                done = v25;
                if (!v26)
                {
                  goto LABEL_74;
                }
              }
            }
          }

          else
          {
            done = google::protobuf::internal::ParseContext::ParseMessage(this, v19, v16);
            if (!done)
            {
              return;
            }
          }
        }

        else
        {
          *v19 = *v16;
          done = (v16 + 4);
        }
      }

      else if ((v17 & 7) != 0)
      {
        *v19 = *v16;
        done = (v16 + 8);
      }

      else
      {
        *v71 = 0;
        if ((*v16 & 0x80) != 0)
        {
          if ((*v16 & 0x8000) != 0)
          {
            done = google::protobuf::internal::VarintParseSlowArm(v16, v71, *v16);
            if (!done)
            {
              return;
            }

            v20 = *v71;
          }

          else
          {
            v20 = *v16 & 0x7FLL | (((*v16 >> 8) & 0x7FLL) << 7);
            done = (v16 + 2);
          }
        }

        else
        {
          v20 = *v16 & 0x7FLL;
          done = (v16 + 1);
        }

        v21 = (v17 >> 3) & 7;
        if (v21 == 2)
        {
          if ((v17 & 0x40) != 0)
          {
            v20 = -(v20 & 1) ^ (v20 >> 1);
          }

          *v19 = v20;
        }

        else if (v21 == 1)
        {
          if ((v17 & 0x40) != 0)
          {
            LODWORD(v20) = -(v20 & 1) ^ (v20 >> 1);
          }

          *v19 = v20;
        }

        else
        {
          *v19 = v20 != 0;
        }
      }
    }
  }

  if (v30 >= 1)
  {
    *(this + 2);
  }
}

void google::protobuf::internal::TcParser::MpVarint<false>(uint64_t a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3, unint64_t a4, unsigned __int16 *a5, uint64_t a6, __n128 a7)
{
  v7 = (a5 + HIDWORD(a4));
  v8 = *(v7 + 5);
  v9 = v8 & 0x30;
  if (v9 == 32)
  {

    google::protobuf::internal::TcParser::MpRepeatedVarint<false>(a1, this, a3, a4, a5, a6);
    return;
  }

  if ((a4 & 7) != 0)
  {
    v10 = *(a5 + 5);
LABEL_36:

    v10(a1, this, a3, a4);
    return;
  }

  *v47 = 0;
  v11 = *this;
  if ((*this & 0x80) != 0)
  {
    if ((v11 & 0x8000) != 0)
    {
      v42 = v8;
      v40 = a3;
      v41 = a4;
      v44 = a6;
      v46 = a1;
      v43 = a5;
      v35 = this;
      v36 = google::protobuf::internal::VarintParseSlowArm(this, v47, v11);
      if (!v36)
      {

        google::protobuf::internal::TcParser::Error(v46, v37, v38, v39, v43, v44);
        return;
      }

      v13 = v36;
      a1 = v46;
      v12 = *v47;
      a5 = v43;
      a6 = v44;
      a3 = v40;
      a4 = v41;
      this = v35;
      v8 = v42;
    }

    else
    {
      v12 = *this & 0x7FLL | (((*this >> 8) & 0x7FLL) << 7);
      v13 = (this + 2);
    }
  }

  else
  {
    v12 = *this & 0x7FLL;
    v13 = (this + 1);
  }

  v14 = v8 & 0x600;
  v15 = v8 & 0x1C0;
  if (v15 == 192)
  {
    v16 = -(v12 & 1) ^ (v12 >> 1);
    goto LABEL_11;
  }

  if (v15 != 128)
  {
    goto LABEL_22;
  }

  if ((v8 & 0x400) == 0)
  {
    v16 = (-(v12 & 1) ^ (v12 >> 1));
LABEL_11:
    if (v14 == 512)
    {
      v12 = v16;
    }

LABEL_22:
    if (v9 == 48)
    {
      v21 = a1;
      v22 = a3;
      v23 = a5;
      v24 = a6;
      google::protobuf::internal::TcParser::ChangeOneof(a5, v7, a4 >> 3, a7, a4, a1);
      a3 = v22;
      a1 = v21;
      a5 = v23;
      LODWORD(a6) = v24;
      if (v15 == 192)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v9 == 16)
      {
        *(a1 + ((v7[1] >> 3) & 0x1FFFFFFC)) |= 1 << v7[1];
      }

      if (v15 == 192)
      {
LABEL_26:
        *(a1 + *v7) = v12;
        if (*a3 > v13)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }
    }

    v25 = *v7;
    if (v15 == 128)
    {
      *(a1 + v25) = v12;
      if (*a3 <= v13)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(a1 + v25) = v12 != 0;
      if (*a3 <= v13)
      {
LABEL_31:
        if (*a5)
        {
          *(a1 + *a5) |= a6;
        }

        return;
      }
    }

LABEL_35:
    v26 = *v13;
    v27 = &a5[(v26 & a5[4])];
    v10 = *(v27 + 6);
    a4 = *(v27 + 7) ^ v26;
    this = v13;
    goto LABEL_36;
  }

  v17 = *(&a5[4 * *(v7 + 4)] + *(a5 + 6));
  if (v14 == 1536)
  {
    v18 = v17;
    v19 = v17 + (v17 >> 16);
    if (v18 <= v12 && v19 > v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v45 = a1;
    v28 = this;
    v29 = a6;
    v30 = a5;
    v31 = a3;
    v32 = a4;
    v33 = google::protobuf::internal::ValidateEnum(v12, v17, a3);
    this = v28;
    a4 = v32;
    a3 = v31;
    a5 = v30;
    a6 = v29;
    v34 = v33;
    a1 = *v45;
    if (v34)
    {
      goto LABEL_22;
    }
  }

  google::protobuf::internal::TcParser::MpUnknownEnumFallback(a1, this, a3, a4, a5, a6);
}