uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v8[1] = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v8[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, CTCompareGeneralNameToHostname, v8);
    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t CTCompareGeneralNameToHostname(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0xAAAAAAAA00AAAA01;
  v22 = &null_octet;
  v20 = xmmword_1E0BB3B20;
  BYTE1(v21) = a6;
  BYTE2(v21) = a7;
  v23 = &null_octet;
  v24 = &null_octet;
  v25 = &CTOctetServerAuthEKU;
  v18 = 0;
  v19 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v18, &v19, 0, 0, 0, 0, &v20);
  if (result)
  {
LABEL_6:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[17] = v13;
  v17[18] = v13;
  v17[15] = v13;
  v17[16] = v13;
  v17[13] = v13;
  v17[14] = v13;
  v17[11] = v13;
  v17[12] = v13;
  v17[9] = v13;
  v17[10] = v13;
  v17[7] = v13;
  v17[8] = v13;
  v17[6] = v13;
  v17[4] = v13;
  v17[5] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v17[0] = v13;
  v17[1] = v13;
  memset(v16, 170, sizeof(v16));
  if (!__CFADD__(a1, a2))
  {
    v15[0] = a1;
    v15[1] = a1 + a2;
    result = X509ChainParseCertificateSet(v15, v17, 1, &v16[1], v16);
    if (!result)
    {
      result = CTVerifyAppleMarkerExtension(v17, a5);
      if (!result)
      {
        result = CTVerifyHostname(v17, a3, a4);
      }
    }

    goto LABEL_6;
  }

  __break(0x5513u);
  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[10] + 8, &SEKTestRootSKID))
  {
    result = compare_octet_string(&v5[10] + 8, &SEKProdRootSKID) == 0;
  }

  else
  {
    result = 2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, X509PolicySEK), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &SEKTestRoot_public_key, 97, 0, 0, X509PolicySEK);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_20:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_19:
    __break(0x5519u);
    goto LABEL_20;
  }

  v9 = a1;
  v10 = a1 + a2;
  if (X509CertificateParse(v11, &v9) || (v4 = numICDPRoots, !numICDPRoots))
  {
LABEL_4:
    result = 0;
  }

  else
  {
    v5 = icdpFederationAnchors;
    while (1)
    {
      v6 = v5 + 3;
      if (v5 < icdpFederationAnchors || v6 > &off_1E86E4C50 || v5 >= v6)
      {
        goto LABEL_19;
      }

      if (!compare_octet_string(&v11[10] + 8, *v5))
      {
        break;
      }

      v5 += 3;
      if (!--v4)
      {
        goto LABEL_4;
      }
    }

    result = v5[2];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_1E86E4BC0;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > &off_1E86E4C50;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, X509PolicyICDPFederation);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CTCopyUID(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!der_get_BOOLean(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseKeyUsage(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseBasicConstraints(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = X509ExtensionParseSubjectAltName(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v59, v71, v54) || (result = X509ExtensionParseAppleExtension(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t der_get_BOOLean(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509ExtensionParseBasicConstraints(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_11;
  }

  v11 = *a1;
  v12 = a1[1];
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_11:
    __break(0x5519u);
  }

  *a2 = v11;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v9 = v8 - 0x5555555555555556;
    if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
    {
      *a1 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result != 1)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x1E69E9840];

      return X509ExtensionParseComponentAuth(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = der_get_BOOLean(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x1E69E9840];

      return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x1E69E9840];

      return X509ExtensionParseMFIAuthv3Leaf(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x1E69E9840];

            return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x1E69E9840];

    return X509ExtensionParseMFISWAuth(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x1E69E9840];

    return X509ExtensionParseGenericSSLMarker();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x1E69E9840];

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x1E69E9840];

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v15 = *a1;
  v16 = v6;
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_29;
  }

  if (!ccder_blob_decode_tl())
  {
    v10 = 655363;
    goto LABEL_29;
  }

  if (v15 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v15 > v15 - 0x5555555555555556 || v15 - 0x5555555555555556 > v16)
  {
    goto LABEL_30;
  }

  v14 = v15 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    v10 = 655362;
    goto LABEL_29;
  }

  if (a2)
  {
    if (v14 >= v15)
    {
      *a2 = v15;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v15 - 0x5555555555555556;
  if (v15 > v15 - 0x5555555555555556 || v11 > v14)
  {
    goto LABEL_30;
  }

  if (v11 == v14)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v14 - v11;
  }

  if (v14 > v16 || v15 > v14)
  {
    goto LABEL_30;
  }

  if (ccder_blob_decode_bitstring())
  {
    *a4 = 0;
    a4[1] = 0;
    if (v14 == v16)
    {
      v10 = 0;
    }

    else
    {
      v10 = 655365;
    }
  }

  else
  {
    v10 = 655364;
  }

LABEL_29:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  result = 327691;
  if (!a1 || !*(a1 + 96))
  {
LABEL_8:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  result = a1 + 88;
  v9 = 0;
  v10 = 0;
  if (a1 + 88 <= (a1 + 104))
  {
    result = X509CertificateParseSPKI(result, 0, 0, &v9);
    if (!result && a2)
    {
      if (a3)
      {
        v7 = v10;
        *a2 = v9;
        *a3 = v7;
      }
    }

    goto LABEL_8;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, __int128 *a4, __int128 *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0uLL;
  v20 = 0uLL;
  v18 = 0;
  v19 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v9 = X509CertificateParseSPKI((a2 + 88), &v21, &v20, &v18);
  if (!v9)
  {
    v9 = 655632;
    v12 = compare_octet_string(&v21, &rsaEncryption);
    v13 = validateSignatureRSA;
    if (v12)
    {
      v14 = compare_octet_string(&v21, &ecPublicKey);
      v13 = validateSignatureEC;
      if (v14)
      {
        v9 = 655617;
        goto LABEL_3;
      }
    }

    if (v15 = v13, v17 = *a5, v16 = *a4, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v19 || !v18) && (a3[1] || !*a3))
      {
        if (v15(v18))
        {
          v9 = 0;
        }

        else
        {
          v9 = 655648;
        }

        goto LABEL_3;
      }

LABEL_22:
      __break(0x5519u);
    }
  }

LABEL_3:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[2] = v8;
  v13[3] = v8;
  v13[0] = v8;
  v13[1] = v8;
  v12[0] = v13;
  v12[1] = 64;
  v11 = 0uLL;
  result = X509MatchSignatureAlgorithm(a3, a4, v12, &v11);
  if (!result)
  {
    result = X509CertificateCheckSignatureDigest(a1, a2, v12, &v11, a5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509MatchSignatureAlgorithm(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    v10 = *a1;
    v9 = a1[1];
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, __int128 *a5, __int128 *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v11;
  v24[3] = v11;
  v24[0] = v11;
  v24[1] = v11;
  v22 = v24;
  v23 = 64;
  v21 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v22, &v21);
  if (matched)
  {
    goto LABEL_13;
  }

  matched = 655617;
  v13 = compare_octet_string(a2, &rsaEncryption);
  v14 = validateSignatureRSA;
  if (v13)
  {
    v15 = compare_octet_string(a2, &ecPublicKey);
    v14 = validateSignatureEC;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v19 = *a5;
  v20 = *a6;
  if (a3)
  {
    v16 = *a3;
  }

  result = *a1;
  if ((a1[1] || !result) && (!v22 || v23))
  {
    if (v14(result))
    {
      matched = 0;
    }

    else
    {
      matched = 655648;
    }

LABEL_13:
    v18 = *MEMORY[0x1E69E9840];
    return matched;
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseGeneralNamesContent(uint64_t a1, uint64_t (*a2)(void, int *, uint64_t), uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  if (__CFADD__(v3, v4))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_11;
  }

  v11 = *(a1 + 224);
  v12 = v5;
  while (1)
  {
    if (v11 >= v12)
    {
LABEL_7:
      result = 0;
      goto LABEL_9;
    }

    memset(v10, 170, sizeof(v10));
    if ((ccder_blob_decode_GeneralName(&v11, v10, &v10[1]) & 1) == 0)
    {
      break;
    }

    if ((a2(v10[0], &v10[1], a3) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = 720912;
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a1[1];
  v21 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v19 = *a1;
  v20 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v21)
      {
        v6 = 720898;
        goto LABEL_59;
      }

      v2 = v19;
      if (__CFADD__(v19, v21))
      {
        break;
      }

      v7 = v19 + v21;
      if (v19 > v19 + v21 || v7 > v20)
      {
        goto LABEL_60;
      }

      v17 = v19;
      v18 = v19 + v21;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          v6 = 720899;
          goto LABEL_59;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21 || v17 + v21 > v18)
        {
          goto LABEL_60;
        }

        v16 = v17 + v21;
        if (!ccder_blob_decode_tl())
        {
          v6 = 720900;
          goto LABEL_59;
        }

        v2 = v17 + v21;
        if (v17 > v16)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v17, v21))
        {
          goto LABEL_61;
        }

        if (v17 > v17 + v21)
        {
          goto LABEL_60;
        }

        v15 = v17 + v21;
        if (v21 == 3 && *v17 == 1109 && *(v17 + 2) == 3)
        {
          v13 = v17 + v21;
          v14 = v17 + v21;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v15 > v16)
            {
              goto LABEL_60;
            }

            v13 = v17 + v21;
            v14 = v17 + v21;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v15 > v16)
              {
                goto LABEL_60;
              }

              v13 = v17 + v21;
              v14 = v17 + v21;
              if (!ccder_blob_decode_tl())
              {
                goto LABEL_59;
              }
            }
          }

          if (__CFADD__(v13, v21))
          {
            goto LABEL_61;
          }

          v2 = v17 + v21;
          if (v16 != v13 + v21)
          {
            v6 = 720902;
            goto LABEL_59;
          }

          if (v14 < v13 || v21 > v14 - v13)
          {
            goto LABEL_60;
          }

          *a2 = v13;
          a2[1] = v21;
        }

        v7 = v19 + v21;
        if (v2 > v18 || v17 > v2)
        {
          goto LABEL_60;
        }

        v17 = v2;
      }

      if (v2 != v7)
      {
        v6 = 720903;
        goto LABEL_59;
      }

      v4 = v20;
      if (v2 > v20 || v19 > v2)
      {
        goto LABEL_60;
      }

      v19 = v2;
      if (v2 >= v20)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      v6 = 0;
      goto LABEL_59;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      v6 = 720905;
      goto LABEL_59;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  v6 = 720904;
