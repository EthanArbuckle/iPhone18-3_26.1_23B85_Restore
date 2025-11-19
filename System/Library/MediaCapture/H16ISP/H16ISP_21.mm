uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x277D85DE8];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x277D85DE8];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

void H16ISPGraphExclaveANDKNode::onMessageProcessing(int a1, _DWORD *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "onMessageProcessing";
    v7 = 1024;
    v8 = a1;
    _os_log_error_impl(&dword_2247DB000, v4, OS_LOG_TYPE_ERROR, "%s - Failed to run ANDK algorithm, ret=0x%X\n", &v5, 0x12u);
  }

  *a2 = a1;
}

void H16ISPGraphExclaveANDKNode::onMessageProcessing(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "onMessageProcessing";
    _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - ANDK Graph Node Message invalid\n", &v3, 0xCu);
  }

  *a1 = -536870206;
}

void H16ISPGraphExclaveRGBANDKNode::runANDKAlgorithm(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "EK ANDK RunKit Command failed, ret=%d\n", v2, 8u);
}

void DisjointSet::SetRoot()
{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 109, "nRoot <= i");
}

{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 105, "nRoot <= i");
}

void H16ISP::H16ISPGraphExclaveEyeReliefNode::onMessageProcessing(int a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "onMessageProcessing";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "[Exclaves] H16ISPGraphExclaveEyeReliefNode::%s EK Runkit ER Runkit failed for reqid 0x%08X ret %d\n", &v3, 0x18u);
}

void H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to create pixel buffer, res=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to allocate buffer, res=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Cannot allocate buffer, buffer pool is uninitialized and automatic allocation mode is enabled, res=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Pixel buffer reference is null, res=0x%08x\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to allocate buffer, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to set buffer configuration, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pH16ISPDevice->ISP_SendBuffers failed, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to allocate buffer ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to set buffer configuration ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - failed to send %u buffers ret=0x%08x\n", v3, 0x18u);
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - failed to run face kit first pass err=%u reqid=0x%08x\n", v3, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - unrecognized confidence level=%u\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - unrecognized failure type=%u\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to copy decoded face tracking output cvaret=%d\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to create result dictionary for reqid=0x%08x\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "updateEnabledObjects";
  _os_log_debug_impl(&dword_2247DB000, log, OS_LOG_TYPE_DEBUG, "%s - Updating the enabled objects array!\n", &v1, 0xCu);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Face Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Head Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5(&dword_2247DB000, v0, v1, "%s - [Exclaves]: Number of Hand Detections requested is %u, Secure ANST maximum support is %u, truncating output!\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::onMessageProcessing(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "onMessageProcessing";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Skipped processing object detection algorithm!\n", &v3, 0xCu);
  }

  *a1 = 0;
}

void H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::InvokeEKRunKit(_DWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "InvokeEKRunKit";
    v5 = 1024;
    v6 = 0;
    _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: IR EK Object Detection RunKit failed, EK result=%{BOOL}d\n", &v3, 0x12u);
  }

  *a1 = -536870166;
}

void H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary()
{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate face dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate head dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate hand dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate human full body dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate human body dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate cat body dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate cat head dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate dog body dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - [Exclaves]: Could not allocate dog head dictionary! Skipping!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_3_0(v1);
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "GenerateRGBObjectDictionary";
    _os_log_impl(&dword_2247DB000, v0, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Could not allocate memory for detected objects info dictionary!\n", &v2, 0xCu);
  }
}

void H16ISP::ProjectorManager::applyUserDefinedType()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  LOWORD(v3) = 1024;
  HIWORD(v3) = v0;
  OUTLINED_FUNCTION_3_1(&dword_2247DB000, v0, v1, "User defined projector mode: mode %d - pulse %d is not a number\n", v2, v3);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISP::ProjectorManager::applyUserDefinedType(const __CFArray *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109632;
  v4[1] = a2;
  v5 = 2048;
  Count = CFArrayGetCount(a1);
  v7 = 1024;
  v8 = 6;
  _os_log_error_impl(&dword_2247DB000, a3, OS_LOG_TYPE_ERROR, "User defined projector mode: mode %d has %ld parameters. Expecting %d\n", v4, 0x18u);
}

void H16ISP::ProjectorManager::applyUserDefinedType(_WORD *a1, uint64_t a2, NSObject *a3)
{
  LOWORD(v3) = 1024;
  HIWORD(v3) = *a1;
  OUTLINED_FUNCTION_3_1(&dword_2247DB000, a2, a3, "User defined projector mode: Failed to add LUT entry for user-defined mode %d - actually mode %d\n", 67109376, v3);
}

void H16ISP::ProjectorManager::applyUserDefinedType(const __CFArray *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  Count = CFArrayGetCount(a1);
  v5 = 1024;
  v6 = 64;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "User defined projector mode: sequence length (%ld) over maximum (%d)\n", &v3, 0x12u);
}

void FLD::GetAFEDelayV()
{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 130, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 113, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 96, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 78, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 61, "false");
}

{
  __assert_rtn("GetAFEDelayV", "FLD.cpp", 138, "false");
}

void FLD::GetAFEAddress()
{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 175, "afeGeom.cellCountY >= delayV + 1");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 176, "afeGeom.cellStartY < afeGeom.cellCountY");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 192, "false");
}

{
  __assert_rtn("GetAFEAddress", "FLD.cpp", 222, "false");
}

void FLD::GetInputAFE()
{
  __assert_rtn("GetInputAFE", "FLD.cpp", 366, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 367, "afeGeom.initV == 2");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 360, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 361, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 356, "afeGeom.initV == 2 || afeGeom.initV == 3");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 355, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 348, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 461, "input.afeStride > 0");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 347, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "FLD.cpp", 372, "false");
}

void FLD::ComputeBinnedXtalk()
{
  __assert_rtn("nextH", "FLD.cpp", 276, "false");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 609, "h <= NROWSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 610, "w <= NCOLSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalk", "FLD.cpp", 543, "false");
}

void FLD::ComputeBinnedXtalkNeon()
{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 797, "h <= NROWSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 798, "w <= NCOLSMAX");
}

{
  __assert_rtn("ComputeBinnedXtalkNeon", "FLD.cpp", 653, "false");
}

void FLD::Process()
{
  __assert_rtn("Process", "FLD.cpp", 968, "false");
}

{
  __assert_rtn("Process", "FLD.cpp", 915, "pAfe != nullptr");
}

{
  __assert_rtn("Process", "FLD.cpp", 914, "pContext != nullptr");
}

void H16ISP::createPixelBufferPool(H16ISP *this, int a2, int a3, int a4, CVPixelBufferPoolRef *a5, __CVPixelBufferPool **a6)
{
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return;
  }

  v9 = Mutable;
  v10 = OUTLINED_FUNCTION_0_1();
  v13 = CFNumberCreate(v10, v11, v12);
  if (!v13)
  {
    v28 = v9;
LABEL_15:
    CFRelease(v28);
    return;
  }

  v14 = v13;
  v15 = OUTLINED_FUNCTION_0_1();
  v18 = CFNumberCreate(v15, v16, v17);
  if (!v18)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v19 = OUTLINED_FUNCTION_0_1();
  v22 = CFNumberCreate(v19, v20, v21);
  if (!v22)
  {
LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v23 = OUTLINED_FUNCTION_0_1();
  v26 = CFNumberCreate(v23, v24, v25);
  if (!v26)
  {
LABEL_20:
    v28 = 0;
    goto LABEL_8;
  }

  v27 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = v27;
  if (v27)
  {
    CFDictionarySetValue(v27, *MEMORY[0x277CC4DE8], v9);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4E30], v14);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4EC8], v18);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4DD8], v22);
    CFDictionarySetValue(v28, *MEMORY[0x277CC4E50], v26);
    CVPixelBufferPoolCreate(v7, 0, v28, a5);
  }

LABEL_8:
  CFRelease(v9);
  CFRelease(v14);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v28)
  {
    goto LABEL_15;
  }
}

void H16ISP::H16ISPGraphExclaveAttentionDetectionNode::onMessageProcessing(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "onMessageProcessing";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "[Exclaves] H16ISPGraphAttentionDetectionNode::%s AD RunKit failed, ret=%d\n", &v2, 0x12u);
}

void AppleH16PhotonDetectorDevice::ReadCalibrationData(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "ReadCalibrationData";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - Invalid buffer passed to read photon detector calibration data\n", &v1, 0xCu);
}

uint64_t H16ISPCaptureDeviceRelinquishStreams(uint64_t a1, __CFString *a2)
{
  result = 4294954516;
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(7u, DerivedStorage, 0, 0, 0, a2, 0);
    pthread_mutex_lock((DerivedStorage + 32));
    if (*DerivedStorage)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = os_log_create("com.apple.isp", "plugin");
      }

      if (OUTLINED_FUNCTION_41())
      {
        OUTLINED_FUNCTION_36();
        _os_log_error_impl(v36, v37, v38, v39, v40, 0xCu);
      }

      pthread_mutex_unlock((DerivedStorage + 32));
      return 4294954511;
    }

    else
    {
      LockStreamMutexes(*(DerivedStorage + 120));
      if (CFArrayGetCount(a2))
      {
        v6 = 0;
        v7 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(a2, v6);
          FigCaptureStreamGetFigBaseObject();
          v8 = CMBaseObjectGetDerivedStorage();
          if (*(v8 + 160))
          {
            break;
          }

          if (*(v8 + 1))
          {
            ++v7;
          }

          if (++v6 >= CFArrayGetCount(a2))
          {
            goto LABEL_17;
          }
        }

        UnlockStreamMutexes(*(DerivedStorage + 120));
        pthread_mutex_unlock((DerivedStorage + 32));
        return 4294954516;
      }

      else
      {
        v7 = 0;
LABEL_17:
        theArray = a2;
        if (CFArrayGetCount(*(DerivedStorage + 120)))
        {
          v9 = 0;
          v10 = 0;
          do
          {
            CFArrayGetValueAtIndex(*(DerivedStorage + 120), v9);
            FigCaptureStreamGetFigBaseObject();
            v11 = CMBaseObjectGetDerivedStorage();
            if (*(v11 + 1) || *(v11 + 2))
            {
              ++v10;
            }

            ++v9;
          }

          while (v9 < CFArrayGetCount(*(DerivedStorage + 120)));
        }

        else
        {
          v10 = 0;
        }

        if (v7 == v10)
        {
          v12 = *(DerivedStorage + 216);
          if (v12)
          {
            MEMORY[0x22AA55B60](v12, 0x1000C40488540DALL);
            *(DerivedStorage + 216) = 0;
            H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(DerivedStorage + 24));
          }
        }

        v13 = theArray;
        if (CFArrayGetCount(theArray))
        {
          v14 = 0;
          v15 = MEMORY[0x277D86220];
          v41 = DerivedStorage;
          do
          {
            CFArrayGetValueAtIndex(v13, v14);
            FigCaptureStreamGetFigBaseObject();
            v16 = CMBaseObjectGetDerivedStorage();
            if (!*v16)
            {
              v17 = v16;
              if (v16[1])
              {
                v18 = 0;
                v16[1] = 0;
                v16[4605] = 1;
                do
                {
                  v19 = v17 + v18;
                  if (*(v17 + v18 + 856))
                  {
                    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v20 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
                    }

                    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                    {
                      v21 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v21, v22, v23, "%s - primaryScalerOutput initialClientBuffers weren't released\n", v24, 0xCu);
                    }

                    CVPixelBufferRelease(*(v19 + 856));
                    *(v19 + 856) = 0;
                  }

                  if (*(v19 + 1056))
                  {
                    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v25 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
                    }

                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      v26 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v26, v27, v28, "%s - secondaryScalerOutput initialClientBuffers weren't released\n", v29, 0xCu);
                    }

                    CVPixelBufferRelease(*(v19 + 1056));
                    *(v19 + 1056) = 0;
                  }

                  v30 = v17 + v18;
                  if (*(v17 + v18 + 1256))
                  {
                    v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v15)
                    {
                      v31 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
                    }

                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      v32 = OUTLINED_FUNCTION_25();
                      _os_log_impl(v32, v33, v34, "%s - intermediateTapOutput initialClientBuffers weren't released\n", v35, 0xCu);
                    }

                    CVPixelBufferRelease(*(v30 + 1256));
                    *(v30 + 1256) = 0;
                  }

                  v18 += 8;
                }

                while (v18 != 32);
                DerivedStorage = v41;
                H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(v41 + 24), *(v17 + 156));
                SavePFLFile(v41, v17);
                v13 = theArray;
              }

              H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(DerivedStorage + 24), *(v17 + 156), 0, 0);
            }

            ++v14;
          }

          while (v14 < CFArrayGetCount(v13));
        }

        UnlockStreamMutexes(*(DerivedStorage + 120));
        pthread_mutex_unlock((DerivedStorage + 32));
        return 0;
      }
    }
  }

  return result;
}