LABEL_59:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  if (a1 && a2 != -1)
  {
    result = !X509CertificateGetNotBefore(a1, v7) && !X509CertificateGetNotAfter(a1, &v6) && difftime(a2, v7[0]) >= 0.0 && difftime(a2, v6) <= 0.0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1);
  if (!result)
  {
    result = X509TimeConvert(v5, a2);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = 720906;
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = *(result + 72);
  v3 = *(result + 80);
  if (!v2 || v3 == 0)
  {
    goto LABEL_13;
  }

  if (__CFADD__(v2, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v2 + v3;
    if (v2 <= v5)
    {
      v7[0] = *(result + 72);
      v7[1] = v5;
      if (ccder_blob_decode_Time(v7))
      {
        if (ccder_blob_decode_Time(v7))
        {
          v1 = 0;
        }

        else
        {
          v1 = 720908;
        }
      }

      else
      {
        v1 = 720907;
      }

LABEL_13:
      v6 = *MEMORY[0x1E69E9840];
      return v1;
    }
  }

  __break(0x5519u);
  return result;
}

char *X509TimeConvert(uint64_t *a1, time_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = 720909;
  if (!a1)
  {
    goto LABEL_19;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    goto LABEL_19;
  }

  v13.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v14 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tm_mon = v6;
  *&v13.tm_isdst = v6;
  *&v13.tm_sec = v6;
  v15 = 0;
  v7 = *a1;
  result = __memcpy_chk();
  if (result > &result[v4])
  {
    goto LABEL_24;
  }

  v9 = &v14[v4];
  if (&v14[v4] >= &v16 || &v14[v4] < v14)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14[v4] = 0;
  if (v4 != 13)
  {
    if (v9 + 1 >= v9 && v9 + 1 <= &v16)
    {
      result = strptime(v14, "%Y%m%d%H%M%SZ", &v13);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v15))
  {
    goto LABEL_24;
  }

  result = strptime(v14, "%y%m%d%H%M%SZ", &v13);
  if (result && v13.tm_year >= 150)
  {
    v13.tm_year -= 100;
  }

LABEL_15:
  v10 = a1[1];
  if (v10 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v14, v10))
  {
    if (result == &v14[v10])
    {
      v12 = timegm(&v13);
      if (v12 == -1)
      {
        v2 = 720911;
      }

      else
      {
        v2 = 0;
        if (a2)
        {
          *a2 = v12;
        }
      }
    }

    else
    {
      v2 = 720910;
    }

LABEL_19:
    v11 = *MEMORY[0x1E69E9840];
    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  v13 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v14 = *a1;
  v15 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v14;
    v7 = v15;
    if (v14 > v15)
    {
      goto LABEL_19;
    }

    *a1 = v14;
    a1[1] = v15;
    v9 = v13;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

LABEL_18:
  result = v7 == v10;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
    goto LABEL_12;
  }

  v8 = v7 - 0x5555555555555556;
  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_10:
    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

  *a2 |= 0x30000000000uLL;
  if (a3)
  {
    if (v7 > v8)
    {
      goto LABEL_12;
    }

    *a3 = v7;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
  }

  if (v7 <= v8)
  {
    *a1 = v8;
    result = 1;
    goto LABEL_10;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v4 = a1[1];
    if (v4 != v3 - 0x5555555555555556)
    {
      result = 0;
LABEL_7:
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (v3 <= v4)
    {
      *a1 = v3 - 0x5555555555555556;
      result = 1;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v8 = a1[1];
    if (v8 != v7 - 0x5555555555555556)
    {
      result = 0;
LABEL_11:
      v9 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (a3)
    {
      if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_13;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x30000000uLL;
    if (v7 <= v8)
    {
      *a1 = v7 - 0x5555555555555556;
      result = 1;
      goto LABEL_11;
    }
  }

LABEL_13:
  __break(0x5519u);
  return result;
}

uint64_t X509ExtensionParseGenericSSLMarker()
{
  v2 = *MEMORY[0x1E69E9840];
  ccder_blob_decode_tl();
  result = 0;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null();
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_17;
  }

  if (a1[1] != v7 - 0x5555555555555556)
  {
    result = 0;
LABEL_16:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_16;
    }

    if (a3)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_18;
      }

      *a3 = v11;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    *a2 |= 0x240000800000uLL;
    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(0x5513u);
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = (a4 + 1);
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = (a3 + 1);
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, (v6 + 13));
      if (!result)
      {
        break;
      }

      v10 = (v6 + 21);
      if (!v6[22])
      {
        goto LABEL_13;
      }

      if (v10 > (v6 + 23))
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, (v6 + 21));
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > (v6 + 23))
        {
          goto LABEL_38;
        }

        if (X509ChainGetAppleRootUsingKeyIdentifier((v6 + 21), 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier((v6 + 21));
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = v11 + 36;
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

uint64_t X509ChainGetAppleRootUsingKeyIdentifier(uint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainGetBAARootUsingKeyIdentifier(uint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &SEKTestRootPublicKey;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v55[4] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          result = 327701;
          goto LABEL_128;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v51 = v6;
  v52 = a4;
  v11 = 0;
  v12 = 0;
  v53 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      goto LABEL_124;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v53 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
LABEL_124:
      result = v12 | 0x9000Du;
      goto LABEL_128;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        goto LABEL_127;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        goto LABEL_127;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
LABEL_127:
      result = v12 | v49;
      goto LABEL_128;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      goto LABEL_127;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      goto LABEL_127;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        result = v12 | 0x9000Au;
        goto LABEL_128;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      result = v12 | 0x90009u;
      goto LABEL_128;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      goto LABEL_127;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, (v8 + 16), v8 + 40, (v8 + 56));
      if (result)
      {
        goto LABEL_128;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v51;
  a4 = v52;
  v23 = v53;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (!*a3)
  {
LABEL_71:
    v25 = *(a3 + 24);
    if (v25 && *(v25 + 8))
    {
      v26 = v21 << 8;
      v27 = **(v6[1] + 8);
      v28 = v27 + 304;
      if ((*(a3 + 16) & 1) == 0)
      {
        memset(v55, 170, 32);
        v29 = (v27 + 88);
        v30 = v27 >= v28 || v29 > v27 + 104;
        v54[0] = 0xAAAAAAAAAAAAAAAALL;
        v54[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!v30)
        {
          if (X509CertificateParseSPKI(v29, &v55[2], v54, v55))
          {
LABEL_82:
            v31 = 589832;
LABEL_114:
            result = v26 | v31;
            goto LABEL_128;
          }

          if (compare_octet_string(&v55[2], *(a3 + 32)) || compare_octet_string(v55, *(a3 + 24)))
          {
            if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), (v27 + 16), (v27 + 40), (v27 + 56)))
            {
              goto LABEL_82;
            }
          }

          else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
          {
            compare_octet_string(v54, *(a3 + 40));
          }

LABEL_120:
          result = 0;
          if (a4)
          {
            *a4 = v13;
          }

          goto LABEL_128;
        }

        goto LABEL_133;
      }
    }

    else
    {
      if (*(a3 + 16) != 1)
      {
        goto LABEL_120;
      }

      v26 = v21 << 8;
      v27 = **(v6[1] + 8);
      v28 = v27 + 304;
    }

    if (v27 > v28)
    {
      goto LABEL_133;
    }

    v32 = 200;
    v33 = 184;
    if (v23)
    {
      v32 = 184;
      v33 = 168;
    }

    v34 = v27 + v33;
    v35 = v27 + v33 + 16;
    if (v35 > v27 + v32 || v34 > v35)
    {
      goto LABEL_133;
    }

    v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
    if (!v37)
    {
      result = v26 | 0x9000Bu;
      goto LABEL_128;
    }

    v38 = v37;
    v39 = v37 + 304;
    if ((v23 & 1) == 0)
    {
      v40 = v27 + 88 > v27 + 104 || v37 >= v39;
      v41 = v37 + 88;
      if (v40 || v41 > v37 + 104)
      {
        goto LABEL_133;
      }

      if (!compare_octet_string(v27 + 88, v41))
      {
        goto LABEL_120;
      }
    }

    v43 = (v27 + 16);
    v44 = v38 > v39 || v43 > v27 + 32;
    v45 = v27 + 40;
    v46 = (v27 + 56);
    if (!v44 && v45 <= v46 && v46 <= v27 + 72)
    {
      if (X509CertificateCheckSignature(29, v38, v43, v45, v46))
      {
        v31 = 589836;
        goto LABEL_114;
      }

      goto LABEL_120;
    }

LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  v24 = v21;
  if (v23)
  {
    v24 = v21 + 1;
    if (v21 == -1)
    {
LABEL_134:
      __break(0x5500u);
    }
  }

  if (*a3 == v24)
  {
    goto LABEL_71;
  }

  result = (v24 << 8) | 0x90006u;
LABEL_128:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_apfs_copy_volume_uuid_for_disk(const char *a1, char *a2)
{
  v3 = a1;
  properties = 0;
  v4 = *MEMORY[0x1E696CD68];
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v5 = *(v3 + 5);
    v3 += 5;
    if (v5 == 114)
    {
      ++v3;
    }
  }

  v6 = 3758097090;
  v7 = IOBSDNameMatching(v4, 0, v3);
  MatchingService = IOServiceGetMatchingService(v4, v7);
  if (MatchingService)
  {
    v9 = MatchingService;
    if (IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
    {
      v10 = IORegistryEntryCreateCFProperties(v9, &properties, *MEMORY[0x1E695E480], 0);
      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v6 = 3758604298;
        Value = CFDictionaryGetValue(properties, @"UUID");
        if (Value)
        {
          v12 = Value;
          v13 = CFGetTypeID(Value);
          if (v13 == CFStringGetTypeID())
          {
            if (CFStringGetCString(v12, a2, 37, 0x600u))
            {
              v6 = 0;
            }

            else
            {
              v6 = 3758604298;
            }
          }
        }
      }
    }

    IOObjectRelease(v9);
    if (properties)
    {
      CFRelease(properties);
    }
  }

  return v6;
}

void aks_apfs_container_disk_for_path_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v0 = __error();
    strerror(*v0);
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, v3, v4, v5, 0x7Cu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x7Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_4()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
  v7 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_5()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
  v7 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_6(char a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, v3, v4, v5, 0x72u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_8()
{
  OUTLINED_FUNCTION_8_0();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x7Cu);
  }

  *v0 = v1;
  v7 = *MEMORY[0x1E69E9840];
}

void aks_apfs_container_disk_for_path_cold_9()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x7Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_get_disk_portability_cold_1()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  OUTLINED_FUNCTION_7();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_get_disk_portability_cold_2()
{
  OUTLINED_FUNCTION_9();
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x72u);
  }

  OUTLINED_FUNCTION_7();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_apfs_get_disk_portability_cold_3(uint64_t a1, _DWORD *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v5, v6, v7, v8, v9, 0x7Cu);
  }

  *a3 = 0;
  *a2 = -536870212;
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t get_kcv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t print_kcv(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  get_kcv(a2, a3, &v5, 3);
  return dump_bytes_internal(a1, &v5, 3uLL);
}