void CopySupportedFormatsArray(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "ANSTFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "HITHFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "ANSTThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "PrePostLTMThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

{
  *a1 = 136315138;
  *a2 = "WSegThumbnailFeatureAnnounceSupport";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void SetMaximumAllowedFrameRate()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void SetFormatIndex()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetExternalSyncFrameRateRational()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void StillImageCaptureNow()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetTemporalNoiseReductionConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetFaceDetectionEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAFWindowParams()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void RawImageProcessGo()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetDeviceOrientation()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAWB1stGainManual()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetVideoOutputHandlers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetVideoOutputsEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetVideoOutputsEnabled(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void SetVideoOutputConfigurations()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetVideoOutputConfigurations(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

{
  OUTLINED_FUNCTION_5_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

uint64_t SetVideoOutputConfigurations(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  return a3 & 1;
}

void CopyVideoOutputConfigurations()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyGeometricDistortionCorrectedRects()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetVibeMitigationEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSynchronizedStreamsSlaveConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetColorSpace()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAPSMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void CopyAPSMode()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHighCurrentTorchEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAFCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAFCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSphereCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopySphereCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSphereEndStopCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopySphereEndStopCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAPSSphereInterCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSSphereInterCalibrationData()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetKeypointDetectionConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetSceneClassifierVersion()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetLumaHistogramEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetAutoExposureTables()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void TimeMachineSuspendNow()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyTimeMachinePTSRange()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetContentAwareEnhancement()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetContentAwareAWBEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyNRSharpeningConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSOffsetEstimatorInfo()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetStreamingTuningProfile()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetLTMCurve()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLSCStrength()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTimeLapseCaptureConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHDRImageStatisticsEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyTOFAutoFocusEstimatorResults()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyAutoFocusDriverShortStats()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetLocalHistogramsEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetDynamicVoltageEnable()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void EnableIRFramesToPDE()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetSIFROverrideMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetSplitPDOverrideMode()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetAPSActuator()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetMasterSlaveAPSFocus()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMasterSlaveContrastFocus()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLPDPFilterEnable()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetHighSpeedOutputLevel()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetLinkFrequencyIndex()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTestPattern()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void CopyAPSPosition()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetRawImageProcessStillFlowEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetReplayFrame()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetJasperBuiltInSequence()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void SetTimeOfFlightConfiguration()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetObjectDetectionConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetHDRFusionEnable()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSwitchingFormatIndex()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSwitchingFormatIndex(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void SetActiveNondisruptiveSwitchingFormats()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyFlashCalibrationData()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetFocusBehavior()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetExclaveTestSuite()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMainToSIFRFrameRateRatio()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetAWBTemporalStabilizationEnabled()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void CopyDCNUCVPixelBuffer()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetExternalSyncModeEnabled()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMLVNRConfiguration()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetPrimaryFrameSkip(uint64_t a1, CFArrayRef *a2)
{
  CFArrayGetCount(*a2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void SetPrimaryFrameSkip()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetActiveNondisruptiveStreamingFormats()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyStreamSensorRawOutputBufferPoolRequirements()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetStreamSensorRawOutputBufferPools()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetStreamSensorRawOutputRetainedBufferCounts()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CopyCalibratedRotationAngle()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetTorchBeamWidth(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void SetMultiIlluminantWhiteBalanceEnabled()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMaximumFrameRateForBufferAllocation(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void SetMaximumFrameRateForBufferAllocation(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void SetSIFRControlMode()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetCameraControlsCacheExpiryDuration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetCameraControlsCacheExpiryDuration(uint64_t a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void StartJasperForInternalStreaming()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureStreamStartInternal()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureStreamStartInternal(float *a1)
{
  OUTLINED_FUNCTION_26(*a1);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void StopJasperForInternalStreaming()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureStreamStopInternal()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetDefaultFormatIndexConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CopyGroupExtrinsics(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void SetGroupSynchronizationPrimary()
{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupMinSkippingRatio()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupMaxSlaveStreams()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupMaxSlaveTimeMachines()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetMidFrameSynchronizationEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetGroupNondisruptiveSwitchingFormatIndices()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetAWBStatisticsAveragingEnabled()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetAEMatchIntegrationTimes()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetSynchronizedStreamsSensorRawOutputBufferPools()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetGroupAEWindowParams()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupAFWindowParams()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupROIForCameraControls()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetGroupLumaHistogramROI()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void GroupStillImageCaptureNow()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetMultiCamConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetTOFAutoFocusEnabled()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetDARTCacheParameters()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetSensorAgileClockingEnable()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void SetProcessingSessionDefaultProcessingParameters()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPProcessingSessionCreate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void LogCaptureDeviceEvent()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPCaptureDeviceCreate_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPCaptureDeviceCreate_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_6()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_7()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPCaptureDeviceCreate_cold_10()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_11()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_12()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_13()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureDeviceCreate_cold_14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_15()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_16()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_17()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureDeviceCreate_cold_18()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_19()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureDeviceCreate_cold_20()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_21()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_22()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_23()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_24()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_25()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_26()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_27()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_28()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_30()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void H16ISPCaptureDeviceCreate_cold_31()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_32()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceCreate_cold_33()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ExclaveInitFlickerTimer()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void InitSupportedFormatsForCaptureStream(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "InitSupportedFormatsForCaptureStream";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void H16ISPCaptureDeviceInvalidate()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureDeviceInvalidate(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0);
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MyH16ISPDeviceMessageNotification()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MyH16ISPServicesRemoteNotification()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void MyH16ISPFrameReceivedProc()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPDebugDepthFrameFileWriter()
{
  if (__cxa_guard_acquire(&qword_2810037F8))
  {
    _MergedGlobals = dispatch_queue_create("Debug PCE Depth Writer", MEMORY[0x277D85CD8]);

    __cxa_guard_release(&qword_2810037F8);
  }
}

void LightSourceMaskInfoAttach()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void LightSourceMaskVersatileBayerPatternAttach()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ImageRegistrationInfoAttach()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetMinimumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMaximumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMinimumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMinimumAutoExposureFrameRate()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMaximumFrameRateNow()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetMaximumAutoExposureFrameRate()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclaveSetTargetFrameRate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ApplyNoiseReductionConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void AllocateAndSendOneShotBuffers()
{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void LaunchStillImageCapture()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ConfigureExternalStrobeParameters()
{
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v0 = os_log_create("com.apple.isp", "plugin");
    OUTLINED_FUNCTION_37(v0);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_36();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

{
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v0 = os_log_create("com.apple.isp", "plugin");
    OUTLINED_FUNCTION_37(v0);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_36();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

void AddCntxSwRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void GetFormatForHiResRaw()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateFaceDetectionOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivatePrimaryScalerOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateSecondaryScalerOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateIntermediateTapOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateStillImageOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateStillImageIntermediateTapOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateStillImageRawOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateProResRawOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ActivateVisPipeOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivatePointCloudOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ConfigureExclaveGraph()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_2247DB000, v0, OS_LOG_TYPE_FAULT, "%s - Failed to configure exclave streams, result=0x%08X\n\n", v1, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ActivateMetadataOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void DeactivatePrimaryScalerOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateSecondaryScalerOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateIntermediateTapOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateStillImageOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateStillImageIntermediateTapOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateStillImageRawOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void DeactivateMetadataOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void DeactivateProResRawOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void AddRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ColorRangeForOutputWithMatrix()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AddThumbnailRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void AddSushiRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void AddSashimiRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void AddSplitPixelDataToFrameReceiver()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void resizeStillMetaPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void resizeThumbnailRawPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void StartExclaveStreams()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_45();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_47(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_19();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

{
  OUTLINED_FUNCTION_45();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_47(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_19();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ExclavePreferenceApplyValues()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ExclavePreferenceRegisterNotifications()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void AddMetadataOutputBufferPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void RemoveMetadataOutputBufferPoolFromFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CheckOutputWidthAgainstPool()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void CheckOutputHeightAgainstPool()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void HandleSecureStreamOutputConfig(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "HandleSecureStreamOutputConfig";
  OUTLINED_FUNCTION_23();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void HandleSecureStreamOutputConfig(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "UpdateExclaveGraphNodeConfig";
  _os_log_debug_impl(&dword_2247DB000, log, OS_LOG_TYPE_DEBUG, "%s - Attempting to async update the exclave graph node!\n", &v1, 0xCu);
}

void HandleSecureStreamOutputConfig()
{
  OUTLINED_FUNCTION_45();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_47(v1);
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_49(&dword_2247DB000, v2, v3, "Exclave Graph does not have object detection node! skipping update!\n", v4, v5, v6, v7, 0);
  }
}

{
  OUTLINED_FUNCTION_45();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    OUTLINED_FUNCTION_47(v1);
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_49(&dword_2247DB000, v2, v3, "Exclave Graph not created! skipping update!\n", v4, v5, v6, v7, 0);
  }
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_2247DB000, v0, OS_LOG_TYPE_FAULT, "%s - Failed to power on Exclave Kit! result=0x%08X\n", v1, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMetadataOutputConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetMetadataOutputConfiguration(CFArrayRef *a1)
{
  CFArrayGetCount(*a1);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void PrimaryAndSecondaryScalerConfigUpdateAtomically()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void SetPrimaryScalerCrop()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void IntermediateTapOutputConfigUpdateAtomically()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void StillImageConfigUpdateAtomically()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void StopExclaveStreams()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void StopExclaveStreams(uint64_t a1, int a2, _DWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136315650;
    OUTLINED_FUNCTION_3_2();
    v8 = v6;
    v9 = a2;
    _os_log_error_impl(&dword_2247DB000, v5, OS_LOG_TYPE_ERROR, "%s - Unable to power off EK Channel:%d, result=0x%08X\n", v7, 0x18u);
  }

  *a3 = a2;
}

void SecureAlgorithmSetTargetFrameRate()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void SetHITHFeatureConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetANSTThumbnailFeatureConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetPrePostLTMThumbnailFeatureConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetWSegThumbnailFeatureConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void LightSourceMaskTunableConfigurationSendToFirmware()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetMetadataOutputBufferPoolConfiguration()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void IntermediateTapAndScalerConfigUpdateAtomically()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ScalerOutputConfigUpdateAtomically()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ApplySlaveConfiguration()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ApplyColorSpaceConfiguration()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ConfigSensorFormat()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void SetMetadataSectionRequired()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___ZL21CopyDCNUCVPixelBufferPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void SetSIFRCommonPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPEPipeReceivedProc()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void AddHiResRawPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void AddRawPlusPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ActivateStillImageQuadraOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ActivateRawOutputInFrameReceiver()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void AddDCSIMUDataPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void AddDCSNonVisionDataPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void Matrix<float>::MultAxBToC()
{
  __assert_rtn("MultAxBToC", "Matrix.hpp", 1561, "m_cols == B.Rows() && Input dimensions not legal");
}

{
  __assert_rtn("MultAxBToC", "Matrix.hpp", 1562, "m_rows == C->Rows() && B.Cols() == C->Cols() && Output dimensions not legal");
}

void ResetGroupSynchronization()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void ChannelMaskForSharedRawPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ChannelMaskForSharedHiResRawPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ChannelMaskForSharedRawPlusPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SetSharedBufferPoolConfigurations()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void H16ISPProcessingSessionInvalidate()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPProcessingSessionCopyProperty()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPProcessingSessionCopyProperty(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0);
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void H16ISPProcessingSessionSetProperty()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPProcessingSessionPrepare()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPProcessingSessionProcessBuffer()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISPProcessingSessionCompleteBuffers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPProcessingSessionProcessBuffers()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ISPProcessingSessionProcessBuffer()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ISPProcessingSessionProcessBufferGeneric()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ISPProcessingSessionProcessBuffers()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void SavePFLFile()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void H16ISPCaptureStreamInvalidate()
{
  OUTLINED_FUNCTION_33(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISPCaptureStreamStart()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_7()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureGroupCopyProperty()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureGroupSetProperty()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPCaptureGroupStop()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPMetadataDictCreatorGraphNode::onMessageProcessing(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 340);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "Unexpected binning mode 0x%08X\n", buf, 8u);
}

void H16ISP::H16ISPMetadataDictCreatorGraphNode::H16ISPMetadataDictCreatorGraphNode(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "H16ISPMetadataDictCreatorGraphNode";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - pixelSize_um is zero!\n", buf, 0xCu);
}

void ISPExclaveFiltrationThreadMain()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ISP_EXCLAVEKIT_CMD_CH_EXFILTRATION is failure Err: %d\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ISP_EXCLAVEKIT_CMD_CH_INFILTRATION is failure Err: %d\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPGraphExclaveExitNode::onMessageProcessing(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "onMessageProcessing";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Reqid: 0x%08X No valid secure metadata available\n", &v2, 0x12u);
}

void H16ISP::H16ISPGraphFaceTrackingNode::onActivate(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "onActivate";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Unknown projector version=%d\n", &v3, 0x12u);
}

void H16ISP::H16ISPGraphFaceTrackingNode::onActivate(uint64_t a1, _DWORD *a2)
{
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_2247DB000, v4, OS_LOG_TYPE_ERROR, "Error activating FaceTracking processing node\n", v6, 2u);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 88) = 0;
  }

  *a2 = -536870212;
}

void H16ISP::H16ISPDeviceController::SetupDeviceController(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = 136315394;
  v3 = "SetupDeviceController";
  v4 = 1024;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Timed out waiting for the driver to register service, deviceArrived = %d\n", &v2, 0x12u);
}

void H16ISP::H16ISPDeviceController::SetupDeviceController()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - IONotificationPortGetRunLoopSource returned NULL\n", &v0, 0xCu);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "SetupDeviceController";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - IONotificationPortCreate returned NULL\n", &v0, 0xCu);
}

void AppleH16PhotonDetectorServicesAssistant::SetupDevice(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - IONotificationPortGetRunLoopSource returned NULL\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - IONotificationPortCreate returned NULL\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create a device array\n", a5, a6, a7, a8, 2u);
}

void ParseDCSNonVisionDataBuffer(unsigned __int16 *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "ParseDCSNonVisionDataBuffer";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - ParseDCSNonVisionDataBuffer: Error: Hardware events encountered: %d\n\n", &v3, 0x12u);
}

void H16ISP::H16ISPGraphExclaveMotionDetectionNode::runMotionDetection(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "MotionDetectionResultCreateDictionaryRepresentation";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - unrecognized motion trigger result\n", &v1, 0xCu);
}

{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "MotionDetectionResultCreateDictionaryRepresentation";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - failed to allocate dictionary\n", &v1, 0xCu);
}

uint64_t H16ISP::VTOutputFrameCallback(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  std::chrono::steady_clock::now();
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 136315394;
    OUTLINED_FUNCTION_1_2();
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "%s - MCTF frame delay: %lldms\n", v8, 0x16u);
  }

  *(a1 + 88) = vaddq_s64(*(a1 + 88), xmmword_2249BC120);
  result = std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](a1 + 56, 1);
  *a3 = *a2;
  return result;
}

void H16ISP::VTOutputFrameCallback(CMTime *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = H16ISP::VTOutputFrameCallback(void *,int,unsigned int,CMTime,__CVBuffer *)::frameNumber;
  v5 = *a1;
  Seconds = CMTimeGetSeconds(&v5);
  LODWORD(v5.value) = 136315650;
  *(&v5.value + 4) = "VTOutputFrameCallback";
  LOWORD(v5.flags) = 2048;
  *(&v5.flags + 2) = v3;
  HIWORD(v5.epoch) = 2048;
  v6 = Seconds;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Expected frame: %llu, got: %lf\n", &v5, 0x20u);
}

void H16ISP::H16ISPGraphNodeMCTF::onMessageProcessing()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void StopAudioCaptureSession()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISPFlickerDetectorSetGain()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void H16ISPFlickerDetectorGetGain()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForHawking()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForPenrose()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForPenrose2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForGrimaldi()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForGrimaldi_iPad()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void inputCallbackForGrimaldiHighFreq()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void AllocateFlickerDetectorBuffers()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPServicesRemote::sendMessageSync()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPServicesRemote::sendMessageSync(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "sendMessageSync";
  _os_log_debug_impl(&dword_2247DB000, log, OS_LOG_TYPE_DEBUG, "%s - received reply\n", &v1, 0xCu);
}

void ___ZN6H16ISP20H16ISPServicesRemote16sendMessageAsyncEPv28H16ISPServicesRemoteProperty_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void H16ISP::H16ISPServicesRemote::Connect()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void Algo::Interp1WithExtrap<double>()
{
  __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1289, "xq.GetNumOfPoints() > 1");
}

{
  __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1285, "xq.GetNumOfPoints() > 1");
}

{
  __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1281, "xq.GetNumOfPoints() > 0");
}

{
  __assert_rtn("Interp1WithExtrap", "Algo.hpp", 1294, "0");
}

void Interp1SortedWithExtrap<double,LinearInterpolator<double>>()
{
  __assert_rtn("Interp1SortedWithExtrap", "Algo.hpp", 1376, "x.GetNumOfPoints() == v.GetNumOfPoints()");
}

{
  __assert_rtn("Interp1SortedWithExtrap", "Algo.hpp", 1377, "xqSorted.GetNumOfPoints() > 1");
}

void H16ISP::H16ISPGraphExclaveISPManagerNode::onMessageProcessing()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "[Exclaves]: H16ISPGraphExclaveISPManagerNode::%s EK ISP Manager RunKit failed, ret=%d\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "[Exclaves]: H16ISPGraphExclaveISPManagerNode::%s EK RGB ISP Manager POST PROCESS RunKit failed, ret=%d\n", v2, v3, v4, v5, 2u);
}

void H16ISP::GetPortTypeMap()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    *&xmmword_281003808 = *MEMORY[0x277CF3CD8];
    DWORD2(xmmword_281003808) = 1919246706;
    qword_281003818 = *MEMORY[0x277CF3D00];
    dword_281003820 = 1919251564;
    qword_281003828 = *MEMORY[0x277CF3CF8];
    dword_281003830 = 1919251319;
    qword_281003838 = *MEMORY[0x277CF3D08];
    dword_281003840 = 1718775412;
    qword_281003848 = *MEMORY[0x277CF3D20];
    dword_281003850 = 1718776695;
    qword_281003858 = *MEMORY[0x277CF3D10];
    dword_281003860 = 1718186595;
    qword_281003868 = @"BackIRCamera";
    dword_281003870 = 1769110115;
    qword_281003878 = *MEMORY[0x277CF3CE8];
    dword_281003880 = 1785950322;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void H16ISP::dictionaryValueEnumerator(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "createXpcFromType got a dictionary with null value (for key %s)", &v1, 0xCu);
}

void H16ISP::DCSAudioAccelManager::DestroyStreamSession()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Error stopping the audioBufferReceiver: result=0x%08X\n\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - removeBufferPoolToBufferReceiver failed: result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Could not destroy H16ISBufferReceiver: result=0x%08X\n\n", v2, v3, v4, v5, 2u);
}

void H16ISP::DCSAudioAccelManager::DestroyStreamSession(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - AudioAccel stream session destroyed\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - audioBufferReceiver does not exist\n", a5, a6, a7, a8, 2u);
}

void H16ISP::DCSAudioAccelManager::SetTestMode(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - AudioAccel streaming enabled, stop streaming with previous testMode\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - AudioAccel streaming enabled, start streaming with updated testMode\n", a5, a6, a7, a8, 2u);
}

void H16ISP::DCSAudioAccelManager::CreateStreamSession(unsigned __int16 *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315650;
  v4 = "CreateStreamSession";
  v5 = 1024;
  v6 = 43;
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - pool type not CISP_POOL_AUDIO_ACCEL_DATA = 0x%08X is 0x%08X\n", &v3, 0x18u);
}

void H16ISP::DCSAudioAccelManager::CreateStreamSession(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - audioBufferReceiver already exists\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_1_4(&dword_2247DB000, a1, a3, "%s - AudioAccel stream session created\n", a5, a6, a7, a8, 2u);
}

void H16ISP::DCSAudioAccelManager::CreateStreamSession()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Could not create H16ISBufferReceiver: result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Error starting the audioBufferReceiver: result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - addBufferPoolToBufferReceiver failed: result=0x%08X\n", v2, v3, v4, v5, 2u);
}

void GMC_ExtractTestSamples()
{
  __assert_rtn("operator()", "Matrix.hpp", 137, "index < m_rows * m_cols");
}

{
  __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
}

{
  __assert_rtn("GMC_ExtractTestSamples", "GMC_ExtractTestSamples.cpp", 92, "testSetSize == tsPtsIdx+1");
}

{
  __assert_rtn("GMC_ExtractTestSamples", "GMC_ExtractTestSamples.cpp", 93, "pts1.GetNumOfPoints() - testSetSize == newPts1->GetNumOfPoints()");
}

void SPD::Process()
{
  __assert_rtn("Process", "SPD.cpp", 395, "pSpd != nullptr");
}

{
  __assert_rtn("Process", "SPD.cpp", 394, "pContext != nullptr");
}

void H16ISP::MOVReader::fileAccessCheck(id *a1)
{
  [objc_msgSend(*a1 "description")];
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void H16ISP::MOVReader::getNextFrame(id *a1)
{
  [*a1 description];
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void H16ISP::MOVReader::getNextFrame()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "%s - Streaming pixel format is not YUV420: 0x%08X\n", v1, 0x12u);
}

{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "%s - Input file pixel format is not YUV420, 0x%08X\n", v1, 0x12u);
}

void H16ISP::MOVReader::getNextFrame(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferGetHeight(a1);
  CVPixelBufferGetHeight(a2);
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetWidth(a2);
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x34u);
}

void H16ISP::H16ISPGraphFrameSyncNode::DisableChannel(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "H16ISPGraphFrameSyncNode::DisableChannel - Error: Channel %d wasn't disabled.\n\n", v2, 8u);
}

void H16ISP::H16ISPPearlCalibrationNodeBase::shouldProcessByPearlMetadata(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 12);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "Pearl Calibration (MI): Won't run on unsupported reg type %d\n", v3, 8u);
}

void H16ISP::H16ISPPearlCalibrationNode::onDeactivate()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI) finalization: Timeout insufficient, algorithm state undetermined\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI) finalization: Failed to get PCE Calib\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): algorithm has completed unsuccessfully in daemon\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Input error: no depth buffer\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Input error: no color metadata\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Input error: no IR metadata\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Input error: no color buffer\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Input error: no IR buffer\n", v2, v3, v4, v5, v6);
}

void H16ISP::H16ISPFrameReceiver::stopReceive()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StopCamera error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ReturnAllUnusedBuffers error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StopFaceDetect error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Stop TNR error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Did not get all pending frames back from kernel. remaining: %d.\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to unregister epipe done callback in kernel , error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed enabling exclave streaming mode res=0x%08x\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - CISP_CMD_CH_PDE_OUTPUT_CONFIG error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Couldn't find matching pool for type %d\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pNewBufferPool->activatePool() failed, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPFrameReceiver::EnablePDEStreaming()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - CISP_CMD_CH_BUFFER_POOL_CONFIG_GET error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - CISP_CMD_CH_OUT_OF_BOUND_DEPTH_ENABLE error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to get camera info: 0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Failed to config pool (poolID=%d)\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pH16ISPDevice->ISP_SendBuffers failed, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::sendInitialDataBuffersToFirmware()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void H16ISP::H16ISPFrameReceiver::addDataBufferPoolToFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - data buffer pool not supported for pool type %d\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - data buffer pool not supported for pool type %d\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to return buffers in pool ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver(H16ISP::H16ISPFrameReceiverDataBufferPool **a1, int a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = H16ISP::H16ISPFrameReceiverDataBufferPool::NumBuffersSent(*a1);
  v6 = 136315650;
  v7 = "removeDataBufferPoolFromFrameReceiver";
  v8 = 1024;
  v9 = a2;
  v10 = 1024;
  v11 = v5;
  _os_log_error_impl(&dword_2247DB000, a3, OS_LOG_TYPE_ERROR, "%s - not all buffers returned! poolID: %d remaining: %d.\n\n", &v6, 0x18u);
}

void H16ISP::H16ISPFrameReceiver::startReceive()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Unable to register epipe done callback, res=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StartFaceDetect error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - Could not get Camera config error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - EnableTNR error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StartCamera error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StartReceive failed to send initial data buffers error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPFrameReceiver::StopChannels()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - StopCamera error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ReturnAllUnusedBuffers error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::setBufferConfig()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - SetBufferPoolConfiguration for exclave meta pool error: res=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - SetBufferPoolConfiguration error: res=0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - SetBufferPoolConfiguration(CISP_POOL_META_CAPTURE_FULL_RES) error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - SetBufferPoolConfiguration(CISP_POOL_META) error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to send ISP buffers ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