uint64_t ascii_hex_to_bytes(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t fv_init_cred_from_secret(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t copy_raw_secret(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  inited = fv_init_cred_from_secret(&__s, v10, a5);
  if (inited)
  {
    v8 = inited;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

void circular_queue_init_cold_1(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136317954;
    v7 = "aks.fw";
    v8 = 2080;
    OUTLINED_FUNCTION_0();
    v9 = "circular_queue_init";
    v10 = v2;
    v11 = ":";
    v12 = v3;
    v13 = 385;
    v14 = v2;
    v15 = v4;
    v16 = v2;
    v17 = v4;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s overflow%s\n", &v6, 0x72u);
  }

  *a1 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void REQUIRE_func_cold_1(uint64_t a1, int a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136318466;
    v8 = "aks.fw";
    v9 = 2080;
    OUTLINED_FUNCTION_0();
    v10 = "REQUIRE_func";
    v11 = v4;
    v12 = ":";
    v13 = v5;
    v14 = 1134;
    v15 = v4;
    v16 = v6;
    v17 = v4;
    v18 = a1;
    v19 = v5;
    v20 = a2;
    v21 = v4;
    v22 = v6;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", &v7, 0x82u);
  }

  abort();
}

uint64_t xpc_set_dict_value(void *a1, CFStringRef theString, const unsigned __int8 *a3, int a4)
{
  v4 = 0;
  v5 = 3758097084;
  if (!a1 || !theString)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = CFStringGetLength(theString) + 1;
  v4 = calloc(v10, 1uLL);
  if (!v4)
  {
    v5 = 3758097115;
    goto LABEL_12;
  }

  if (!CFStringGetCString(theString, v4, v10, 0x8000100u))
  {
    v5 = 3758604298;
    goto LABEL_12;
  }

  switch(a4)
  {
    case 2:
      xpc_dictionary_set_uuid(a1, v4, a3);
      goto LABEL_11;
    case 1:
      xpc_dictionary_set_uint64(a1, v4, a3);
      goto LABEL_11;
    case 0:
      xpc_dictionary_set_BOOL(a1, v4, a3 != 0);
LABEL_11:
      v5 = 0;
      break;
  }

LABEL_12:
  memset_s(v4, v10, 0, v10);
  free(v4);
  return v5;
}

uint64_t xpc_set_lock_state(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __xpc_set_lock_state_block_invoke;
  v3[3] = &__block_descriptor_tmp_53;
  v3[4] = a2;
  return process_lock_state_for_handle(a1, v3);
}

uint64_t xpc_set_fv_policy_status(const __CFData *a1, unsigned int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v8 = __xpc_set_fv_policy_status_block_invoke;
  v9 = &__block_descriptor_tmp_54;
  v10 = a3;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11[3] = CFDataGetBytePtr(a1);
  v11[4] = CFDataGetLength(a1);
  memset(v11, 0, 24);
  result = aks_fv_get_blob_state(v11);
  if (!result)
  {
    result = (v8)(v7, @"fa", *(&v12[2] + a2 + 3), 1);
    if (!result)
    {
      result = (v8)(v7, @"boff", *(&v12[3] + a2 + 1), 1);
      if (!result)
      {
        result = (v8)(v7, @"ma", HIDWORD(v12[3]), 1);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t firebloom_export_pub_key(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  v7 = cczp_bitlen();
  v8 = calloc(((v7 + 7) >> 2) | 1, 1uLL);
  if (!v8)
  {
    return 4294967279;
  }

  v9 = v8;
  v10 = *a1;
  v11 = ((cczp_bitlen() + 7) >> 2) | 1;
  ccec_export_pub();
  result = 0;
  *a2 = v9;
  *a3 = v11;
  return result;
}

BOOL firebloom_ec_import(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E12E84F0](a1, a3, a4, a2))
  {
    return 0;
  }

  v6 = *a1;
  v7 = &a2[3 * **a2];
  return ccn_read_uint() == 0;
}

uint64_t wrap_data(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v60 = *MEMORY[0x1E69E9840];
  HIDWORD(v53) = 0;
  v58 = 0u;
  v59 = 0u;
  __s = 0u;
  v57 = 0u;
  *v54 = 0u;
  v55 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v53) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = generate_wrapping_key_curve25519((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v57 = v30;
          v31 = *(a1 + 14);
          v58 = *(a1 + 10);
          v59 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v57;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = firebloom_cbc_one_shot_f(v33, 32, &v58, &firebloom_null_iv, 0x20uLL);
            v35 = OUTLINED_FUNCTION_4_0(v34);
            LODWORD(a1) = REQUIRE_func(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v53) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v52 = v54;
            OUTLINED_FUNCTION_0_1(v39, v40, &v58);
          }

          OUTLINED_FUNCTION_3_0();
          LODWORD(a1) = rfc3394_wrap_legacy(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = OUTLINED_FUNCTION_5_0();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v21, v22);
      if (a1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = rfc3394_wrap_legacy(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v53 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v53) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = firebloom_cbc_one_shot_f(v36, 32, (v14 + 3), &firebloom_null_iv, a5);
        v38 = OUTLINED_FUNCTION_4_0(v37);
        LODWORD(a1) = REQUIRE_func(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v53);
        goto LABEL_44;
      }

      v28 = OUTLINED_FUNCTION_5_0();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v28, v29);
      if (a1)
      {
        OUTLINED_FUNCTION_1_1();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v52 = v54;
          OUTLINED_FUNCTION_0_1(v48, v49, (v14 + 3));
          v23 = v54;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5, a6, a7, a8, v52, v53, v54[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  v50 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t unwrap_data(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  HIDWORD(v52) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = OUTLINED_FUNCTION_5_0();
            if (!rfc3394_unwrapped_size_legacy(v15, v16))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_1();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v52 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v52) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = firebloom_cbc_one_shot_f(v25, 32, (a1 + 3), &firebloom_null_iv, a5);
              v27 = OUTLINED_FUNCTION_4_0(v26);
              REQUIRE_func(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v52);
              goto LABEL_37;
            }

            v23 = OUTLINED_FUNCTION_5_0();
            if (!rfc3394_unwrapped_size_legacy(v23, v24))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_1();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              v39 = ccsha256_di();
              OUTLINED_FUNCTION_0_1(v39, v40, (a1 + 3));
            }

            OUTLINED_FUNCTION_3_0();
          }

          if (!rfc3394_unwrap_legacy(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v52) = 32;
    if (*a7 >= 0x20)
    {
      *v53 = 0uLL;
      v54 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          OUTLINED_FUNCTION_6_0();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = firebloom_cbc_one_shot_f(v28, 32, v53, &firebloom_null_iv, 0x20uLL);
          v30 = OUTLINED_FUNCTION_4_0(v29);
          v31 = REQUIRE_func(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        OUTLINED_FUNCTION_6_0();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v52) = 32;
        if ((a3 & 8) != 0)
        {
          v41 = ccsha256_di();
          v51 = __s;
          OUTLINED_FUNCTION_0_1(v41, v42, v53);
        }

        OUTLINED_FUNCTION_3_0();
        v31 = rfc3394_unwrap_legacy(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          OUTLINED_FUNCTION_2(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_2(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  v49 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL rfc3394_wrapped_size_legacy(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL rfc3394_wrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

uint64_t lib_platform_get_device_id(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < 0x1AuLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((_MergedGlobals_0 & 1) == 0)
  {
    v7 = 0;
    v6 = 0;
    if (platform_get_chip_id(&v7) || platform_get_ecid(&v6))
    {
      return 4294967284;
    }

    LODWORD(xmmword_1ECE7982C) = v7;
    byte_swap_val(&xmmword_1ECE7982C, 4uLL);
    *(&xmmword_1ECE7982C + 4) = v6;
    byte_swap_val(&xmmword_1ECE7982C + 4, 0x10uLL);
    _MergedGlobals_0 = 1;
  }

  *a2 = 20;
  result = 0;
  if (a1)
  {
    v5 = xmmword_1ECE7982C;
    *(a1 + 16) = dword_1ECE7983C;
    *a1 = v5;
  }

  return result;
}

uint64_t lib_platform_get_chip_id(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t lib_platform_get_ecid(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t lib_platform_get_board_id(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MGGetSInt64Answer();
    if (v2)
    {
      v3 = v2;
      result = 0;
      *v1 = v3;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t der_dict_get_number(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (result)
  {
    OUTLINED_FUNCTION_12();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_dict_get_data(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_12();
    der_dict_iterate();
    return 0;
  }

  return result;
}

uint64_t der_array_iterate()
{
  OUTLINED_FUNCTION_26();
  *&v10 = v2;
  *(&v10 + 1) = v3;
  OUTLINED_FUNCTION_17();
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    v9 = 0;
    v5 = v10;
    if (der_utils_decode_tl(&v10, &v8, &v9))
    {
      do
      {
        v6 = v10 + v9;
        if (!v1(v5, v10 + v9 - v5, v0))
        {
          break;
        }

        *&v10 = v6;
        v5 = v6;
      }

      while ((der_utils_decode_tl(&v10, &v8, &v9) & 1) != 0);
    }
  }

  return v4;
}

uint64_t der_utils_decode_tl(__int128 *a1, void *a2, void *a3)
{
  v7 = *a1;
  result = ccder_blob_decode_tag();
  if (result)
  {
    result = ccder_blob_decode_len();
    if (result)
    {
      *a1 = v7;
      *a2 = 0;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t encode_list_cstr_get_data()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v13 = *MEMORY[0x1E69E9840];
  v5 = strlen(v4);
  v11 = 0;
  v12 = 0;
  v10[0] = 12;
  v10[1] = v5;
  result = 0xFFFFFFFFLL;
  if (v1 && v5 <= 0x10)
  {
    __memcpy_chk();
    __src = 0;
    v9 = 0;
    if (encode_list_get_data(v3, v10, 0, &__src, &v9))
    {
      if (v9 == v0)
      {
        memcpy(v1, __src, v0);
        result = 0;
      }

      else
      {
        result = 4294967277;
      }
    }

    else
    {
      result = 4294967293;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t encode_list_cstr_add_data()
{
  OUTLINED_FUNCTION_26();
  v5 = *MEMORY[0x1E69E9840];
  v2 = strlen(v1);
  result = 4294967285;
  if (v0 && v2 <= 0x10)
  {
    __memcpy_chk();
    result = encode_list_add_data();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t encode_list_add_BOOL()
{
  result = OUTLINED_FUNCTION_33();
  if (v0)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v2 + 2;
      v5 = *(v2 + 1);
      ccder_sizeof();
      v6 = OUTLINED_FUNCTION_27();
      v7 = OUTLINED_FUNCTION_29(v6);
      if (v7)
      {
        v8 = v7;
        if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (v9 = v4 + *(v3 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_9_0(), OUTLINED_FUNCTION_17(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_9_0(), v10 == v8) && (v11 = OUTLINED_FUNCTION_28()) != 0)
        {
          return OUTLINED_FUNCTION_3_1(v11);
        }

        else
        {
          OUTLINED_FUNCTION_13();
          free(v8);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        return 4294967279;
      }
    }
  }

  return result;
}

uint64_t encode_list_add_number(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = HIBYTE(a3);
  if (HIBYTE(a3) - 255 > 0xFFFFFF01)
  {
    v11 = 8;
  }

  else
  {
    v7 = 9;
    v8 = 48;
    v9 = 1;
    while ((v7 - 2) >= 2)
    {
      v10 = a3 >> v8;
      --v7;
      v8 -= 8;
      if (v6 != v10)
      {
        v9 = v7 - 1;
        goto LABEL_8;
      }
    }

    v7 = 2;
LABEL_8:
    if ((((a3 >> (8 * v9 - 8)) ^ v6) & 0x80) != 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  v23[0] = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v13 = a2 + 2;
    v14 = *(a2 + 1);
    ccder_sizeof();
    v15 = ccder_sizeof();
    v16 = calloc(v15, 1uLL);
    if (v16)
    {
      v17 = v16;
      v18 = v11;
      do
      {
        *(v23 + v18 - 1) = v3;
        v3 >>= 8;
        --v18;
      }

      while (v18);
      if ((ccder_blob_encode_body() & 1) != 0 && ccder_blob_encode_tl() && (v19 = v13 + *(a2 + 1), ccder_blob_encode_body(), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_17(), ccder_blob_encode_tl(), OUTLINED_FUNCTION_5_1(), v20 == v17) && OUTLINED_FUNCTION_28())
      {
        result = OUTLINED_FUNCTION_18();
        v21[1] = v17;
        v21[2] = v15;
        *v21 = *a1;
        *a1 = v21;
      }

      else
      {
        memset_s(v17, v15, 0, v15);
        free(v17);
        result = 0xFFFFFFFFLL;
      }
    }

    else
    {
      result = 4294967279;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t encode_list_add_string()
{
  result = OUTLINED_FUNCTION_33();
  if (v0)
  {
    v5 = v3;
    if (v3)
    {
      if (v4)
      {
        strlen(v4);
        v6 = *(v5 + 1);
        ccder_sizeof();
        v7 = OUTLINED_FUNCTION_27();
        if (OUTLINED_FUNCTION_29(v7))
        {
          OUTLINED_FUNCTION_15();
          if (ccder_blob_encode_body() && ccder_blob_encode_tl() && (OUTLINED_FUNCTION_7_0(), OUTLINED_FUNCTION_5_1(), OUTLINED_FUNCTION_14(), OUTLINED_FUNCTION_5_1(), v8 == v1) && (v9 = OUTLINED_FUNCTION_28()) != 0)
          {
            return OUTLINED_FUNCTION_3_1(v9);
          }

          else
          {
            OUTLINED_FUNCTION_13();
            free(v1);
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return result;
}

uint64_t encode_list_add_list(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  __s = 0;
  __n = 0;
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3)
  {
    if (encode_list_dict(a3, &__s, &__n))
    {
      v3 = 0;
    }

    else
    {
      v7 = a2 + 2 + *(a2 + 1);
      v8 = ccder_sizeof();
      v9 = OUTLINED_FUNCTION_29(v8);
      v3 = v9;
      if (v9)
      {
        v15 = v9;
        if (!ccder_blob_encode_body())
        {
          goto LABEL_15;
        }

        v18 = v3;
        v19 = v15;
        v10 = a2 + 2 + *(a2 + 1);
        ccder_blob_encode_body();
        OUTLINED_FUNCTION_9_0();
        v18 = v3;
        v19 = v11;
        OUTLINED_FUNCTION_17();
        ccder_blob_encode_tl();
        OUTLINED_FUNCTION_9_0();
        if (v12 != v3)
        {
          goto LABEL_15;
        }

        v13 = OUTLINED_FUNCTION_28();
        if (v13)
        {
          v4 = 0;
          v13[1] = v3;
          v13[2] = 0;
          *v13 = *a1;
          *a1 = v13;
          v3 = 0;
        }

        else
        {
LABEL_15:
          v4 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v4 = 4294967279;
      }
    }
  }

  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

  if (v3)
  {
    memset_s(v3, 0, 0, 0);
    free(v3);
  }

  return v4;
}

uint64_t der_utils_encode_fv_key(uint64_t a1)
{
  v7 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    v3 = v2;
    result = ccder_blob_encode_body_tl();
    if (!result)
    {
      return result;
    }

    v6 = *v3;
    v5 = v3[1];
    if ((ccder_blob_encode_body_tl() & 1) == 0)
    {
      return 0;
    }
  }

  else if (!ccder_blob_encode_body_tl() || (ccder_blob_encode_tl() & 1) == 0)
  {
    return 0;
  }

  *v1 = v7;
  return 1;
}

uint64_t der_utils_decode_fv_key(__int128 *a1, int a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = *(a3 + 20);
  v37 = *a1;
  if (a2)
  {
    v7 = *a1;
    OUTLINED_FUNCTION_4_1();
    v8 = ccder_blob_decode_range();
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = v38;
    v16 = (v39 - v38);
    OUTLINED_FUNCTION_22(v8, v9, v10, v11, v12, v13, v14, v15, v37, *(&v37 + 1), v38, v39, v40);
LABEL_4:
    OUTLINED_FUNCTION_4_1();
    v17 = ccder_blob_decode_range();
    if (v17)
    {
      OUTLINED_FUNCTION_22(v17, v18, v19, v20, v21, v22, v23, v24, v37, *(&v37 + 1), v38, v39, v40);
      if (v34 <= 4)
      {
        v35 = *v33;
        *a3 = v5;
        *(a3 + 8) = v16;
        *(a3 + 16) = v35;
        *(a3 + 20) = v6;
        return OUTLINED_FUNCTION_6_1(v25, v26, v27, v28, v29, v30, v31, v32, v37);
      }
    }

    return 0;
  }

  LODWORD(v40) = v4;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v37, 4, v5, &v40);
  if (result)
  {
    v16 = v40;
    goto LABEL_4;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_len(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    OUTLINED_FUNCTION_22(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3 || !a4)
    {
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (*a4 >= v21 - v14)
    {
      v13 = memcpy(a3, v14, v22);
      *a4 = v22;
      return OUTLINED_FUNCTION_6_1(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t der_utils_encode_fv_data(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v1, v2, v2[1], *v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_encode_fv_params(uint64_t a1)
{
  v17 = OUTLINED_FUNCTION_19(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_24(v1, v2, v3, v2, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_body_tl();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(v1, 0, v3, v4, v5, v6, v7, v8, v17.n128_i64[0]);
    result = ccder_blob_encode_tl();
    if (!result)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_6_1(result, v10, v11, v12, v13, v14, v15, v16, *&v17);
}

uint64_t der_utils_decode_fv_params(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v3 = ccder_blob_decode_range();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_22(v3, v24, v4, v5, v6, v7, v8, v9, v21, v23, v24, v25, v26);
  if (v11 > 0x18)
  {
    return 0;
  }

  v12 = memcpy(a2, v10, v11 & 0x1F);
  return OUTLINED_FUNCTION_6_1(v12, v13, v14, v15, v16, v17, v18, v19, v22);
}

uint64_t encode_extended_state()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v18 = 0;
  if (encode_list_add_number(&v18, der_key_state_state, *v2) || encode_list_add_number(&v18, der_key_state_lock_state, v3[1]) || encode_list_add_number(&v18, der_key_state_backoff, *(v3 + 1)) || encode_list_add_number(&v18, der_key_state_failed_attempts, v3[4]) || encode_list_add_number(&v18, der_key_state_generation_state, v3[5]) || encode_list_add_number(&v18, der_key_state_recovery_countdown, *(v3 + 26)) || encode_list_add_number(&v18, der_key_state_more_state, *(v3 + 34)) || encode_list_add_number(&v18, der_key_keybag_handle, *(v3 + 42)) || encode_list_add_number(&v18, der_key_config_max_unlock_attempts, *(v3 + 46)) || (v4 = encode_list_add_data(), v4) || v1 && (encode_list_add_number(&v18, der_key_state_assertion_set, *(v3 + 66)) || encode_list_add_number(&v18, der_key_state_grace_period_enabled, *(v3 + 67)) || encode_list_add_number(&v18, der_key_lock_time, *(v3 + 17)) || (v4 = encode_list_add_number(&v18, der_key_cx_window, *(v3 + 19)), v4)) || (v5 = OUTLINED_FUNCTION_20(v4), v5))
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 0;
    OUTLINED_FUNCTION_16(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);
  }

  encode_list_free(&v18);
  return v13;
}

uint64_t decode_memento_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        OUTLINED_FUNCTION_21_0(v3);
        bzero(v8, 0x98uLL);
        v8[4] = der_key_state_failed_attempts;
        v8[9] = der_key_config_max_unlock_attempts;
        v8[14] = der_key_state_state;
        OUTLINED_FUNCTION_0_3();
        if (OUTLINED_FUNCTION_35())
        {
          *v5 = der_get_number();
          v5[1] = der_get_number();
          v5[2] = der_get_number();
          der_get_number();
          result = OUTLINED_FUNCTION_18();
          v5[3] = v6;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t decode_primary_identity_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v6)
  {
    if (a1)
    {
      v7 = v3;
      if (v3)
      {
        v8 = v4;
        if (v4)
        {
          v9 = v5;
          OUTLINED_FUNCTION_21_0(v3);
          OUTLINED_FUNCTION_21_0(v8);
          v13 = 0;
          v11[0] = 0u;
          v12 = 0u;
          v15 = 0u;
          v16 = 0u;
          v11[1] = der_key_group_uuid;
          v14 = der_key_uuid;
          OUTLINED_FUNCTION_0_3();
          der_dict_iterate();
          if (der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v7, 16) && der_utils_decode_implicit_raw_octet_string_copy(&v12 + 8, 4, v8, 16))
          {
            result = der_utils_decode_implicit_raw_octet_string_copy(&v16, 4, v9, 16) - 1;
          }

          else
          {
            result = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t decode_fv_blob_state(uint64_t a1)
{
  result = OUTLINED_FUNCTION_31(*MEMORY[0x1E69E9840]);
  if (v4)
  {
    if (a1)
    {
      v5 = v3;
      if (v3)
      {
        memset_s(v3, 0x58uLL, 0, 0x58uLL);
        bzero(v9, 0x200uLL);
        v9[4] = der_key_uuid;
        v10[2] = der_key_id;
        v11[2] = der_key_flags;
        v11[7] = der_key_version;
        v11[12] = der_key_state_reserved;
        v13 = der_key_state_failed_attempts;
        v14 = der_key_state_failed_attempts_other;
        v15 = der_key_config_max_unlock_attempts;
        v16 = der_key_state_backoff;
        v17 = der_key_state_backoff_other;
        v18 = der_key_config_capabilities;
        v19 = der_key_state_refcount;
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_35();
        *v5 = der_get_number();
        if (!der_utils_decode_implicit_raw_octet_string_copy(v10, 4, v5 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(v11, 4, v5 + 5, 16) || (v5[9] = der_get_number(), v5[10] = der_get_number(), v5[11] = der_get_number(), v5[12] = der_get_number(), v5[15] = der_get_number(), v5[13] = der_get_number(), v5[14] = der_get_number(), !der_utils_decode_implicit_raw_octet_string_copy_partial(&v12)))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_10;
        }

        v6 = v5[9];
        if ((v6 & 0x400) != 0)
        {
          *(v5 + 9) = der_get_number();
          if ((v5[9] & 0x800) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((v6 & 0x800) == 0)
        {
LABEL_9:
          result = 0;
          goto LABEL_10;
        }

        der_get_number();
        result = OUTLINED_FUNCTION_18();
        v5[20] = v8;
      }
    }
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t encode_pfk_params_public(int *a1, void *a2, _DWORD *a3)
{
  v18 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    v4 = a1;
    if (a1 && (v5 = *a1) != 0)
    {
      if (v5)
      {
        a1 = encode_list_cstr_add_data();
        v5 = *v4;
      }

      if ((v5 & 2) != 0)
      {
        a1 = encode_list_cstr_add_data();
      }

      v7 = OUTLINED_FUNCTION_20(a1);
      if (!v7)
      {
        v3 = 0;
        OUTLINED_FUNCTION_16(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v18);
  return v3;
}

uint64_t decode_pfk_params_internal(uint64_t a1, uint64_t a2, _DWORD *__s)
{
  v6 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (__s)
      {
        memset_s(__s, 0x24uLL, 0, 0x24uLL);
        OUTLINED_FUNCTION_10();
        if (der_dict_iterate())
        {
          if (!encode_list_cstr_get_data())
          {
            *__s |= 2u;
          }

          v3 = 0;
          if (!encode_list_cstr_get_data())
          {
            *__s |= 1u;
          }
        }
      }
    }
  }

  encode_list_free(&v6);
  return v3;
}

uint64_t encode_icsc_params_internal(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  v23 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && (v5 = a1[1], encode_list_add_data()) || a1[2] && (v6 = a1[3], encode_list_add_data()) || a1[4] && (v7 = a1[5], encode_list_add_data()) || a1[6] && (v8 = a1[7], encode_list_add_data()) || a1[8] && (v9 = a1[9], encode_list_add_data()) || a1[10] && (v10 = a1[11], encode_list_add_data()))
    {
      v3 = 4294967273;
    }

    else
    {
      v11 = encode_list_dict(&v23, &v21, &v22);
      if (v11)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        OUTLINED_FUNCTION_16(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22);
      }
    }
  }

  encode_list_free(&v23);
  return v3;
}

uint64_t decode_icsc_params_internal(int a1, int a2, void *__s)
{
  v73[29] = *MEMORY[0x1E69E9840];
  if (__s)
  {
    memset_s(__s, 0x60uLL, 0, 0x60uLL);
    bzero(v73, 0xE8uLL);
    v72 = der_key_acm_handle;
    v73[4] = der_key_username;
    v73[9] = der_key_label;
    v73[14] = der_key_data;
    v73[19] = der_key_timestamp;
    v73[24] = der_key_public_key;
    v66 = xmmword_1E0BAB150;
    v67 = 0;
    v68 = &v72;
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_1_2();
    v4 = ccder_blob_decode_range();
    if (v4)
    {
      v12 = OUTLINED_FUNCTION_2_2(v4, v5, v6, v7, v8, v9, v10, v11, 6, 0, 0, &v72, v69, v70, v71);
      *(v13 + 24) = v12;
      *__s = v14;
      __s[1] = v15;
    }

    OUTLINED_FUNCTION_1_2();
    v16 = ccder_blob_decode_range();
    if (v16)
    {
      v24 = OUTLINED_FUNCTION_2_2(v16, v17, v18, v19, v20, v21, v22, v23, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v25[4] = v24;
      __s[2] = v26;
      __s[3] = v27;
    }

    OUTLINED_FUNCTION_1_2();
    v28 = ccder_blob_decode_range();
    if (v28)
    {
      v36 = OUTLINED_FUNCTION_2_2(v28, v29, v30, v31, v32, v33, v34, v35, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v37 + 104) = v36;
      __s[4] = v38;
      __s[5] = v39;
    }

    OUTLINED_FUNCTION_1_2();
    v40 = ccder_blob_decode_range();
    if (v40)
    {
      v48 = OUTLINED_FUNCTION_2_2(v40, v41, v42, v43, v44, v45, v46, v47, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      v49[9] = v48;
      __s[6] = v50;
      __s[7] = v51;
    }

    OUTLINED_FUNCTION_1_2();
    v52 = ccder_blob_decode_range();
    if (v52)
    {
      v60 = OUTLINED_FUNCTION_2_2(v52, v53, v54, v55, v56, v57, v58, v59, v66, *(&v66 + 1), v67, v68, v69, v70, v71);
      *(v61 + 184) = v60;
      __s[8] = v62;
      __s[9] = v63;
    }

    OUTLINED_FUNCTION_1_2();
    if (ccder_blob_decode_range())
    {
      result = 0;
      __s[10] = v69;
      __s[11] = (v70 - v69);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 4294967285;
  }

  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t encode_fv_params_internal(uint64_t a1, void *a2, _DWORD *a3)
{
  v17 = 0;
  v3 = 4294967273;
  if (a2 && a3)
  {
    if (a1)
    {
      if (!encode_list_cstr_add_data())
      {
        v5 = encode_list_cstr_add_data();
        if (!v5)
        {
          v6 = OUTLINED_FUNCTION_20(v5);
          if (!v6)
          {
            v3 = 0;
            OUTLINED_FUNCTION_16(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      v3 = 0;
      *a2 = 0;
      *a3 = 0;
    }
  }

  encode_list_free(&v17);
  return v3;
}

uint64_t decode_fv_params_internal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        OUTLINED_FUNCTION_21_0(a3);
        OUTLINED_FUNCTION_10();
        if (der_dict_iterate())
        {
          encode_list_cstr_get_data();
          encode_list_cstr_get_data();
          v3 = 0;
        }
      }
    }
  }

  encode_list_free(&v5);
  return v3;
}

uint64_t ref_key_create_request_to_class(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_3();
    der_dict_iterate();
    v2 = der_get_number() & 0x1F;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t decode_peer_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x1E69E9840];
  bzero(v11, 0xE8uLL);
  v10 = der_key_peer_unlock_token_status;
  v11[4] = der_key_peer_unwrapped_escrow_record_status;
  v11[9] = der_key_peer_wrapped_escrow_record_status;
  v11[14] = der_key_peer_flags;
  v11[19] = der_key_public_key;
  v12[2] = der_key_peer_kcv;
  v7 = xmmword_1E0BAB150;
  v8 = 0;
  v9 = &v10;
  OUTLINED_FUNCTION_0_3();
  der_dict_iterate();
  *a3 = der_get_number();
  *(a3 + 4) = der_get_number();
  *(a3 + 8) = der_get_number();
  *(a3 + 12) = der_get_number();
  v6 = 65;
  if (der_utils_decode_implicit_raw_octet_string_copy_len(v12, 4, (a3 + 16), &v6))
  {
    *(a3 + 88) = v6;
    result = der_utils_decode_implicit_raw_octet_string_copy(v13, 4, (a3 + 96), 3) - 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *ref_key_op_der_to_enum(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = der_key_op;
      if (der_key_op)
      {
        OUTLINED_FUNCTION_11();
        der_dict_iterate();
        v2 = 0;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void *der_utils_decode_implicit_raw_octet_string_alloc(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_19(a1);
  OUTLINED_FUNCTION_4_1();
  v6 = ccder_blob_decode_range();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v14 = v31;
  OUTLINED_FUNCTION_22(v6, v7, v8, v9, v10, v11, v12, v13, v28, v30, v31, v32, v33);
  if (a3 && a4)
  {
    v24 = v23 - v14;
    v25 = (v23 - v14);
    result = calloc(v25, 1uLL);
    if (!result)
    {
      return result;
    }

    v27 = result;
    v15 = memcpy(result, v14, v25);
    *a3 = v27;
    *a4 = v24;
  }

  return OUTLINED_FUNCTION_6_1(v15, v16, v17, v18, v19, v20, v21, v22, v29);
}

uint64_t se_derivation_request_serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a6 + a7;
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64() || !ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  OUTLINED_FUNCTION_17();
  v7 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v7)
  {
    if (a6 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t se_derivation_request_deserialize(void *a1, void *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v51) = a6;
  *(&v51 + 1) = a6 + a7;
  OUTLINED_FUNCTION_17();
  v12 = ccder_blob_decode_range();
  if (!v12)
  {
    return 4294967277;
  }

  v20 = OUTLINED_FUNCTION_32(v12, v13, v14, v15, v16, v17, v18, v19, v46, 0, v51);
  v22 = der_utils_decode_implicit_uint64(v20, 0x8000000000000003, v21);
  if (!v22)
  {
    return 4294967277;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_23();
    *a5 = v30;
  }

  v31 = OUTLINED_FUNCTION_32(v22, v23, v24, v25, v26, v27, v28, v29, v47, v49, v52);
  v33 = der_utils_decode_implicit_uint64(v31, 0x8000000000000002, v32);
  if (!v33)
  {
    return 4294967277;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_23();
    *a4 = v41;
  }

  v42 = OUTLINED_FUNCTION_32(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v53);
  if (!der_utils_decode_implicit_uint64(v42, 0x8000000000000001, v43))
  {
    return 4294967277;
  }

  if (a3)
  {
    OUTLINED_FUNCTION_23();
    *a3 = v44;
  }

  OUTLINED_FUNCTION_1_2();
  if (ccder_blob_decode_range())
  {
    v51 = v56;
    if (a1)
    {
      if (a2)
      {
        *a1 = v54;
        *a2 = (v55 - v54);
      }
    }
  }

  if (v51 == *(&v51 + 1))
  {
    return 0;
  }

  else
  {
    return 4294967277;
  }
}

void _merge_dict_cb_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136317954;
    v4 = "aks.fw";
    v5 = 2080;
    OUTLINED_FUNCTION_0();
    v6 = "_merge_dict_cb";
    v7 = v0;
    v8 = ":";
    v9 = v1;
    OUTLINED_FUNCTION_25();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s bad 1%s\n", &v3, 0x72u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void _merge_dict_cb_cold_2(_BYTE *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136317954;
    v6 = "aks.fw";
    v7 = 2080;
    OUTLINED_FUNCTION_0();
    v8 = "_merge_dict_cb";
    v9 = v2;
    v10 = ":";
    v11 = v3;
    OUTLINED_FUNCTION_25();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s fail%s\n", &v5, 0x72u);
  }

  *a1 = 0;
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t encode_backup_bag(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t decode_backup_bag(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000001, a3 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000002, a3 + 3, 40) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t wrap_backup_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  *__s = 0u;
  v23 = 0u;
  HIDWORD(v21) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  platform_read_random(a4 + 64, 0x10u);
  v8 = ccsha256_di();
  LODWORD(v9) = firebloom_ccpbkdf2_hmac(v8, a3, a2, 16, a4 + 64, *(a4 + 80), 32, __s);
  if (v9)
  {
    v17 = 4294967286;
  }

  else
  {
    v9 = rfc3394_wrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v21 + 1);
    if (v9)
    {
      v17 = v9;
    }

    else if (HIDWORD(v21) == 40)
    {
      v17 = 0;
    }

    else
    {
      v17 = 4294967286;
    }
  }

  OUTLINED_FUNCTION_2(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, __s[0]);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t unwrap_backup_bag(const unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v21 = *MEMORY[0x1E69E9840];
  *__s = 0u;
  v20 = 0u;
  HIDWORD(v18) = 32;
  if (*a1)
  {
    v14 = 4294967284;
  }

  else
  {
    v11 = a1;
    v12 = ccsha256_di();
    LODWORD(a1) = firebloom_ccpbkdf2_hmac(v12, a3, a2, 16, v11 + 64, *(v11 + 10), 32, __s);
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = rfc3394_unwrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v11 + 3, 0x28u, a4, &v18 + 1);
    if (a1)
    {
      v14 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v18) != 32)
    {
LABEL_9:
      v14 = 4294967286;
    }

    else
    {
      v13 = cccurve25519_make_pub() == 0;
      REQUIRE_func(v13, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v11 + 8, (a4 + 32));
      if (a1)
      {
        v14 = 4294967272;
      }

      else
      {
        v14 = 0;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_2(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, __s[0]);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t aks_unpack_data(unsigned int *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a3;
  if (*a1 >= a3)
  {
    v19 = &a9;
    if (!a3)
    {
      return 0;
    }

    v11 = (a1 + 1);
    while (1)
    {
      v12 = v19;
      v13 = *v19;
      v19 += 2;
      v16 = *v11;
      v14 = v11 + 4;
      v15 = v16;
      if (v16 > a2)
      {
        break;
      }

      if (v13)
      {
        v17 = v12[1];
        if (*v17 < v15)
        {
          return 0xFFFFFFFFLL;
        }

        memcpy(v13, v14, v15);
        *v17 = v15;
      }

      v11 = &v14[v15];
      if (!--v9)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v79 = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v9, v10, v6, v4, v2, v11, v12, v49, v51, v53, v55, v57, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78);
  bzero(v13, v14);
  v59 = &v78;
  v60 = &v79;
  v61 = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      OUTLINED_FUNCTION_20_0(aks_client_connection, v24, v25, v26, v27, v28, v29, v30, v50, v52, v54, v56, v58, v59);
      LODWORD(v15) = ccder_blob_encode_body_tl();
      if (v15)
      {
        LODWORD(v15) = der_utils_encode_fv_data(&v59);
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_data(&v59);
          if (v15)
          {
            LODWORD(v15) = der_utils_encode_fv_params(&v59);
            if (v15)
            {
              OUTLINED_FUNCTION_17();
              LODWORD(v15) = ccder_blob_encode_tl();
              if (v15)
              {
                v31 = OUTLINED_FUNCTION_18_0();
                LODWORD(v15) = OUTLINED_FUNCTION_5_2(v31, 0x4Au, v32, 2u, v33, v34, v35, v36, v50, v52);
                if (!v15)
                {
                  v56 = v8;
                  v58 = v8 + v61;
                  OUTLINED_FUNCTION_17();
                  v15 = ccder_blob_decode_range();
                  if (v15)
                  {
                    v37 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v8);
                    v15 = der_utils_decode_fv_data(v37, v38, v5);
                    if (v15)
                    {
                      if (v3)
                      {
                        v39 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v56);
                        LODWORD(v15) = der_utils_decode_fv_key(v39, v40, v3);
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

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v72 + 6) = "aks_fv_new_vek";
        HIWORD(v72) = v42;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v43);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v44, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v45, v46, v47, v48, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78);
  v41 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

unint64_t _aks_save_file(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL _aks_load_file(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _get_path_class(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t __aks_dump_path_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t aks_fs_status(const char *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v5))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v5);
    aks_fs_status_with_map(v5, &sharedPathMap, 36);
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_fs_status_with_map(__str, &userPathMap, 72);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t aks_user_fs_status(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    aks_fs_status_with_map(v4, &userPathMap, 72);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void aks_fv_new_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v65 = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_10_0(v1, v6, v8, v4, v2, v9, v10, v11, v38, v40, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  bzero(v12, v13);
  v43 = &v64;
  v44 = &v65;
  v45 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v23 = aks_client_connection;
      v14 = ccder_blob_encode_body_tl();
      if (v14)
      {
        v14 = der_utils_encode_fv_data(&v43);
        if (v14)
        {
          v14 = der_utils_encode_fv_params(&v43);
          if (v14)
          {
            OUTLINED_FUNCTION_17();
            v14 = ccder_blob_encode_tl();
            if (v14)
            {
              v46 = v7;
              v47 = v44;
              OUTLINED_FUNCTION_23_0();
              v14 = OUTLINED_FUNCTION_5_2(v23, 0x4Cu, v24, 3u, v25, v26, v27, v28, v39, v41);
              if (!v14)
              {
                *&v42 = v7;
                *(&v42 + 1) = v7 + v45;
                OUTLINED_FUNCTION_17();
                v14 = ccder_blob_decode_range();
                if (v14)
                {
                  v14 = der_utils_decode_fv_data(&v42, 0, v3);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(v30 + 70) = "aks_fv_new_kek";
        HIWORD(v58) = v31;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v32);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v34, v35, v36, v37, v39, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v14, v15, v16, v17, v18, v19, v20, v21, v39, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_new_sibling_vek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v79 = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v9, v6, v4, v2, v10, v11, v12, v49, v51, v53, v55, v57, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78);
  bzero(v13, v14);
  v59 = &v78;
  v60 = &v79;
  v61 = 4096;
  if (v7 && v5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      OUTLINED_FUNCTION_20_0(aks_client_connection, v24, v25, v26, v27, v28, v29, v30, v50, v52, v54, v56, v58, v59);
      LODWORD(v15) = ccder_blob_encode_body_tl();
      if (v15)
      {
        LODWORD(v15) = der_utils_encode_fv_data(&v59);
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_params(&v59);
          if (v15)
          {
            OUTLINED_FUNCTION_17();
            LODWORD(v15) = ccder_blob_encode_tl();
            if (v15)
            {
              v31 = OUTLINED_FUNCTION_18_0();
              LODWORD(v15) = OUTLINED_FUNCTION_5_2(v31, 0x63u, v32, 2u, v33, v34, v35, v36, v50, v52);
              if (!v15)
              {
                v56 = v8;
                v58 = v8 + v61;
                OUTLINED_FUNCTION_17();
                v15 = ccder_blob_decode_range();
                if (v15)
                {
                  v37 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v8);
                  v15 = der_utils_decode_fv_data(v37, v38, v5);
                  if (v15)
                  {
                    if (v3)
                    {
                      v39 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v56);
                      LODWORD(v15) = der_utils_decode_fv_key(v39, v40, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v72 + 6) = "aks_fv_new_sibling_vek";
        HIWORD(v72) = v42;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v43);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v44, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v45, v46, v47, v48, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v50, v52, v54, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78);
  v41 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_rewrap_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v65[0] = *MEMORY[0x1E69E9840];
  v13 = OUTLINED_FUNCTION_10_0(v1, v10, v8, v6, v4, v2, v11, v12, v35, v37, v39, v41, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63, v64[0]);
  bzero(v13, v14);
  v45 = v64;
  v46 = v65;
  v47 = 4096;
  if (v9 && v7 && v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v24 = aks_client_connection;
      v15 = der_utils_encode_fv_data(&v45);
      if (v15)
      {
        OUTLINED_FUNCTION_20_0(v15, v16, v17, v18, v19, v20, v21, v22, v36, v38, v40, v42, v44, v45);
        LODWORD(v15) = ccder_blob_encode_body_tl();
        if (v15)
        {
          LODWORD(v15) = der_utils_encode_fv_data(&v45);
          if (v15)
          {
            LODWORD(v15) = der_utils_encode_fv_data(&v45);
            if (v15)
            {
              LODWORD(v15) = der_utils_encode_fv_params(&v45);
              if (v15)
              {
                OUTLINED_FUNCTION_17();
                LODWORD(v15) = ccder_blob_encode_tl();
                if (v15)
                {
                  v48 = v46;
                  v49 = v65 - v46;
                  LODWORD(v15) = OUTLINED_FUNCTION_5_2(v24, 0x4Du, &v48, 2u, v19, v20, v21, v22, v64, &v47);
                  if (!v15)
                  {
                    v42 = v64;
                    v44 = &v64[v47];
                    OUTLINED_FUNCTION_17();
                    v15 = ccder_blob_decode_range();
                    if (v15)
                    {
                      v25 = OUTLINED_FUNCTION_16_0(v15, v16, v17, v18, v19, v20, v21, v22, v36, v38, v40, v64);
                      LODWORD(v15) = der_utils_decode_fv_data(v25, v26, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LODWORD(v15) = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(&v58 + 6) = "aks_fv_rewrap_kek";
        HIWORD(v58) = v28;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v29);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v30, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v31, v32, v33, v34, v36, v38, v40, v42, v44, v45, v46, v47, v48, v49, v50);
      }
    }
  }

  OUTLINED_FUNCTION_7_1(v15, v16, v17, v18, v19, v20, v21, v22, v36, v38, v40, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, v61, v62, v63, v64[0]);
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_set_protection()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v57[0] = *MEMORY[0x1E69E9840];
  bzero(__s, 0x1000uLL);
  v28 = __s;
  v29 = v57;
  v30 = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v7 = aks_client_connection;
    if (!der_utils_encode_fv_data(&v28))
    {
      goto LABEL_13;
    }

    if (!der_utils_encode_fv_data(&v28))
    {
      goto LABEL_13;
    }

    if (!der_utils_encode_fv_data(&v28))
    {
      goto LABEL_13;
    }

    if (!der_utils_encode_fv_params(&v28))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_17();
    if (!ccder_blob_encode_tl() || (v31[0] = v5, v31[1] = v3, v31[2] = v29, v31[3] = v57 - v29, !OUTLINED_FUNCTION_5_2(v7, 0x54u, v31, 4u, v8, v9, v10, v11, __s, &v30)) && v30 && ((OUTLINED_FUNCTION_17(), v12 = ccder_blob_decode_range(), !v12) || v0 && (v20 = OUTLINED_FUNCTION_16_0(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, __s), (der_utils_decode_fv_data(v20, v21, v0) & 1) == 0)))
    {
LABEL_13:
      OUTLINED_FUNCTION_22_0();
    }
  }

  else
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_22_0();
    if (v24)
    {
      v32 = 136317954;
      v33 = "aks.fw";
      v34 = 2080;
      v35 = "";
      v36 = 1024;
      v37 = -1;
      v38 = 2080;
      v39 = "";
      v40 = 2080;
      v41 = "";
      v42 = 2080;
      v43 = "";
      v44 = 2080;
      v45 = "";
      v46 = 2080;
      v47 = "aks_fv_set_protection";
      v48 = 2080;
      v49 = ":";
      v50 = 1024;
      v51 = 617;
      v52 = 2080;
      v53 = "";
      v54 = 2080;
      v55 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v32);
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  v22 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_unwrap_vek_with_acm()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_30_0();
  v4 = v3;
  v65[0] = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_10_0(v5, v3, v6, v7, v8, v9, v10, v11, v38, v40, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  bzero(v12, v13);
  v43 = &v64;
  v44 = v65;
  v45 = 4096;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v15 = aks_client_connection;
      if (!der_utils_encode_fv_data(&v43))
      {
        goto LABEL_14;
      }

      if (!der_utils_encode_fv_data(&v43))
      {
        goto LABEL_14;
      }

      if (!der_utils_encode_fv_data(&v43))
      {
        goto LABEL_14;
      }

      if (!der_utils_encode_fv_data(&v43))
      {
        goto LABEL_14;
      }

      if (!der_utils_encode_fv_params(&v43))
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_17();
      if (!ccder_blob_encode_tl())
      {
        goto LABEL_14;
      }

      v46 = v44;
      v47 = v65 - v44;
      OUTLINED_FUNCTION_23_0();
      v21 = OUTLINED_FUNCTION_5_2(v15, 0x4Bu, v16, 3u, v17, v18, v19, v20, v39, v41);
      if (!v21)
      {
        *&v42 = v4;
        *(&v42 + 1) = v4 + v45;
        OUTLINED_FUNCTION_17();
        v21 = ccder_blob_decode_range();
        if (!v21 || v0 && (v21 = der_utils_decode_fv_key(&v42, 0, v0), (v21 & 1) == 0))
        {
LABEL_14:
          OUTLINED_FUNCTION_22_0();
        }
      }
    }

    else
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_22_0();
      if (v21)
      {
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_0_4();
        *(v30 + 70) = "aks_fv_unwrap_vek_with_acm";
        HIWORD(v58) = v31;
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_2_3(v32);
        OUTLINED_FUNCTION_12_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v34, v35, v36, v37, v39, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  OUTLINED_FUNCTION_7_1(v21, v22, v23, v24, v25, v26, v27, v28, v39, v41, v42, *(&v42 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t __aks_gather_stats_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t aks_kext_get_options()
{
  input[3] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  if (v2)
  {
    v3 = v2;
    input[0] = 0;
    input[1] = v1;
    input[2] = 0;
    output = 0;
    outputCnt = 1;
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v0 = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v0)
      {
        *v3 = output;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136317954;
      v12 = "aks.fw";
      v13 = 2080;
      OUTLINED_FUNCTION_8();
      v14 = "aks_kext_get_options";
      v15 = v7;
      v16 = ":";
      v17 = v8;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v11);
    }
  }

  else
  {
    v0 = (v0 + 6);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v0;
}

void aks_stash_escrow()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  v50 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v24[0] = v16;
    v24[1] = v15;
    v24[2] = v13;
    v24[3] = v11;
    if ((!v15 || v5 && v3) && !OUTLINED_FUNCTION_19_0(aks_client_connection, 0x36u, v24, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136317954;
      v26 = "aks.fw";
      v27 = 2080;
      v28 = "";
      v29 = 1024;
      v30 = -1;
      v31 = 2080;
      v32 = "";
      v33 = 2080;
      v34 = "";
      v35 = 2080;
      v36 = "";
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = "aks_stash_escrow";
      v41 = 2080;
      v42 = ":";
      v43 = 1024;
      v44 = 891;
      v45 = 2080;
      v46 = "";
      v47 = 2080;
      v48 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v25);
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v21 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void akstest_new_key()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_17_0();
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = v5;
  v16[1] = v4;
  v15 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v12 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v16, 2u, v2, 0x10uLL, &v15, &outputCnt, outputStruct, &v12) && outputCnt == 1)
  {
    *v1 = v15;
    aks_unpack_data(outputStruct, v12, 3u, v6, v7, v8, v9, v10, v0);
  }

  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void akstest_new_ekwk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_17_0();
  v44[2] = *MEMORY[0x1E69E9840];
  v44[0] = v30;
  v44[1] = v29;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v38 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v44, 2u, v27, 0x10uLL, &v41, &outputCnt, outputStruct, &v38) && outputCnt == 3)
  {
    v36 = v42;
    *v26 = v41;
    *a22 = v36;
    *a25 = v43;
    aks_unpack_data(outputStruct, v38, 5u, v31, v32, v33, v34, v35, v25);
  }

  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t akstest_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }

  free(*&inputStructCnt[1]);
  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

void akstest_unwrap_key()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  v23[2] = *MEMORY[0x1E69E9840];
  v23[0] = v4;
  v23[1] = v5;
  v21 = 0;
  v20 = 0;
  bzero(v22, 0x400uLL);
  v19 = 1024;
  aks_pack_data(&v21, &v20, 2, v6, v7, v8, v9, v10, v0);
  if (!OUTLINED_FUNCTION_19_0(v1, 0x10u, v23, 2u, v21, v20, v11, v12, v22, &v19))
  {
    aks_unpack_data(v22, v19, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v21);
  v18 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void akstest_unwrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_27_0();
  v43[3] = *MEMORY[0x1E69E9840];
  v43[0] = v24;
  v43[1] = v25;
  v43[2] = a21;
  v41 = 0;
  v40 = 0;
  bzero(v42, 0x400uLL);
  v39 = 1024;
  aks_pack_data(&v41, &v40, 3, v26, v27, v28, v29, v30, v22);
  if (!OUTLINED_FUNCTION_19_0(v23, 0x17u, v43, 3u, v41, v40, v31, v32, v42, &v39))
  {
    aks_unpack_data(v42, v39, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v41);
  v38 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_get_internal_info_for_key(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x5Du, v29, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136317954;
      v22 = "aks.fw";
      v23 = 2080;
      OUTLINED_FUNCTION_8();
      v24 = "aks_get_internal_info_for_key";
      v25 = v17;
      v26 = ":";
      v27 = v18;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v21);
    }

    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

void aks_delete_xart_leak_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v2);
  }

  OUTLINED_FUNCTION_4_2();
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

void aks_kext_set_options_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v2);
  }

  OUTLINED_FUNCTION_4_2();
  v1 = *MEMORY[0x1E69E9840];
}

void aks_internal_state_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v2);
  }

  OUTLINED_FUNCTION_4_2();
  v1 = *MEMORY[0x1E69E9840];
}

void aks_run_internal_test_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 136317954;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v2);
  }

  OUTLINED_FUNCTION_4_2();
  v1 = *MEMORY[0x1E69E9840];
}

void aks_operation_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_46();
  a21 = v22;
  a22 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a12 = 0;
  if ((!v23 || der_get_sizeof(v23) != v24 || !encode_list_add_der()) && (!v35 || der_get_sizeof(v35) != v33 || !encode_list_add_der()) && (!v31 || !encode_list_add_data()))
  {
    OUTLINED_FUNCTION_30_1();
    if (!encode_list_dict(v36, v37, v38))
    {
      *v29 = 0;
      *v27 = 0;
    }
  }

  encode_list_free(&a12);
  OUTLINED_FUNCTION_44();
}

uint64_t aks_params_set_BOOL(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  OUTLINED_FUNCTION_7_2();
  if (_params_get_der_key(v5, 3))
  {
    v6 = OUTLINED_FUNCTION_51();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = *a3;
      OUTLINED_FUNCTION_51();
      if (!encode_list_add_BOOL())
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_BOOL(void *a1, int a2, _BYTE *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 3);
  if (result)
  {
    result = encode_list_get_BOOL(a1, result, &v6);
    if (result)
    {
      result = 1;
      if (v6)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

uint64_t aks_params_set_number(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_7_2();
  if (_params_get_der_key(v5, 1))
  {
    v6 = OUTLINED_FUNCTION_51();
    if (!encode_list_remove_key(v6, v7))
    {
      if (!a3)
      {
        return 0;
      }

      v8 = *a3;
      v9 = OUTLINED_FUNCTION_51();
      if (!encode_list_add_number(v9, v10, v11))
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t aks_params_get_number(void *a1, int a2, void *a3)
{
  v6 = 0;
  result = _params_get_der_key(a2, 1);
  if (result)
  {
    result = encode_list_get_number(a1, result, &v6);
    if (a3)
    {
      if (result)
      {
        *a3 = v6;
        return 1;
      }
    }
  }

  return result;
}

uint64_t aks_params_get_data(void *a1, int a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  der_key = _params_get_der_key(a2, 2);
  if (der_key)
  {
    data = encode_list_get_data(a1, der_key, (a2 - 1) < 2, &v9, &v10);
    if (a3)
    {
      if (data)
      {
        *a3 = v10;
      }
    }
  }

  return v9;
}

uint64_t aks_encrypt(uint64_t a1, int a2, int a3, void *a4, void *a5, uint64_t a6, void *a7, size_t *a8)
{
  v8 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = a6;
  v45 = a5;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  if (!a7 || !a8)
  {
    goto LABEL_38;
  }

  v11 = a6;
  v12 = a5;
  OUTLINED_FUNCTION_52();
  if (der_dict_find_value(v16, v17, v18) && (v39 = 0, v40 = 0, OUTLINED_FUNCTION_37(), der_dict_find_value(v19, v20, v21)))
  {
    if (der_dict_find_value(der_key_op_encrypt, 0, 0))
    {
      v8 = 0;
    }

    else
    {
      if (encode_list_merge_dict(&v43) || encode_list_merge_dict(&v42) || encode_list_merge_dict(&v41))
      {
        v8 = 0;
        v32 = 3758097085;
        goto LABEL_19;
      }

      encode_list_add_BOOL();
      encode_list_remove_key(&v42, der_key_acl);
      encode_list_add_list(&v42, der_key_acl, &v41);
      encode_list_remove_key(&v43, der_key_external_data);
      encode_list_add_list(&v43, der_key_external_data, &v42);
      v8 = encode_list_dict(&v43, &v45, &v44) == 0;
      v11 = v44;
      v12 = v45;
    }
  }

  else
  {
    v8 = 0;
  }

  v22 = aks_ref_key_create(a1, a2, 0, v12, v11, &v48);
  if (v22 || (v22 = aks_ref_key_encrypt(v48, v45, v44, a3, a4, &v47, &v46, v23, a4, v37, v38, v39, v40, 0, 0, v41, v42, v43, v44, v45, v46, v47), v22))
  {
    v32 = v22;
    goto LABEL_19;
  }

  if (encode_list_merge_dict(&v49) || (v24 = *v48, v25 = v48[2], encode_list_merge_dict(&v49)) || (v26 = *v48, v27 = v48[2], OUTLINED_FUNCTION_30_1(), der_dict_find_value(v28, v29, v30)) && (v31 = v48[2], encode_list_add_der()))
  {
LABEL_38:
    v32 = 3758097090;
    goto LABEL_19;
  }

  if (encode_list_dict(&v49, a7, a8))
  {
    v32 = 3758097090;
  }

  else
  {
    v32 = 0;
  }

LABEL_19:
  encode_list_free(&v43);
  encode_list_free(&v42);
  encode_list_free(&v41);
  if (v8)
  {
    free(v45);
  }

  if (v48)
  {
    aks_ref_key_free(&v48);
  }

  free(v47);
  encode_list_free(&v49);
  switch(v32)
  {
    case 0xE007C009:
      return 3758097084;
    case 0xE00002CE:
    case 0xE00002E2:
    case 0xE007C008:
      return 3758097122;
    case 0xE00002BC:
      return 3758097084;
  }

  return v32;
}

uint64_t aks_ref_key_create(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v11 = 3758097090;
  v12 = der_key_op_create;
  v13 = OUTLINED_FUNCTION_28_0();
  *v13 = 0;
  encode_list_add_key(v13, der_key_op, v12);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  if (!a6)
  {
    goto LABEL_14;
  }

  v14 = OUTLINED_FUNCTION_59();
  v26 = v14;
  if (!v14)
  {
    v11 = 3758604298;
    goto LABEL_14;
  }

  v15 = v14;
  OUTLINED_FUNCTION_29_0(v14);
  if (a4 && encode_list_merge_dict(v13) || encode_list_add_number(v13, der_key_keybag_class, a2) || encode_list_add_number(v13, der_key_type, a3) || encode_list_dict(v13, &v29, &v30))
  {
LABEL_17:
    aks_ref_key_free(&v26);
    goto LABEL_14;
  }

  v16 = _aks_operation(a1);
  if (v16)
  {
    v11 = v16;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_1(v27, v28);
  OUTLINED_FUNCTION_30_1();
  if (der_dict_find_value(v17, v18, v19))
  {
    v15[4] = 0;
  }

  v20 = *v15;
  v21 = v15[2];
  OUTLINED_FUNCTION_30_1();
  if (der_dict_find_value(v22, v23, v24))
  {
    v15[3] = 0;
  }

  v11 = 0;
  *a6 = v15;
  v27 = 0;
  v28 = 0;
LABEL_14:
  encode_list_free(v13);
  OUTLINED_FUNCTION_6_3(v13);
  free(v13);
  OUTLINED_FUNCTION_22_1(v29, v30);
  free(v29);
  OUTLINED_FUNCTION_22_1(v27, v28);
  free(v27);
  return v11;
}

uint64_t aks_ref_key_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, rsize_t a5)
{
  OUTLINED_FUNCTION_2_4();
  v10 = der_key_op_decrypt;
  v11 = OUTLINED_FUNCTION_28_0();
  v12 = OUTLINED_FUNCTION_8_1(v11);
  encode_list_add_key(v12, der_key_op, v10);
  if (a4 && a5 && der_get_sizeof(a4) == a5)
  {
    version = aks_ref_key_get_version(v7);
    if (!version)
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      OUTLINED_FUNCTION_52();
      if (!der_dict_find_value(v14, v15, v16) || !der_dict_find_value(der_key_protected_data, &v25, &v26) || encode_list_add_der() || encode_list_add_der() || (OUTLINED_FUNCTION_30_1(), encode_list_dict(v17, v18, v19)))
      {
        encode_list_free(&v27);
        goto LABEL_19;
      }

      encode_list_free(&v27);
    }

    OUTLINED_FUNCTION_53();
    if (!_get_merged_params())
    {
      encode_list_remove_key(v6, der_key_data);
      v20 = OUTLINED_FUNCTION_18_1();
      encode_list_remove_key(v20, v21);
      if (!encode_list_add_der() && !OUTLINED_FUNCTION_14_1())
      {
        OUTLINED_FUNCTION_37();
        if (!encode_list_dict(v6, v22, v23))
        {
          v5 = _aks_operation(*(v7 + 40));
        }
      }
    }

    if (!version)
    {
      OUTLINED_FUNCTION_22_1(a4, a5);
      free(a4);
    }
  }

LABEL_19:
  encode_list_free(v6);
  OUTLINED_FUNCTION_1_3();
  free(v6);
  return v5;
}

uint64_t aks_ref_key_delete(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v4 = der_key_op_delete;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_8_1(v5);
  encode_list_add_key(v6, der_key_op, v4);
  OUTLINED_FUNCTION_17_1();
  if (!_get_merged_params())
  {
    encode_list_remove_key(v2, der_key_ref_key);
    v7 = OUTLINED_FUNCTION_33_0();
    if (!v7 && !OUTLINED_FUNCTION_11_0(v7, v8))
    {
      v9 = *(a1 + 40);
      OUTLINED_FUNCTION_3_2();
      v1 = _aks_operation(v10);
    }
  }

  encode_list_free(v2);
  OUTLINED_FUNCTION_1_3();
  free(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_12_1(v22, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22, v24);
    free(v23);
  }

  if (v19)
  {
    OUTLINED_FUNCTION_13_1(v19, v11, v12, v13, v14, v15, v16, v17, v19, v21);
    free(v20);
  }

  return v1;
}

uint64_t aks_ref_key_create_and_encrypt(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_49();
  v13 = der_key_op_create_with_encrypt;
  v14 = OUTLINED_FUNCTION_28_0();
  v15 = OUTLINED_FUNCTION_8_1(v14);
  encode_list_add_key(v15, der_key_op, v13);
  v57 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v16 = OUTLINED_FUNCTION_59();
  v59 = v16;
  if (!v16)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v17 = v16;
  OUTLINED_FUNCTION_29_0(v16);
  if (a4 && encode_list_merge_dict(v9) || (v18 = OUTLINED_FUNCTION_34_0(), encode_list_remove_key(v18, v19), v20 = OUTLINED_FUNCTION_18_1(), encode_list_remove_key(v20, v21), v22 = encode_list_add_number(v9, der_key_keybag_class, a2), v22) || OUTLINED_FUNCTION_58(v22, der_key_type) || (OUTLINED_FUNCTION_24_1(), encode_list_add_data()) || (OUTLINED_FUNCTION_52(), encode_list_dict(v9, v23, v24)))
  {
LABEL_26:
    aks_ref_key_free(&v59);
    goto LABEL_16;
  }

  v25 = OUTLINED_FUNCTION_55();
  if (v25 || (v25 = OUTLINED_FUNCTION_39(v25, v26, v27, v28, v29, v30, v31, v32, v50, a8, a7, v55, v56, 0, 0, v59, v60, v61, v62, v63, v64), v25))
  {
    v8 = v25;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_1(v62, v63);
  OUTLINED_FUNCTION_37();
  if (der_dict_find_value(v33, v34, v35))
  {
    v17[4] = 0;
  }

  v36 = *v17;
  v37 = v17[2];
  OUTLINED_FUNCTION_37();
  value = der_dict_find_value(v38, v39, v40);
  if (value)
  {
    v17[3] = 0;
  }

  OUTLINED_FUNCTION_23_1(value, v42, v43, v44, v45, v46, v47, v48, v51, v52, v54, 0, 0, v57, __n, v59, v60, v61);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_3();
  free(v9);
  if (v57)
  {
    OUTLINED_FUNCTION_22_1(v57, __n);
    free(v57);
  }

  if (v62)
  {
    OUTLINED_FUNCTION_22_1(v62, v63);
    free(v62);
  }

  if (v60)
  {
    OUTLINED_FUNCTION_22_1(v60, v61);
    free(v60);
  }

  if (v64)
  {
    OUTLINED_FUNCTION_22_1(v64, v65);
    free(v64);
  }

  return v8;
}

uint64_t aks_ref_key_create_and_wrap(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_49();
  v13 = der_key_op_create_with_wrap;
  v14 = OUTLINED_FUNCTION_28_0();
  v15 = OUTLINED_FUNCTION_8_1(v14);
  encode_list_add_key(v15, der_key_op, v13);
  v57 = 0;
  __n = 0;
  if (!a8)
  {
    goto LABEL_16;
  }

  v16 = OUTLINED_FUNCTION_59();
  v59 = v16;
  if (!v16)
  {
    OUTLINED_FUNCTION_45();
    goto LABEL_16;
  }

  v17 = v16;
  OUTLINED_FUNCTION_29_0(v16);
  if (a4 && encode_list_merge_dict(v9) || (v18 = OUTLINED_FUNCTION_34_0(), encode_list_remove_key(v18, v19), v20 = OUTLINED_FUNCTION_18_1(), encode_list_remove_key(v20, v21), v22 = encode_list_add_number(v9, der_key_keybag_class, a2), v22) || OUTLINED_FUNCTION_58(v22, der_key_type) || (OUTLINED_FUNCTION_24_1(), encode_list_add_data()) || (OUTLINED_FUNCTION_52(), encode_list_dict(v9, v23, v24)))
  {
LABEL_26:
    aks_ref_key_free(&v59);
    goto LABEL_16;
  }

  v25 = OUTLINED_FUNCTION_55();
  if (v25 || (v25 = OUTLINED_FUNCTION_39(v25, v26, v27, v28, v29, v30, v31, v32, v50, a8, a7, v55, v56, 0, 0, v59, v60, v61, v62, v63, v64), v25))
  {
    v8 = v25;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_1(v62, v63);
  OUTLINED_FUNCTION_37();
  if (der_dict_find_value(v33, v34, v35))
  {
    v17[4] = 0;
  }

  v36 = *v17;
  v37 = v17[2];
  OUTLINED_FUNCTION_37();
  value = der_dict_find_value(v38, v39, v40);
  if (value)
  {
    v17[3] = 0;
  }

  OUTLINED_FUNCTION_23_1(value, v42, v43, v44, v45, v46, v47, v48, v51, v52, v54, 0, 0, v57, __n, v59, v60, v61);
LABEL_16:
  encode_list_free(v9);
  OUTLINED_FUNCTION_1_3();
  free(v9);
  if (v57)
  {
    OUTLINED_FUNCTION_22_1(v57, __n);
    free(v57);
  }

  if (v62)
  {
    OUTLINED_FUNCTION_22_1(v62, v63);
    free(v62);
  }

  if (v60)
  {
    OUTLINED_FUNCTION_22_1(v60, v61);
    free(v60);
  }

  if (v64)
  {
    OUTLINED_FUNCTION_22_1(v64, v65);
    free(v64);
  }

  return v8;
}

uint64_t aks_ref_key_encapsulate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, void *a7, void **a8, void *a9)
{
  OUTLINED_FUNCTION_20_1();
  v14 = v13;
  v35[2] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_2();
  v15 = der_key_op_kem_encapsulate;
  v16 = OUTLINED_FUNCTION_28_0();
  v17 = OUTLINED_FUNCTION_8_1(v16);
  encode_list_add_key(v17, der_key_op, v15);
  LODWORD(v18) = 0;
  v19 = 0;
  v32[0] = 0;
  memset(__n, 0, sizeof(__n));
  v30 = 0;
  v29 = 0;
  v28 = 0;
  if (a6 && a8)
  {
    if (OUTLINED_FUNCTION_48())
    {
      goto LABEL_13;
    }

    encode_list_remove_key(v10, der_key_ref_key);
    OUTLINED_FUNCTION_53();
    if (encode_list_add_data())
    {
      goto LABEL_13;
    }

    v20 = *v14;
    v21 = v14[2];
    if (encode_list_add_der() || encode_list_dict(v10, &__n[1], v32))
    {
      goto LABEL_13;
    }

    v22 = _aks_operation(*(v14 + 10));
    if (v22)
    {
      v9 = v22;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_45();
    *(v23 + 40) = 0u;
    *(v23 + 56) = 0u;
    *(v23 + 24) = 0u;
    v33 = 0u;
    v32[1] = der_key_op_compute_key;
    v35[1] = 0;
    v34[2] = der_key_data;
    der_dict_iterate();
    LODWORD(v18) = 0;
    v19 = 0;
    if (v33)
    {
      if (v34[3])
      {
        if (!der_utils_decode_implicit_raw_octet_string_alloc(v34, 4, &v30, __n))
        {
LABEL_13:
          v19 = 0;
          LODWORD(v18) = 0;
          goto LABEL_14;
        }

        v24 = der_utils_decode_implicit_raw_octet_string_alloc(v35, 4, &v28, &v29);
        v18 = v29;
        v19 = v28;
        if (v24)
        {
          v9 = 0;
          *a6 = v28;
          *a7 = v18;
          v28 = 0;
          v29 = 0;
          *a8 = v30;
          *a9 = __n[0];
          v30 = 0;
          __n[0] = 0;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_22_1(v19, v18);
  free(v28);
  OUTLINED_FUNCTION_22_1(v30, __n[0]);
  free(v30);
  encode_list_free(v10);
  OUTLINED_FUNCTION_1_3();
  free(v10);
  OUTLINED_FUNCTION_22_1(*&__n[1], v32[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_22_1(0, 0);
  free(0);
  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t aks_ref_key_enable_test_keys(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v4 = der_key_op_enable_test_keys;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_8_1(v5);
  encode_list_add_key(v6, der_key_op, v4);
  OUTLINED_FUNCTION_17_1();
  v7 = encode_list_add_data();
  if (!v7 && !OUTLINED_FUNCTION_11_0(v7, v8))
  {
    OUTLINED_FUNCTION_3_2();
    v1 = _aks_operation(a1);
  }

  encode_list_free(v2);
  OUTLINED_FUNCTION_1_3();
  free(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_12_1(v20, v9, v10, v11, v12, v13, v14, v15, v17, v19, v20, v22);
    free(v21);
  }

  if (v17)
  {
    OUTLINED_FUNCTION_13_1(v17, v9, v10, v11, v12, v13, v14, v15, v17, v19);
    free(v18);
  }

  return v1;
}

void aks_ref_key_attest(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, rsize_t __n, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_27_1();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_2_4();
  v31 = der_key_op_attest;
  v32 = OUTLINED_FUNCTION_28_0();
  v33 = OUTLINED_FUNCTION_8_1(v32);
  encode_list_add_key(v33, der_key_op, v31);
  a12 = 0;
  if (v26)
  {
    if (v25)
    {
      if (!_get_merged_params())
      {
        encode_list_remove_key(&a12, der_key_ref_key);
        v34 = *v28;
        v35 = v28[2];
        if (!encode_list_add_der())
        {
          OUTLINED_FUNCTION_25_1();
          if (!_get_merged_params())
          {
            v36 = OUTLINED_FUNCTION_15_1();
            encode_list_remove_key(v36, v37);
            if (!encode_list_add_list(v24, der_key_data, &a12) && !OUTLINED_FUNCTION_14_1())
            {
              OUTLINED_FUNCTION_30_1();
              if (!encode_list_dict(v24, v38, v39))
              {
                _aks_operation(*(v27 + 40));
              }
            }
          }
        }
      }
    }
  }

  encode_list_free(&a12);
  encode_list_free(v24);
  OUTLINED_FUNCTION_1_3();
  free(v24);
  OUTLINED_FUNCTION_26_1();
}

uint64_t aks_ref_key_set_params(uint64_t a1, const void *a2, size_t __count)
{
  if (a2 && der_get_sizeof(a2) != __count)
  {
    return 3758097090;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_22_1(v6, *(a1 + 56));
    free(*(a1 + 48));
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  result = 0;
  if (a2 && __count)
  {
    v8 = calloc(__count, 1uLL);
    *(a1 + 48) = v8;
    *(a1 + 56) = __count;
    if (v8)
    {
      memcpy(v8, a2, __count);
      return 0;
    }

    else
    {
      return 3758604298;
    }
  }

  return result;
}

uint64_t aks_ref_key_validate_key(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v4 = der_key_op_validate_key;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_8_1(v5);
  encode_list_add_key(v6, der_key_op, v4);
  OUTLINED_FUNCTION_17_1();
  v7 = OUTLINED_FUNCTION_33_0();
  if (!v7 && !OUTLINED_FUNCTION_11_0(v7, v8))
  {
    v9 = *(a1 + 40);
    OUTLINED_FUNCTION_3_2();
    v1 = _aks_operation(v10);
  }

  encode_list_free(v2);
  OUTLINED_FUNCTION_1_3();
  free(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_12_1(v22, v11, v12, v13, v14, v15, v16, v17, v19, v21, v22, v24);
    free(v23);
  }

  if (v19)
  {
    OUTLINED_FUNCTION_13_1(v19, v11, v12, v13, v14, v15, v16, v17, v19, v21);
    free(v20);
  }

  return v1;
}

uint64_t _op_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2_4();
  v12 = OUTLINED_FUNCTION_28_0();
  v13 = OUTLINED_FUNCTION_8_1(v12);
  encode_list_add_key(v13, der_key_op, a2);
  if (v8)
  {
    if (a5)
    {
      if (a6)
      {
        OUTLINED_FUNCTION_25_1();
        if (!_get_merged_params())
        {
          encode_list_remove_key(v7, der_key_ref_key);
          if (!OUTLINED_FUNCTION_14_1())
          {
            OUTLINED_FUNCTION_16_1();
            if (!encode_list_dict(v7, v14, v15))
            {
              v6 = OUTLINED_FUNCTION_10_1();
            }
          }
        }
      }
    }
  }

  encode_list_free(v7);
  OUTLINED_FUNCTION_1_3();
  free(v7);
  return v6;
}

uint64_t aks_sik_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = 0;
  OUTLINED_FUNCTION_7_2();
  if ((!v11 || v10 <= 0x20 && !encode_list_add_data()) && (!a3 || !encode_list_add_data()))
  {
    if (encode_list_is_empty(&v16))
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_30_1();
      if (!encode_list_dict(v12, v13, v14))
      {
        v6 = 0;
        *a5 = 0;
        *a6 = 0;
      }
    }
  }

  encode_list_free(&v16);
  return v6;
}

uint64_t aks_sik_collection()
{
  OUTLINED_FUNCTION_2_4();
  v3 = der_key_op_sik_collection;
  v4 = OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_8_1(v4);
  encode_list_add_key(v5, der_key_op, v3);
  if (!v2 || !OUTLINED_FUNCTION_47())
  {
    OUTLINED_FUNCTION_16_1();
    if (!encode_list_dict(v1, v6, v7))
    {
      v0 = _aks_operation(0xFFFFFFFFLL);
    }
  }

  encode_list_free(v1);
  OUTLINED_FUNCTION_1_3();
  free(v1);
  return v0;
}

void decode_ref_key_with_result_cold_1(void *a1, unsigned int *a2, void **a3)
{
  if (a1)
  {
    OUTLINED_FUNCTION_22_1(a1, *a2);
    free(*a3);
  }
}

uint64_t aks_fv_apfs_get_default_disk(char *a1, size_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = 3758097084;
  bzero(&v20, 0x878uLL);
  if (a1)
  {
    if (statfs("/private/var", &v20))
    {
      v4 = 3758097136;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v7 = __error();
      strerror(*v7);
      *v16 = 136318210;
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_11_1();
    }

    else
    {
      if (!strcmp(v20.f_fstypename, "apfs"))
      {
        if (strlcpy(a1, v20.f_mntfromname, a2) >= a2)
        {
          v4 = 3758097084;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_7;
      }

      v4 = 3758097112;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      *v16 = 136317954;
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      *&v16[45] = 35;
      v16[47] = v14;
      v17 = v15;
      v18 = v14;
      v19 = v15;
      v8 = &dword_1E0B50000;
      v9 = MEMORY[0x1E69E9C10];
      v11 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s skipping: not apfs%s\n";
      v12 = v16;
      v10 = OS_LOG_TYPE_DEFAULT;
      v13 = 114;
    }

    _os_log_impl(v8, v9, v10, v11, v12, v13);
  }

LABEL_7:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t fv_apfs_remove_blob(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = 3758097090;
  if (a1)
  {
    if (a2)
    {
      result = APFSVolumeRemoveUnlockRecord();
      if (result)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v5 = __error();
          strerror(*v5);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v6, v7, v8, v9, v10, v11);
        }

        result = 3758097084;
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fv_apfs_set_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = 3758097084;
  result = 3758097090;
  if (a1 && a2 && a3)
  {
    v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *a3, *(a3 + 8), *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      if (APFSVolumeSetUnlockRecord())
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v9 = __error();
          strerror(*v9);
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_5_4();
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v10, v11, v12, v13, v14, v15);
        }
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v7);
      result = v4;
    }

    else
    {
      result = 3758097084;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_fv_apfs_get_blob_by_uuid()
{
  *&v3 = OUTLINED_FUNCTION_10_2(*MEMORY[0x1E69E9840]);
  v4 = (v0 + 6);
  *in = v3;
  v49 = v3;
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v2;
  if (!v2)
  {
    goto LABEL_19;
  }

  if (!MEMORY[0x1EEE82D88] || !MEMORY[0x1EEE82D80])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v7 = v1;
  if (APFSVolumeListUUIDsOfUnlockRecords())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:
      LODWORD(v45[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
    }

LABEL_32:
    v4 = 3758097084;
    goto LABEL_19;
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
LABEL_16:
    if (v6[1])
    {
      v4 = 0;
    }

    else
    {
      v4 = (v0 + 52);
    }

    goto LABEL_19;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
    if (!OUTLINED_FUNCTION_12_2(ValueAtIndex, v12, v13, v14, v15, v16, v17, v18, theArray, theData, v45[0], v45[1], v45[2], v45[3], v45[4], v45[5], v45[6], v45[7], v45[8], v45[9], v45[10], v45[11], v45[12], *v46, *&v46[8], *&v46[16], *uu, *&uu[8], in[0]))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

LABEL_25:
      LODWORD(v45[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      goto LABEL_26;
    }

    uuid_parse(in, uu);
    if (!uuid_compare(uu, v7))
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_16;
    }
  }

  UnlockRecord = APFSVolumeGetUnlockRecord();
  if (UnlockRecord)
  {
    v39 = UnlockRecord;
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    strerror(v39);
    LODWORD(v45[0]) = 136318210;
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_3_3();
    *&v46[2] = v40;
    *&v46[10] = v41;
    *&v46[12] = v42;
    v27 = &dword_1E0B50000;
    v28 = MEMORY[0x1E69E9C10];
    v30 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s APFSVolumeGetUnlockRecord: %s\n%s\n";
    v31 = v45;
    v29 = OS_LOG_TYPE_DEFAULT;
    v32 = 124;
LABEL_26:
    _os_log_impl(v27, v28, v29, v30, v31, v32);
    goto LABEL_27;
  }

  if (!theData)
  {
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  Length = CFDataGetLength(theData);
  v6[1] = Length;
  v21 = malloc(Length);
  *v6 = v21;
  if (v21)
  {
    v22 = v21;
    BytePtr = CFDataGetBytePtr(theData);
    v24 = CFDataGetLength(theData);
    memcpy(v22, BytePtr, v24);
    CFRelease(theData);
    theData = 0;
    goto LABEL_16;
  }

  v0 = (v0 + 1);
LABEL_27:
  v4 = v0;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

CFIndex fv_apfs_get_blobs()
{
  *&v2 = OUTLINED_FUNCTION_10_2(*MEMORY[0x1E69E9840]);
  Count = (v0 + 6);
  *in = v2;
  v40 = v2;
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v1;
  if (!v1)
  {
    goto LABEL_13;
  }

  if (!MEMORY[0x1EEE82D88] || !MEMORY[0x1EEE82D80])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (APFSVolumeListUUIDsOfUnlockRecords())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_29:
      LODWORD(v36[0]) = 136317954;
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v28, v29, v30, v31, v32, v33);
    }

LABEL_30:
    Count = 3758097084;
    goto LABEL_13;
  }

  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if (!OUTLINED_FUNCTION_12_2(ValueAtIndex, v8, v9, v10, v11, v12, v13, v14, theArray, value, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], *v37, *&v37[8], *&v37[16], *uu, *&uu[8], in[0]))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

LABEL_23:
        LODWORD(v36[0]) = 136317954;
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_9_2();
        goto LABEL_24;
      }

      uuid_parse(in, uu);
      UnlockRecord = APFSVolumeGetUnlockRecord();
      if (UnlockRecord)
      {
        break;
      }

      if (!value)
      {
        v0 = (v0 + 52);
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      CFArrayAppendValue(v5, value);
      CFRelease(value);
      value = 0;
      if (Count == ++v6)
      {
        Count = 0;
        goto LABEL_13;
      }
    }

    v18 = UnlockRecord;
    v0 = (v0 + 52);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    strerror(v18);
    LODWORD(v36[0]) = 136318210;
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_3_3();
    *&v37[2] = v19;
    *&v37[10] = v20;
    *&v37[12] = v21;
    v22 = &dword_1E0B50000;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s APFSVolumeGetUnlockRecord: %s\n%s\n";
    v25 = v36;
    v26 = OS_LOG_TYPE_DEFAULT;
    v27 = 124;
LABEL_24:
    _os_log_impl(v22, v23, v26, v24, v25, v27);
LABEL_25:
    Count = v0;
  }

LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (value)
  {
    CFRelease(value);
  }

  v16 = *MEMORY[0x1E69E9840];
  return Count;
}

uint64_t aks_fv_apfs_get_vek(uint64_t a1, void *a2)
{
  v3 = 3758097084;
  if (!APFSVolumeGetWVEK())
  {
    Length = CFDataGetLength(0);
    a2[1] = Length;
    v5 = malloc(Length);
    *a2 = v5;
    if (v5)
    {
      v6 = v5;
      BytePtr = CFDataGetBytePtr(0);
      memcpy(v6, BytePtr, a2[1]);
      return 0;
    }

    else
    {
      return 3758097085;
    }
  }

  return v3;
}

void *aks_create_escrow_blob(rsize_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a5 >> 16)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5;
  }

  if (a3 != 32 || !v10 || !a4 || !a2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136318978;
    v24 = "aks.fw";
    v25 = 2080;
    v26 = "";
    v27 = 1024;
    v28 = -1;
    v29 = 2080;
    v30 = "";
    v31 = 2080;
    v32 = "";
    v33 = 2080;
    v34 = "";
    v35 = 2080;
    v36 = "";
    v37 = 2080;
    v38 = "aks_create_escrow_blob";
    v39 = 2080;
    v40 = ":";
    v41 = 1024;
    v42 = 26;
    v43 = 2080;
    v44 = "";
    v45 = 1024;
    *v46 = a2 == 0;
    *&v46[4] = 2048;
    *&v46[6] = a3;
    *&v46[14] = 1024;
    *&v46[16] = a4 == 0;
    *v47 = 2048;
    *&v47[2] = a5;
    v48 = 2080;
    v49 = "";
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Bad input %d %zd %d %zd%s\n";
    v20 = 146;
LABEL_23:
    _os_log_impl(&dword_1E0B50000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
    goto LABEL_24;
  }

  v11 = ccder_sizeof_raw_octet_string();
  if (__CFADD__(v11, ccder_sizeof_raw_octet_string()))
  {
LABEL_24:
    v15 = 0;
LABEL_25:
    v13 = 0;
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = ccder_sizeof();
  v13 = v12;
  if (v12 >= 0x3C01)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 136318466;
    v24 = "aks.fw";
    v25 = 2080;
    v26 = "";
    v27 = 1024;
    v28 = -1;
    v29 = 2080;
    v30 = "";
    v31 = 2080;
    v32 = "";
    v33 = 2080;
    v34 = "";
    v35 = 2080;
    v36 = "";
    v37 = 2080;
    v38 = "aks_create_escrow_blob";
    v39 = 2080;
    v40 = ":";
    v41 = 1024;
    v42 = 31;
    v43 = 2080;
    v44 = "";
    v45 = 2048;
    *v46 = v13;
    *&v46[8] = 2048;
    *&v46[10] = 15360;
    *&v46[18] = 2080;
    *v47 = "";
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Escrow blob is too big %zd/%llu%s\n";
    v20 = 134;
    goto LABEL_23;
  }

  v14 = calloc(v12, 1uLL);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_25;
  }

  v21 = v14;
  v22 = &v14[v13];
  if (!ccder_blob_encode_body_tl() || !ccder_blob_encode_body_tl() || !ccder_blob_encode_tl() || v21 != v22)
  {
    memset_s(v15, v13, 0, v13);
    free(v15);
    goto LABEL_24;
  }

  if (a1)
  {
LABEL_16:
    *a1 = v13;
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t aks_parse_escrow_blob(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = 1;
  if (a1 && a2 >= 0x20)
  {
    v19 = a1;
    v20 = a1 + a2;
    if (ccder_blob_decode_range())
    {
      if ((v20 - v19 - 15360) < 0xFFFFFFFFFFFFC420)
      {
        v6 = 3;
      }

      else
      {
        v18 = 0;
        v17 = 0;
        v16 = 0;
        v15 = 0;
        der_utils_decode_implicit_raw_octet_string(&v19, 0x8000000000000000, &v18, &v17);
        if (v11 && (der_utils_decode_implicit_raw_octet_string(&v19, 0x8000000000000001, &v16, &v15), v12))
        {
          v6 = 0;
          *a3 = v17;
          *a4 = v18;
          *a5 = v15;
          *a6 = v16;
        }

        else
        {
          v6 = 0xFFFFFFFFLL;
        }
      }
    }

    else
    {
      v6 = 2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136318210;
    v22 = "aks.fw";
    v23 = 2080;
    v24 = "";
    v25 = 1024;
    v26 = -1;
    v27 = 2080;
    v28 = "";
    v29 = 2080;
    v30 = "";
    v31 = 2080;
    v32 = "";
    v33 = 2080;
    v34 = "";
    v35 = 2080;
    v36 = "aks_parse_escrow_blob";
    v37 = 2080;
    v38 = ":";
    v39 = 1024;
    v40 = 100;
    v41 = 2080;
    v42 = "";
    v43 = 1024;
    v44 = v6;
    v45 = 2080;
    v46 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s escrow blob parse error %d%s\n", buf, 0x78u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}