void ZF::RPC::Process_x1()
{
  __assert_rtn("Process_x1", "ZFRPC.cpp", 752, "false");
}

{
  __assert_rtn("Process_x1", "ZFRPC.cpp", 743, "pContext->geometry.tile.countX * pContext->geometry.tile.countY <= NTILES");
}

{
  __assert_rtn("Process_x1", "ZFRPC.cpp", 756, "false");
}

{
  __assert_rtn("Process_x1", "ZFRPC.cpp", 735, "pContext != nullptr");
}

{
  __assert_rtn("Process_x1", "ZFRPC.cpp", 734, "pIn0 != nullptr");
}

void ZF::RPC::Process_x2()
{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 778, "pContext->geometry.tile.countX * pContext->geometry.tile.countY <= NTILES");
}

{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 771, "false");
}

{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 786, "false");
}

{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 766, "pContext != nullptr");
}

{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 765, "pIn1 != nullptr");
}

{
  __assert_rtn("Process_x2", "ZFRPC.cpp", 764, "pIn0 != nullptr");
}

void H16ISP::H16ISPFilterGraphNode::EnqueueMessage(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 76);
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "Dropping message from filter graph node with type %d (queue size limit is %d)\n", v4, 0xEu);
}

void H16ISP::H16ISPExclaveGraphNode::GetModuleParams(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "GetModuleParams";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Could not access module parameters for channel=%u!\n", &v3, 0x12u);
}

void H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::onMessageProcessing(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "onMessageProcessing";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: face tracking secondary process failed! idl error=%u\n", &v2, 0x12u);
}

void H16ISPRgbIrRunner::validateFrame()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Current frame isn't suitable for algorithm (zero detected faces)\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Current frame isn't suitable for algorithm (no detected faces array)\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Current frame isn't suitable for algorithm (unstable AE)\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Don't know if AE is stable\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_5(&dword_2247DB000, v0, v1, "Pearl Calibration (MI): Current frame isn't suitable for algorithm (no color metadata)\n", v2, v3, v4, v5, v6);
}

void GeomUtils::check3of4SpotsOnSameLine()
{
  __assert_rtn("check3of4SpotsOnSameLine", "GeomUtils.cpp", 1113, "x1.Cols()==4 && x1.Rows()==3");
}

{
  __assert_rtn("check3of4SpotsOnSameLine", "GeomUtils.cpp", 1114, "x2.Cols()==4 && x2.Rows()==3");
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void Interp2<double,CubicInterpolator<double>>()
{
  __assert_rtn("Interp2", "Algo.hpp", 681, "x.GetNumOfPoints() == v.Cols()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 682, "y.GetNumOfPoints() == v.Rows()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 685, "xq.GetNumOfPoints() == yq.GetNumOfPoints()");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 684, "v.Rows() >= 2");
}

{
  __assert_rtn("Interp2", "Algo.hpp", 683, "v.Cols() >= 2");
}

void Interp1<double,LinearInterpolator<double>>()
{
  __assert_rtn("Interp1", "Algo.hpp", 1068, "xLen == v.GetNumOfPoints()");
}

{
  __assert_rtn("Interp1", "Algo.hpp", 1069, "xLen > 1");
}

void H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create primary usage references\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create device usage references\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create device matching array\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create device matching dictionary\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create a matching dictionary\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - Could not create HID event system client\n", a5, a6, a7, a8, 2u);
}

void H16ISP::H16ISPPhotometerManager::GetLuxInfo()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "%s - %s: Scheduling the lux query on the serial queue\n", v1, 0x16u);
}

void H16ISP::H16ISPPhotometerManager::GetLuxInfo(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v3 = 136315650;
  v4 = "GetLuxInfo";
  v5 = 2080;
  v6 = "GetLuxInfo";
  v7 = 1024;
  v8 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - %s: Sending lux, ret = 0x%x\n", &v3, 0x1Cu);
}

void ___ZN6H16ISP23H16ISPPhotometerManager10GetLuxInfoEP7luxInfo_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "%s - %s: Waiting for lux\n", v1, 0x16u);
}

void H16ISP::LoadFrontIRHPRFile(H16ISP *this, H16ISP::H16ISPDevice *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 255;
  if (!this)
  {
    return;
  }

  isSavageSensorSupported = H16ISP::H16ISPDevice::isSavageSensorSupported(this, &v30);
  v4 = MEMORY[0x277D86220];
  if (!isSavageSensorSupported)
  {
    goto LABEL_42;
  }

  v5 = *MEMORY[0x277CD2898];
  v6 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v5, v6);
  v8 = *MEMORY[0x277CBECE8];
  v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"LoadHPR", *MEMORY[0x277CBECE8], 0);
  v10 = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID() && !CFBooleanGetValue(v10))
    {
      CFRelease(v10);
      v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
      {
        v29 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v32 = "LoadFrontIRHPRFile";
        _os_log_error_impl(&dword_2247DB000, v29, OS_LOG_TYPE_ERROR, "%s - noHPR boot-arg set\n", buf, 0xCu);
      }

LABEL_42:
      v20 = 0;
      goto LABEL_43;
    }
  }

  v12 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageChipID", v8, 3u);
  if (v12)
  {
    v13 = v12;
    v14 = AMFDRCreateInstanceString();
    if (v14)
    {
      v15 = v14;
      v16 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageUID", v8, 3u);
      if (v16)
      {
        v17 = v16;
        v18 = AMFDRCreateInstanceString();
        if (v18)
        {
          v19 = v18;
          v20 = CFStringCreateWithFormat(v8, 0, @"%@-%@", v15, v18);
          CFRelease(v17);
          CFRelease(v19);
          goto LABEL_11;
        }

        NSLog(&cfstr_CouldnTCreateS_0.isa);
        CFRelease(v17);
      }

      else
      {
        NSLog(&cfstr_CouldnTReadSav_0.isa);
      }

      v20 = 0;
LABEL_11:
      CFRelease(v13);
      CFRelease(v15);
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    NSLog(&cfstr_CouldnTCreateS.isa);
    CFRelease(v13);
  }

  else
  {
    NSLog(&cfstr_CouldnTReadSav.isa);
  }

  v20 = 0;
  if (v10)
  {
LABEL_12:
    CFRelease(v10);
  }

LABEL_13:
  if (!v20)
  {
    NSLog(&cfstr_CouldnTCombine.isa);
LABEL_43:
    v26 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/usr/local/share/firmware/isp/Savage/FrontIRHPR.DER"];
  if (v21)
  {
    v22 = v21;
    NSLog(&cfstr_FoundFrontirOv.isa, v30);
    goto LABEL_16;
  }

  v22 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  if (v22)
  {
LABEL_16:
    BytePtr = CFDataGetBytePtr(v22);
    Length = CFDataGetLength(v22);
    DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v30 | 0x80000000, BytePtr, Length, 0x501u);
    v26 = CFCopyDescription(v22);
    v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
    {
      v27 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      CStringPtr = CFStringGetCStringPtr(v26, 0);
      *buf = 136315650;
      v32 = "LoadFrontIRHPRFile";
      v33 = 1024;
      v34[0] = DataFile;
      LOWORD(v34[1]) = 2080;
      *(&v34[1] + 2) = CStringPtr;
      _os_log_impl(&dword_2247DB000, v27, OS_LOG_TYPE_DEFAULT, "%s - Status = %08x; HPR - %s\n", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

  NSLog(&cfstr_NoHprFileForFr.isa);
  v26 = 0;
LABEL_20:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v26)
  {
    CFRelease(v26);
  }
}

void H16ISP::LoadSavageDATFile(const void *a1)
{
  NSLog(&cfstr_PdeviceIsNull.isa);
  if (a1)
  {
    CFRelease(a1);
  }
}

void flicker_data_processing(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 12);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "input/ouput buffer or parameter setting incorrect. win size %d \n\n", v3, 8u);
}

void SparseVector::AddWithFactor()
{
  __assert_rtn("AddWithFactor", "SparseMatrix.cpp", 468, "m_ownsData");
}

{
  __assert_rtn("AddValueToHelper", "SparseMatrix.hpp", 156, "pos<m_size && m_helperNNZ<m_maxNNZ");
}

void FigMotionGetGravityZ()
{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - ISP motion data size did not match expected number of bytes.\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - ISP motion data version is not supported.\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - Empty ISP motion data\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - Invalid ISP motion data\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - ISP motion data not available\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - NULL metadata dictionary\n", v4, v5, v6, v7, 2u);
  }
}

void FigMotionGetSensorValidCropRect(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6_0(&dword_2247DB000, a1, a3, "%s - SensorRawValidBufferRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6_0(&dword_2247DB000, a1, a3, "%s - TotalSensorCropRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6_0(&dword_2247DB000, a1, a3, "%s - RawCropRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6_0(&dword_2247DB000, a1, a3, "%s - Could not find any CropRect in the metadata dictionary!\n", &v3);
}

void FigMotionCalculateAdjustedLensPosition()
{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - Invalid lens coefficients!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - No CurrentFocusPosition!\n", v4, v5, v6, v7, 2u);
  }
}

{
  OUTLINED_FUNCTION_0_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4_1(v1);
  }

  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_1_0(&dword_2247DB000, v2, v3, "%s - No metadata dictionary!\n", v4, v5, v6, v7, 2u);
  }
}

void FigMotionComputeAverageSpherePosition()
{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - ISP Hall data size did not match expected number of bytes.\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - ISP Hall data version is not supported.\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1_6();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v1);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v2, v3, "%s - Invalid ISP Hall data\n", v4, v5, v6, v7, 2u);
  }

  OUTLINED_FUNCTION_7();
}

void FigMotionComputeAverageSpherePosition(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "FigMotionGetISPHallData";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Extracting only the first %d ISP Hall samples\n", &v2, 0x12u);
}

void FigMotionComputeAverageSpherePosition(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "FigMotionGetISPHallData";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Unsupported Hall data version %d\n", &v3, 0x12u);
}

void FigMotionComputeAverageSpherePosition(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_6();
  if (v1 == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v3);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v4, v5, "%s - FrameRollingShutterSkew missing from metadata\n", v6, v7, v8, v9, 2u);
  }

  *a1 = 0;
}

{
  OUTLINED_FUNCTION_1_6();
  if (v1 == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5_2(v3);
  }

  if (OUTLINED_FUNCTION_41())
  {
    OUTLINED_FUNCTION_3_3(&dword_2247DB000, v4, v5, "%s - ExposureTime missing from metadata\n", v6, v7, v8, v9, 2u);
  }

  *a1 = 0;
}

void PDAF::PixelEngine::SetupBuffers()
{
  __assert_rtn("SetupBuffers", "PDAFPixelEngine.cpp", 4458, "offset <= sizeof(pContext->mem)");
}

{
  __assert_rtn("SetupBuffers", "PDAFPixelEngine.cpp", 4454, "pContext != nullptr");
}

void PDAF::PixelEngine::Process_x1()
{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4490, "false");
}

{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4481, "pContext->geometry.tile.countX * pContext->geometry.tile.countY <= NTILES");
}

{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4474, "false");
}

{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4494, "false");
}

{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4464, "pContext != nullptr");
}

{
  __assert_rtn("Process_x1", "PDAFPixelEngine.cpp", 4463, "pIn0 != nullptr");
}

void PDAF::PixelEngine::anonymous namespace::Process()
{
  __assert_rtn("Process", "PDAFPixelEngine.cpp", 4414, "false");
}

{
  __assert_rtn("Process", "PDAFPixelEngine.cpp", 4435, "false");
}

{
  __assert_rtn("CorrProfile", "PDAFPixelEngine.cpp", 3451, "pContext->geometry.roi.cellCountX == geometryCorr.profileSize");
}

{
  __assert_rtn("CorrProfile", "PDAFPixelEngine.cpp", 3456, "pContext->geometry.roi.cellCountY == geometryCorr.profileSize");
}

{
  __assert_rtn("GetFocusPixelSamplingRateH", "PDAFPixelEngine.cpp", 270, "false");
}

{
  __assert_rtn("CorrPostProcess", "PDAFPixelEngine.cpp", 3882, "SamplingH == SamplingV");
}

{
  __assert_rtn("CorrAccumulate", "PDAFPixelEngine.cpp", 3619, "false");
}

{
  __assert_rtn("FlowPostProcess", "PDAFPixelEngine.cpp", 2605, "pContext->params.flow.levels[0] == 1");
}

{
  __assert_rtn("GetFocusPixelTypeCount", "PDAFPixelEngine.cpp", 246, "false");
}

{
  __assert_rtn("FlareEstimate", "PDAFPixelEngine.cpp", 2340, "flare.intensity <= Params::Flare::NINTENSITIES");
}

{
  __assert_rtn("FlowOutputLevel", "PDAFPixelEngine.cpp", 2491, "false");
}

{
  __assert_rtn("FlowOutputLevel", "PDAFPixelEngine.cpp", 2468, "level > 0");
}

{
  __assert_rtn("FlowOutputLevel", "PDAFPixelEngine.cpp", 2456, "level == 0");
}

{
  __assert_rtn("Process", "PDAFPixelEngine.cpp", 4439, "false");
}

{
  __assert_rtn("Process", "PDAFPixelEngine.cpp", 4398, "pContext->geometry.tile.countX * pContext->geometry.tile.countY <= NTILES");
}

void PDAF::PixelEngine::Process_x2()
{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4525, "pContext->geometry.tile.countX * pContext->geometry.tile.countY <= NTILES");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4518, "false");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4509, "false");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4533, "false");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4504, "pContext != nullptr");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4503, "pIn1 != nullptr");
}

{
  __assert_rtn("Process_x2", "PDAFPixelEngine.cpp", 4502, "pIn0 != nullptr");
}

void PDAF::PixelEngine::anonymous namespace::AFEGetInputs()
{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 633, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 634, "afeGeom.initV == 2");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 627, "afeGeom.initH == 0");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 628, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 623, "afeGeom.initV == 2 || afeGeom.initV == 3");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 622, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 615, "afeGeom.initV == -1");
}

{
  __assert_rtn("GetAFEAddress", "PDAFPixelEngine.cpp", 444, "afeGeom.cellCountY >= delayV + 1");
}

{
  __assert_rtn("GetAFEAddress", "PDAFPixelEngine.cpp", 445, "afeGeom.cellStartY < afeGeom.cellCountY");
}

{
  __assert_rtn("GetAFEAddress", "PDAFPixelEngine.cpp", 461, "false");
}

{
  __assert_rtn("AFEGetInputs", "PDAFPixelEngine.cpp", 745, "inputs[k].cellCountY == (signed)geometry.roi.cellCountY");
}

{
  __assert_rtn("AFEGetInputs", "PDAFPixelEngine.cpp", 748, "(cellCountXV == 0) || (cellCountXV == (signed)geometry.roi.cellCountX)");
}

{
  __assert_rtn("AFEGetInputs", "PDAFPixelEngine.cpp", 747, "(cellCountXH == 0) || (cellCountXH == (signed)geometry.roi.cellCountX)");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 728, "input.afeStride > 0");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 614, "afeGeom.initH == 0 || afeGeom.initH == 1");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 639, "false");
}

{
  __assert_rtn("GetInputAFE", "PDAFPixelEngine.cpp", 608, "afe != nullptr");
}

void PDAF::PixelEngine::anonymous namespace::FlowAccumulate()
{
  __assert_rtn("nextH", "PDAFPixelEngine.cpp", 545, "false");
}

{
  __assert_rtn("nextV", "PDAFPixelEngine.cpp", 558, "false");
}

{
  __assert_rtn("nextV", "PDAFPixelEngine.cpp", 590, "false");
}

{
  __assert_rtn("FlowAccumulateRow2x1Neon64", "PDAFPixelEngine.cpp", 1175, "pixelInBuffer > 0");
}

{
  __assert_rtn("FlowAccumulateRow1x1Neon64", "PDAFPixelEngine.cpp", 927, "false");
}

{
  __assert_rtn("FlowAccumulateRow1x1Neon64", "PDAFPixelEngine.cpp", 1012, "pixelInBuffer == 0");
}

{
  __assert_rtn("GetFocusRowInCell", "PDAFPixelEngine.cpp", 192, "false");
}

{
  __assert_rtn("FlowAccumulateRow2x1Scalar", "PDAFPixelEngine.cpp", 1114, "pixelInBuffer == 0");
}

{
  __assert_rtn("FlowAccumulateRow1x1Scalar", "PDAFPixelEngine.cpp", 845, "pixelInBuffer == 0");
}

void PDAF::PixelEngine::anonymous namespace::GetAFEDelayV()
{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 399, "false");
}

{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 382, "false");
}

{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 365, "false");
}

{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 347, "false");
}

{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 330, "false");
}

{
  __assert_rtn("GetAFEDelayV", "PDAFPixelEngine.cpp", 407, "false");
}

void PDAF::PixelEngine::anonymous namespace::CorrProfileSumRows1x1H()
{
  __assert_rtn("CorrProfileSumRows1x1H", "PDAFPixelEngine.cpp", 3247, "cellInBuffer == 0");
}

{
  __assert_rtn("CorrProfileSumRows1x1H", "PDAFPixelEngine.cpp", 3215, "pixelInCol != 0");
}

void PDAF::PixelEngine::anonymous namespace::CorrProfileProcess()
{
  __assert_rtn("CorrProfileAccumNeon64", "PDAFPixelEngine.cpp", 3129, "params.shiftMax > 0");
}

{
  __assert_rtn("CorrProfileAccumNeon64", "PDAFPixelEngine.cpp", 3128, "params.shiftMin < 0");
}

{
  __assert_rtn("CorrProfileAccumScalar", "PDAFPixelEngine.cpp", 2779, "params.shiftMax > 0");
}

{
  __assert_rtn("CorrProfileAccumScalar", "PDAFPixelEngine.cpp", 2778, "params.shiftMin < 0");
}

{
  __assert_rtn("CorrProfileProcess", "PDAFPixelEngine.cpp", 3414, "false");
}

void PDAF::PixelEngine::anonymous namespace::CorrProfileSumRows2x1H()
{
  __assert_rtn("CorrProfileSumRows2x1H", "PDAFPixelEngine.cpp", 3337, "cellInBuffer == 0");
}

{
  __assert_rtn("CorrProfileSumRows2x1H", "PDAFPixelEngine.cpp", 3318, "pixelInCol != 0");
}

void H16ISP::H16ISPGraphExclaveAutoExposureNode::onMessageProcessing(uint64_t a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 848);
  v4 = 136315650;
  v5 = "onMessageProcessing";
  v6 = 1024;
  v7 = a2;
  v8 = 1024;
  v9 = v3;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "[Exclaves]: H16ISPGraphExclaveAutoExposureNode::%s EK AE RunKit Failed for reqID 0x%08X resultStatus %d\n", &v4, 0x18u);
}

void H16ISP::H16ISPGraphExclaveAutoExposureNode::onMessageProcessing(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "onMessageProcessing";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "[Exclaves]: H16ISPGraphAutoExposureNode::%s cannot set exclave AE configurations to firmware, res=0x%08X\n", &v2, 0x12u);
}

void H16ISPFirmwareWork::RPCFileInfo()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void H16ISPFirmwareWork::RPCFileRead()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPFirmwareWork::RPCFileRead(uint64_t a1, int *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 136315650;
  v5 = "RPCFileRead";
  v6 = 2080;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - Failed to seek file %s: offset %d\n", &v4, 0x1Cu);
}

void H16ISPFirmwareWork::RPCFileWrite()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISPFirmwareWork::RPCFileWrite(char *a1)
{
  dirname(a1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void H16ISPFirmwareWork::PDAFProcessX1Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::PDAFProcessX2Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::PDAFProcessX3Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::PDAFProcessX4Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::ZFProcessX1Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void H16ISPFirmwareWork::ZFProcessX2Wrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void H16ISPFirmwareWork::BlurMProcessWrapper()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::SPDProcessWrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISPFirmwareWork::FLDProcessWrapper()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void H16ISP::H16ISPBufferReceiver::stopReceive()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - ReturnAllBuffersInPool error: 0x%08X\n", v2, v3, v4, v5, 2u);
}

{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_4(&dword_2247DB000, v0, v1, "%s - Did not get all pending frames back from firmware on PoolID:0x%x. remaining: %d\n", v2, v3, v4);
}

void H16ISP::H16ISPBufferReceiver::removeBufferPoolFromBufferReceiver(_DWORD *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "removeBufferPoolFromBufferReceiver";
  *&v3[14] = *a1;
  *&v3[18] = 1024;
  OUTLINED_FUNCTION_2_4(&dword_2247DB000, a2, a3, "%s - Did not get all pending frames back from firmware. PoolID:0x%x remaining: %d\n", *v3, "removeBufferPoolFromBufferReceiver" >> 32, *&v3[16]);
}

void H16ISP::H16ISPBufferReceiver::sendInitialBuffersToFirmware()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_4(&dword_2247DB000, v0, v1, "%s - Failed to allocate buffer (PoolID:0x%x, numAllocated=%d)\n", v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - pH16ISPDevice->ISP_SendBuffers failed, result=0x%08X\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "startNoBufferAvailableTimer";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - \n", &v1, 0xCu);
}

void H16ISP::H16ISPGraphExclaveSensorMetadataNode::onMessageProcessing(H16ISP::H16ISPExclaveGraphNode *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = H16ISP::H16ISPExclaveGraphNode::Channel(a1);
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "ch%u: invalid sensor metadata\n", v3, 8u);
}

void H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to get camera time ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_2247DB000, v0, v1, "%s - failed to get isp counter frequency ret=0x%08x\n", v2, v3, v4, v5, 2u);
}

void H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "sendSensorMetadata";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "%s - Invalid Focal Length received from FW! Falling back to 1.0 for focalLength\n", &v1, 0xCu);
}

void H16ISP::H16ISPDevice::GetNumCameraConfigs()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPDevice::GetSensorNVMBytes()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_CopySetfile()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::GetCameraConfig()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::GetLSCCoefficients()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::SetCameraConfig()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::StartCamera()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::StopCamera()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ReturnAllUnusedBuffers()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ReloadNVMBytes()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::CacheDeviceConfigs()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::EnableMetadataSection()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::EnableTNR()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ValidateProjectorToken()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::H16ISPDevice()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_PowerOnCamera()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10898, "chInfo1[ch]->gridCountX == chInfo1[0]->gridCountX");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10899, "chInfo1[ch]->gridCountY == chInfo1[0]->gridCountY");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10900, "LSC_GET_BASE_U32_PT(chInfo1[ch]) % (chInfo1[ch]->gridCountX * chInfo1[ch]->gridCountY) == 0");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10943, "chInfo2[ch]->gridCountX == chInfo2[0]->gridCountX");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10944, "chInfo2[ch]->gridCountY == chInfo2[0]->gridCountY");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 10945, "LSC_GET_BASE_U32_PT(chInfo2[ch]) % (chInfo2[ch]->gridCountX * chInfo2[ch]->gridCountY) == 0");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 11278, "kGICMaxPerModuleY >= numYGIC");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 11277, "kGICMaxPerModuleX >= numXGIC");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 11402, "pCmdAppleChLSCConfigure->tableSize == pCmdAppleChDSCConfigure->numEntries");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 11257, "kCICMaxPerModuleY >= numYCIC");
}

{
  __assert_rtn("ISP_PowerOnCamera", "H16ISPDevice.cpp", 11256, "kCICMaxPerModuleX >= numXCIC");
}

void H16ISP::H16ISPDevice::ISP_PowerOnCamera(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "could not read sensor SetFile\n", v3);
}

{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "No ALS2 profile found in Setfile\n", v3);
}

{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "Error: too many camera sensor register over-rides in file\n", v3);
}

{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "Error parsing camera clock override file\n", v3);
}

void H16ISP::H16ISPDevice::ISP_PowerOnCamera(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "ISP_PowerOnCamera";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - FTC gain buffer allocation failed\n", buf, 0xCu);
}

void H16ISP::H16ISPDevice::ISP_PowerOnCamera(uint8_t *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = 67109120;
  *a2 = -536870165;
  OUTLINED_FUNCTION_10_0(&dword_2247DB000, MEMORY[0x277D86220], a3, "LoadSetFile returned 0x%08x - ignoring error\n", a1);
}

void H16ISP::H16ISPDevice::ISP_PowerOnCamera(uint8_t *a1, int a2, _DWORD *a3)
{
  *a1 = 67109120;
  *a3 = a2;
  OUTLINED_FUNCTION_10_0(&dword_2247DB000, MEMORY[0x277D86220], a3, "Error setting FW property: 0x%08x\n", a1);
}

{
  *a1 = 67109120;
  *a3 = a2;
  OUTLINED_FUNCTION_10_0(&dword_2247DB000, MEMORY[0x277D86220], a3, "Error: SetSensorCustomSettings returned an error: 0x%08X\n", a1);
}

void H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_LoadFirmware()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::LoadFirmwareBinary()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void H16ISP::H16ISPDevice::LoadFDRCalDataFile()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::LoadFDRFCClDataFile()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(uint8_t *a1, CFStringRef theString, const char **a3)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  *a1 = 136315138;
  *a3 = CStringPtr;
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Couldn't read %s. Sensor is hosed/disconnected.\n", a1, 0xCu);
}

uint64_t H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(H16ISP::H16ISPDevice *a1)
{
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_3();
    _os_log_error_impl(v3, v4, v5, v6, v7, 2u);
  }

  return H16ISP::H16ISPDevice::ISP_LoadDataFile(a1, 0x80000000, 0, 0, 0xCCCC0301);
}

void H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(uint8_t *buf, void *a2)
{
  *buf = 136315138;
  *a2 = "LoadFDRDataFileCMPM";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Can't create /var/mobile/Library/ISP\n", buf, 0xCu);
}

{
  *buf = 136315138;
  *a2 = "LoadFDRDataFileCMPM";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Can't create /var/mobile/Library/ISP/CalData\n", buf, 0xCu);
}

void H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "Failed to lock pixel buffer\n", v3);
}

{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "Pixel buffer has invalid size\n", v3);
}

{
  OUTLINED_FUNCTION_1_9(a1, a2);
  OUTLINED_FUNCTION_6_1(&dword_2247DB000, MEMORY[0x277D86220], v2, "Pixel format mismatch\n", v3);
}

void H16ISP::H16ISPDevice::LoadOCClCalDataFile()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::LoadIspAneNetworkFile()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t H16ISP::H16ISPDevice::ISP_YonkersFusing(char a1)
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

uint64_t H16ISP::H16ISPDevice::ISP_SavageFusing(char a1)
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  return a1 & 1;
}

void H16ISP::H16ISPDevice::SetupConclave()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::NotifySystemStatusForCIL()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "NotifySystemStatusForCIL";
  _os_log_debug_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s - process name is mediaserverd or cameracaptured, so skip calling SystemsStatus\n", &v0, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::PowerOnExclaveKit()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::PowerOffExclaveKit()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback()
{
  OUTLINED_FUNCTION_24(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPDevice::ReadPropertyValueExclave()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void H16ISP::H16ISPDevice::WritePropertyValueExclave()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_GetExclaveEnablementStatus()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_GetExclavePlatformStatus()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_IsSafeToStartConclave()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::ISP_GetPDPConfig(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    OUTLINED_FUNCTION_10_0(&dword_2247DB000, v2, v3, "failed to get PDP Configs - status=0x%X\n\n", v4);
  }
}

void H16ISP::H16ISPDevice::GetChannelSensorID()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void H16ISP::H16ISPDevice::GetProcNameAndAuditToken()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void H16ISP::H16ISPDevice::GetProcNameAndAuditToken(uint64_t a1, int *a2, _DWORD *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a3[1062];
  v5 = a3[1063];
  v6 = a3[1064];
  v7 = a3[1065];
  v8 = a3[1066];
  v9 = a3[1067];
  v10 = a3[1068];
  v11 = 136317442;
  v12 = "GetProcNameAndAuditToken";
  v13 = 2080;
  v14 = a1;
  v15 = 1024;
  v16 = v3;
  v17 = 1024;
  v18 = v4;
  v19 = 1024;
  v20 = v5;
  v21 = 1024;
  v22 = v6;
  v23 = 1024;
  v24 = v7;
  v25 = 1024;
  v26 = v8;
  v27 = 1024;
  v28 = v9;
  v29 = 1024;
  v30 = v10;
  _os_log_debug_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s - procNameForCIL:%s / audit_token:0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x/0x%08x\n", &v11, 0x46u);
}

void H16ISP::QueryDeviceImpactsInternal(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - device impact manager is unavailable, unable to query device impacts\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - queries must provide a valid dispatch group and impact context\n", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_0_3(&dword_2247DB000, a1, a3, "%s - invalid instance of device impact manager\n", a5, a6, a7, a8, 2u);
}

void ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke_cold_1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "SendDeviceImpacts_block_invoke";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - Failed to send device impacts samples, res=0x%08X\n", &v2, 0x12u);
}

void LSCAverageGreenApple()
{
  __assert_rtn("LSCAverageGreenApple", "LSCComputeFromNVM.cpp", 1629, "pLSCConfig->channelGR.gridCountX == pLSCConfig->channelGB.gridCountX");
}

{
  __assert_rtn("LSCAverageGreenApple", "LSCComputeFromNVM.cpp", 1630, "pLSCConfig->channelGR.gridCountY == pLSCConfig->channelGB.gridCountY");
}

void LSCComputeSNFVerticalGains()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "LSCComputeSNFVerticalGains";
  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - LSCComputeSNFVerticalGains: null ptr! pRadialGainAsymScaleSet.\n", &v0, 0xCu);
}

void GICComputeFromNVMApple<unsigned char>()
{
  __assert_rtn("GICComputeFromNVMApple", "LSCComputeFromNVM.cpp", 1329, "chInfo[ch]->gridCountX == chInfo[0]->gridCountX");
}

{
  __assert_rtn("GICComputeFromNVMApple", "LSCComputeFromNVM.cpp", 1330, "chInfo[ch]->gridCountY == chInfo[0]->gridCountY");
}

{
  __assert_rtn("GICComputeFromNVMApple", "LSCComputeFromNVM.cpp", 1331, "LSC_GET_BASE_U32_PT(chInfo[ch]) % (chInfo[ch]->gridCountX * chInfo[ch]->gridCountY) == 0");
}

{
    ;
  }
}

void ScanPointsOnLine()
{
  __assert_rtn("ScanPointsOnLine", "Markers.cpp", 417, "startPt.GetNumOfPoints()==1");
}

{
  __assert_rtn("ScanPointsOnLine", "Markers.cpp", 418, "direction.GetNumOfPoints()==1");
}

{
  __assert_rtn("ScanPointsOnLine", "Markers.cpp", 419, "maxPt.GetNumOfPoints()==1");
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>()
{
  OUTLINED_FUNCTION_0_7();
  do
  {
    OUTLINED_FUNCTION_2_5();
    (*v2)(v0);
    OUTLINED_FUNCTION_1_10();
    v0 = v1;
  }

  while (!v3);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MatrixNxPts<2u,unsigned int>>,MatrixNxPts<2u,unsigned int>*>()
{
  OUTLINED_FUNCTION_0_7();
  do
  {
    OUTLINED_FUNCTION_2_5();
    (*v2)(v0);
    OUTLINED_FUNCTION_1_10();
    v0 = v1;
  }

  while (!v3);
}

void dumpTailspinOnDispatchQueue_cold_2()
{
  __error();
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dumpTailspinOnDispatchQueue_cold_3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void dumpTailspinOnDispatchQueue_cold_6(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "[TAILSPIN]Failed to create CFString for reason: %s\n", &v2, 0xCu);
}

void __dumpTailspinWithOptionsOnQueue_block_invoke_cold_1(uint64_t a1)
{
  [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D82D08]];
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "completeAllRequests";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_2247DB000, a2, OS_LOG_TYPE_ERROR, "%s - H16ISPGeneralProcessFrameReceiver: Did not get all pending requests back from kernel. remaining: %d.\n\n", &v3, 0x12u);
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_8();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (OUTLINED_FUNCTION_1_11(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_11();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_8();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_11();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_8();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        *(a4 + 16) = a2 | 0xE000000000000000;
        *(a4 + 40) = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v11[7] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      return;
    }

    v10 = OUTLINED_FUNCTION_0_9();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v11, v10))
    {
      a3 = **(a4 + 32);
      v6 = v11;
      v7 = a2;
      goto LABEL_15;
    }
  }
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        return 7;
      }

      else if (*(a1 + 1) == 1)
      {
        OUTLINED_FUNCTION_6_2(a1, (a1 + 328));
        return 0;
      }

      else
      {
        v6 = OUTLINED_FUNCTION_0_9();
        v10 = v9(v8, *(v7 + 32), v12, a3, v6);
        v4 = v10;
        if (!v10)
        {
          OUTLINED_FUNCTION_6_2(v10, v12);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5_4(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v6);
      if (!result)
      {
        *v1 = v7 != 0;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5_4(a1);
  result = 6;
  if (v1)
  {
    v5 = *(v2 + 8);
    v4 = v2 + 8;
    if (v5)
    {
      result = DERImg4DecodePayloadWithProperties(v4, v7);
      if (!result)
      {
        if (v8)
        {
          result = 0;
          v6 = v9;
          *v1 = v8;
          v1[1] = v6;
          return result;
        }

        return 6;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v10[7] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      return 7;
    }

    else if (a4 && *a4)
    {
      v7 = OUTLINED_FUNCTION_0_9();
      result = v9(*v8, v8[1], v10, a3, v7);
      if (!result)
      {
        OUTLINED_FUNCTION_6_2(result, v10);
        return 0;
      }
    }
  }

  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeGetPayloadPropertiesBoolean()
{
  OUTLINED_FUNCTION_0_9();
  _Img4DecodePayloadPropertyExistsWithValue(v0, v1, 1uLL, &v5, 0);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_4_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0_9();
  _Img4DecodePayloadPropertyExistsWithValue(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  OUTLINED_FUNCTION_0_9();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_3_4();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_12(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_6(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_12(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2_6(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = OUTLINED_FUNCTION_2_6(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17[26] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v16, 0x100uLL);
        v10[0] = Img4DecodeDigestInit;
        v10[1] = Img4DecodeDigestUpdate;
        v10[2] = Img4DecodeDigestReturnHash;
        *&v13 = &default_manifest_property_exclude;
        *(&v13 + 1) = 156;
        v14 = a3;
        v15 = v10;
        Img4DecodeEvaluateCertificatePropertiesInternal(a1, &v13);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v11[0] = &v13;
              v11[1] = a2;
              v11[2] = a1;
              v12 = v17;
              if (!(*v15)(*(v14 + 32), &v12) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, _Img4DecodeValidateManifestPropertyInterposer, v11))
              {
                v9 = (v15[2])(*(v14 + 32), &v12, 48, v16);
                if (!v9)
                {
                  OUTLINED_FUNCTION_6_2(v9, v16);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v24[10] = *MEMORY[0x277D85DE8];
  bzero(v19, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (Img4DecodeInitManifestCommon(a3, a4, 1, v19, 1229796419) || (*a9)(v20, v21, v24, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v22, v23, v24, **(a9 + 32), a9, a10))
    {
      return 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v20, v21, a7, a8, a5, a6))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[325] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v12 = *v11;
                    if (a2 != 2592 || v12 != a6)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    if (!MEMORY[0x28223BE30])
                    {
                      return 4;
                    }

                    ccmldsa87();
                    bzero(v14, 0xA28uLL);
                    if (!MEMORY[0x28223BE38])
                    {
                      return 4;
                    }

                    result = ccmldsa_import_pubkey();
                    if (result)
                    {
                      return result;
                    }

                    if (!MEMORY[0x28223BE40])
                    {
                      return 4;
                    }

                    return ccmldsa_verify();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      OUTLINED_FUNCTION_0_10();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        OUTLINED_FUNCTION_0_10();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  OUTLINED_FUNCTION_0_10();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 16);
  if (!v1 || !*v1)
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void CICComputeFromNVMApple<unsigned char>()
{
    ;
  }
}

void CICComputeFromNVMApple<unsigned short>()
{
    ;
  }
}

void LSCComputeFromNVMApple<unsigned char>()
{
    ;
  }
}

void LSCComputeFromNVMApple<unsigned short>()
{
    ;
  }
}

void ImageUtils::ExtractPatch<double>()
{
    ;
  }
}

void ImageUtils::ConnectedComp<BOOL>()
{
    ;
  }
}

void ImageUtils::IntegralImage<double>()
{
    ;
  }
}

void ImageUtils::AdaptiveThreshold<double>()
{
    ;
  }
}

void ImageUtils::Rot90<BOOL>()
{
    ;
  }
}

void ImageUtils::Rot90<double>()
{
    ;
  }
}

void ImageUtils::Scale<double>()
{
    ;
  }
}

void ImageUtils::Fliplr<double>()
{
    ;
  }
}

void ImageUtils::Flipud<double>()
{
    ;
  }
}

void ImageUtils::Gradient<double>()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}