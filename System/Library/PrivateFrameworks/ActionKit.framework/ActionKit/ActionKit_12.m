uint64_t kex_method_curve25519_key_exchange(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a2;
  if (*a2 <= 2)
  {
    if (v5)
    {
      if (v5 != 2)
      {
        goto LABEL_135;
      }
    }

    else
    {
      *(a2 + 576) = 0;
      *a2 = 2;
    }

    v103[0] = 0;
    v7 = **(a1 + 144);
    if (!strcmp(v7, "curve25519-sha256@libssh.org") || !strcmp(v7, "curve25519-sha256"))
    {
      v11 = _libssh2_curve25519_new(a1, (a2 + 592), (a2 + 600));
      if (!v11)
      {
        *(a2 + 288) = 30;
        v103[0] = (a2 + 289);
        _libssh2_store_str(v103, *(a2 + 592), 0x20uLL);
        v6 = 37;
        *(a2 + 552) = 37;
        *a2 = 3;
        goto LABEL_16;
      }

      v10 = v11;
      v8 = "Unable to create private key";
      v9 = a1;
    }

    else
    {
      v8 = "Unknown KEX curve25519 curve type";
      v9 = a1;
      v10 = 0xFFFFFFFFLL;
    }

LABEL_31:
    v4 = _libssh2_error(v9, v10, v8);
    goto LABEL_135;
  }

  switch(v5)
  {
    case 5:
      goto LABEL_22;
    case 4:
      goto LABEL_19;
    case 3:
      v6 = *(a2 + 552);
LABEL_16:
      v12 = _libssh2_transport_send(a1, (a2 + 288), v6, 0, 0);
      v4 = v12;
      if (v12 == -37)
      {
        return v4;
      }

      if (v12)
      {
        v8 = "Unable to send ECDH_INIT";
LABEL_30:
        v9 = a1;
        v10 = v4;
        goto LABEL_31;
      }

      *a2 = 4;
LABEL_19:
      v13 = _libssh2_packet_require(a1, 31, (a2 + 544), (a2 + 560), 0, 0, 0, a2 + 8);
      v4 = v13;
      if (v13 == -37)
      {
        return v4;
      }

      if (!v13)
      {
        *a2 = 5;
LABEL_22:
        v14 = *(a2 + 560);
        if (v14 <= 4)
        {
          v4 = _libssh2_error(a1, 4294967286, "Data is too short");
LABEL_133:
          if (v4 == -37)
          {
            return v4;
          }

          (*(a1 + 24))(*(a2 + 544), a1);
          break;
        }

        v4 = 0;
        v15 = *(a2 + 24);
        if (v15 > 2)
        {
          if (v15 != 3)
          {
            if (v15 != 5)
            {
              goto LABEL_130;
            }

            goto LABEL_80;
          }
        }

        else
        {
          v16 = *(a2 + 544);
          v17 = *(a2 + 592);
          v18 = *(a2 + 600);
          if (v15)
          {
            if (v15 != 2)
            {
              goto LABEL_130;
            }
          }

          else
          {
            *(a2 + 184) = BN_new();
            *(a2 + 24) = 2;
          }

          __src = 0;
          d = 0;
          v104 = 0;
          cnt = 0;
          v103[0] = v16;
          v103[1] = (v16 + 1);
          v103[2] = v14;
          if (_libssh2_get_string(v103, &__src, &v104))
          {
            v19 = "Unexpected curve25519 key length 2";
LABEL_38:
            v20 = a1;
            v21 = 4294967282;
LABEL_129:
            v4 = _libssh2_error(v20, v21, v19);
LABEL_130:
            BN_clear_free(*(a2 + 184));
            *(a2 + 184) = 0;
            v74 = *(a2 + 200);
            if (v74)
            {
              (*(a1 + 24))(v74, a1);
              *(a2 + 200) = 0;
            }

            *(a2 + 24) = 0;
            goto LABEL_133;
          }

          v22 = v104;
          *(a1 + 208) = v104;
          v23 = (*(a1 + 8))(v22, a1);
          *(a1 + 200) = v23;
          if (!v23)
          {
            v19 = "Unable to allocate memory for a copy of the host curve25519 key";
            goto LABEL_43;
          }

          memcpy(v23, __src, *(a1 + 208));
          ctx = 0;
          if (_libssh2_md5_init(&ctx))
          {
            EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
            EVP_DigestFinal(ctx, (a1 + 212), 0);
            EVP_MD_CTX_free(ctx);
            v24 = 1;
          }

          else
          {
            v24 = 0;
          }

          *(a1 + 228) = v24;
          ctx = 0;
          if (_libssh2_sha1_init(&ctx))
          {
            EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
            EVP_DigestFinal(ctx, (a1 + 232), 0);
            EVP_MD_CTX_free(ctx);
            v25 = 1;
          }

          else
          {
            v25 = 0;
          }

          *(a1 + 252) = v25;
          ctx = 0;
          if (_libssh2_sha256_init(&ctx))
          {
            EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
            EVP_DigestFinal(ctx, (a1 + 256), 0);
            EVP_MD_CTX_free(ctx);
            v26 = 1;
          }

          else
          {
            v26 = 0;
          }

          *(a1 + 288) = v26;
          if ((*(*(a1 + 184) + 16))(a1, *(a1 + 200), *(a1 + 208), a1 + 192))
          {
            v19 = "Unable to initialize hostkey importer curve25519";
LABEL_53:
            v20 = a1;
            v21 = 4294967286;
            goto LABEL_129;
          }

          if (_libssh2_get_string(v103, &d, &cnt))
          {
            v19 = "Unexpected curve25519 key length";
            goto LABEL_38;
          }

          if (cnt != 32)
          {
            v19 = "Unexpected curve25519 server public key length";
            goto LABEL_53;
          }

          if (_libssh2_get_string(v103, (a2 + 208), (a2 + 232)))
          {
            v19 = "Unexpected curve25519 server sig length";
            goto LABEL_53;
          }

          if (_libssh2_curve25519_gen_k((a2 + 184), v18, d))
          {
            v19 = "Unable to create curve25519 shared secret";
            v20 = a1;
            v21 = 4294967291;
            goto LABEL_129;
          }

          v27 = BN_num_bits(*(a2 + 184));
          v28 = v27 + 7;
          if (v27 < -7)
          {
            v28 = v27 + 14;
          }

          *(a2 + 224) = (v28 >> 3) + 5;
          v29 = BN_num_bits(*(a2 + 184));
          v30 = *(a2 + 224);
          if ((v29 & 7) != 0)
          {
            *(a2 + 224) = --v30;
          }

          v31 = (*(a1 + 8))(v30, a1);
          *(a2 + 200) = v31;
          if (!v31)
          {
            v19 = "Unable to allocate buffer for K";
            goto LABEL_43;
          }

          _libssh2_htonu32(v31, *(a2 + 224) - 4);
          if ((BN_num_bits(*(a2 + 184)) & 7) != 0)
          {
            v32 = 4;
          }

          else
          {
            *(*(a2 + 200) + 4) = 0;
            v32 = 5;
          }

          BN_bn2bin(*(a2 + 184), (*(a2 + 200) + v32));
          ctx = 0;
          *(a2 + 240) = &ctx;
          _libssh2_sha256_init(&ctx);
          v33 = *(a1 + 424);
          if (v33)
          {
            v34 = strlen(v33);
            _libssh2_htonu32((a2 + 56), v34 - 2);
            EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
            v35 = strlen(*(a1 + 424)) - 2;
            v36 = ctx;
            v37 = *(a1 + 424);
          }

          else
          {
            _libssh2_htonu32((a2 + 56), 0x16u);
            EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
            v36 = ctx;
            v37 = "SSH-2.0-libssh2_1.11.0";
            v35 = 22;
          }

          EVP_DigestUpdate(v36, v37, v35);
          v38 = strlen(*(a1 + 312));
          _libssh2_htonu32((a2 + 56), v38);
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          v39 = strlen(*(a1 + 312));
          EVP_DigestUpdate(ctx, *(a1 + 312), v39);
          _libssh2_htonu32((a2 + 56), *(a1 + 440));
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          EVP_DigestUpdate(ctx, *(a1 + 432), *(a1 + 440));
          _libssh2_htonu32((a2 + 56), *(a1 + 328));
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          EVP_DigestUpdate(ctx, *(a1 + 320), *(a1 + 328));
          _libssh2_htonu32((a2 + 56), *(a1 + 208));
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
          _libssh2_htonu32((a2 + 56), 0x20u);
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          EVP_DigestUpdate(ctx, v17, 0x20uLL);
          _libssh2_htonu32((a2 + 56), cnt);
          EVP_DigestUpdate(ctx, (a2 + 56), 4uLL);
          EVP_DigestUpdate(ctx, d, cnt);
          EVP_DigestUpdate(ctx, *(a2 + 200), *(a2 + 224));
          EVP_DigestFinal(ctx, (a2 + 56), 0);
          EVP_MD_CTX_free(ctx);
          if ((*(*(a1 + 184) + 40))(a1, *(a2 + 208), *(a2 + 232), a2 + 56, 32, a1 + 192))
          {
            v19 = "Unable to verify hostkey signature curve25519";
            v20 = a1;
            v21 = 4294967285;
            goto LABEL_129;
          }

          *(a2 + 120) = 21;
          *(a2 + 24) = 3;
        }

        v40 = _libssh2_transport_send(a1, (a2 + 120), 1uLL, 0, 0);
        v4 = v40;
        if (v40 == -37)
        {
          return v4;
        }

        if (v40)
        {
          v19 = "Unable to send NEWKEYS message curve25519";
          goto LABEL_128;
        }

        *(a2 + 24) = 5;
LABEL_80:
        v41 = _libssh2_packet_require(a1, 21, (a2 + 48), (a2 + 144), 0, 0, 0, a2 + 248);
        v4 = v41;
        if (v41 == -37)
        {
          return v4;
        }

        if (!v41)
        {
          *(a1 + 128) |= 2u;
          (*(a1 + 24))(*(a2 + 48), a1);
          if (*(a1 + 160))
          {
            goto LABEL_85;
          }

          v42 = (*(a1 + 8))(32, a1);
          *(a1 + 160) = v42;
          if (v42)
          {
            v43 = *(a2 + 72);
            *v42 = *(a2 + 56);
            v42[1] = v43;
            *(a1 + 168) = 32;
LABEL_85:
            v44 = *(a1 + 448);
            v45 = *(v44 + 56);
            if (v45)
            {
              v45(a1, a1 + 456);
              v44 = *(a1 + 448);
            }

            if (*(v44 + 40))
            {
              LODWORD(d) = 0;
              LODWORD(__src) = 0;
              v103[0] = 0;
              v46 = (*(a1 + 8))(*(v44 + 20) + 32, a1);
              if (!v46)
              {
                v4 = 0xFFFFFFFFLL;
                goto LABEL_130;
              }

              v47 = v46;
              v48 = *(a1 + 448);
              if (*(v48 + 20))
              {
                v49 = 0;
                do
                {
                  _libssh2_sha256_init(v103);
                  EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                  EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                  v50 = v103[0];
                  if (v49)
                  {
                    v51 = v47;
                    v52 = v49;
                  }

                  else
                  {
                    EVP_DigestUpdate(v103[0], "A", 1uLL);
                    v50 = v103[0];
                    v51 = *(a1 + 160);
                    v52 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v50, v51, v52);
                  EVP_DigestFinal(v103[0], v47 + v49, 0);
                  EVP_MD_CTX_free(v103[0]);
                  v49 += 32;
                  v48 = *(a1 + 448);
                }

                while (v49 < *(v48 + 20));
              }

              v103[0] = 0;
              v53 = (*(a1 + 8))(*(v48 + 24) + 32, a1);
              if (!v53)
              {
                goto LABEL_142;
              }

              v54 = v53;
              v55 = *(a1 + 448);
              if (*(v55 + 24))
              {
                v56 = 0;
                do
                {
                  _libssh2_sha256_init(v103);
                  EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                  EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                  v57 = v103[0];
                  if (v56)
                  {
                    v58 = v54;
                    v59 = v56;
                  }

                  else
                  {
                    EVP_DigestUpdate(v103[0], "C", 1uLL);
                    v57 = v103[0];
                    v58 = *(a1 + 160);
                    v59 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v57, v58, v59);
                  EVP_DigestFinal(v103[0], v54 + v56, 0);
                  EVP_MD_CTX_free(v103[0]);
                  v56 += 32;
                  v55 = *(a1 + 448);
                }

                while (v56 < *(v55 + 24));
              }

              if ((*(v55 + 40))(a1))
              {
                goto LABEL_125;
              }

              if (d)
              {
                memset_s(v47, *(*(a1 + 448) + 20), 0, *(*(a1 + 448) + 20));
                (*(a1 + 24))(v47, a1);
              }

              if (__src)
              {
                memset_s(v54, *(*(a1 + 448) + 24), 0, *(*(a1 + 448) + 24));
                (*(a1 + 24))(v54, a1);
              }
            }

            v60 = *(a1 + 336);
            v61 = *(v60 + 56);
            if (v61)
            {
              v61(a1, a1 + 344);
              v60 = *(a1 + 336);
            }

            if (!*(v60 + 40))
            {
              goto LABEL_149;
            }

            LODWORD(d) = 0;
            LODWORD(__src) = 0;
            v103[0] = 0;
            v62 = (*(a1 + 8))(*(v60 + 20) + 32, a1);
            if (!v62)
            {
LABEL_143:
              v4 = 4294967291;
              goto LABEL_130;
            }

            v47 = v62;
            v63 = *(a1 + 336);
            if (*(v63 + 20))
            {
              v64 = 0;
              do
              {
                _libssh2_sha256_init(v103);
                EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                v65 = v103[0];
                if (v64)
                {
                  v66 = v47;
                  v67 = v64;
                }

                else
                {
                  EVP_DigestUpdate(v103[0], "B", 1uLL);
                  v65 = v103[0];
                  v66 = *(a1 + 160);
                  v67 = *(a1 + 168);
                }

                EVP_DigestUpdate(v65, v66, v67);
                EVP_DigestFinal(v103[0], v47 + v64, 0);
                EVP_MD_CTX_free(v103[0]);
                v64 += 32;
                v63 = *(a1 + 336);
              }

              while (v64 < *(v63 + 20));
            }

            v103[0] = 0;
            v68 = (*(a1 + 8))(*(v63 + 24) + 32, a1);
            if (v68)
            {
              v54 = v68;
              v69 = *(a1 + 336);
              if (*(v69 + 24))
              {
                v70 = 0;
                do
                {
                  _libssh2_sha256_init(v103);
                  EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                  EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                  v71 = v103[0];
                  if (v70)
                  {
                    v72 = v54;
                    v73 = v70;
                  }

                  else
                  {
                    EVP_DigestUpdate(v103[0], "D", 1uLL);
                    v71 = v103[0];
                    v72 = *(a1 + 160);
                    v73 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v71, v72, v73);
                  EVP_DigestFinal(v103[0], v54 + v70, 0);
                  EVP_MD_CTX_free(v103[0]);
                  v70 += 32;
                  v69 = *(a1 + 336);
                }

                while (v70 < *(v69 + 24));
              }

              if ((*(v69 + 40))(a1))
              {
LABEL_125:
                (*(a1 + 24))(v47, a1);
                (*(a1 + 24))(v54, a1);
                goto LABEL_143;
              }

              if (d)
              {
                memset_s(v47, *(*(a1 + 336) + 20), 0, *(*(a1 + 336) + 20));
                (*(a1 + 24))(v47, a1);
              }

              if (__src)
              {
                memset_s(v54, *(*(a1 + 336) + 24), 0, *(*(a1 + 336) + 24));
                (*(a1 + 24))(v54, a1);
              }

LABEL_149:
              v78 = *(a1 + 464);
              v79 = *(v78 + 32);
              if (v79)
              {
                v79(a1, a1 + 480);
                v78 = *(a1 + 464);
              }

              if (*(v78 + 16))
              {
                LODWORD(d) = 0;
                v103[0] = 0;
                v80 = (*(a1 + 8))(*(v78 + 12) + 32, a1);
                if (!v80)
                {
                  goto LABEL_143;
                }

                v81 = v80;
                v82 = *(a1 + 464);
                if (*(v82 + 12))
                {
                  v83 = 0;
                  do
                  {
                    _libssh2_sha256_init(v103);
                    EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                    EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                    v84 = v103[0];
                    if (v83)
                    {
                      v85 = v81;
                      v86 = v83;
                    }

                    else
                    {
                      EVP_DigestUpdate(v103[0], "E", 1uLL);
                      v84 = v103[0];
                      v85 = *(a1 + 160);
                      v86 = *(a1 + 168);
                    }

                    EVP_DigestUpdate(v84, v85, v86);
                    EVP_DigestFinal(v103[0], v81 + v83, 0);
                    EVP_MD_CTX_free(v103[0]);
                    v83 += 32;
                    v82 = *(a1 + 464);
                  }

                  while (v83 < *(v82 + 12));
                }

                (*(v82 + 16))(a1, v81, &d, a1 + 480);
                if (d)
                {
                  memset_s(v81, *(*(a1 + 464) + 12), 0, *(*(a1 + 464) + 12));
                  (*(a1 + 24))(v81, a1);
                }
              }

              v87 = *(a1 + 352);
              v88 = *(v87 + 32);
              if (v88)
              {
                v88(a1, a1 + 368);
                v87 = *(a1 + 352);
              }

              if (*(v87 + 16))
              {
                LODWORD(d) = 0;
                v103[0] = 0;
                v89 = (*(a1 + 8))(*(v87 + 12) + 32, a1);
                if (!v89)
                {
                  goto LABEL_143;
                }

                v90 = v89;
                v91 = *(a1 + 352);
                if (*(v91 + 12))
                {
                  v92 = 0;
                  do
                  {
                    _libssh2_sha256_init(v103);
                    EVP_DigestUpdate(v103[0], *(a2 + 200), *(a2 + 224));
                    EVP_DigestUpdate(v103[0], (a2 + 56), 0x20uLL);
                    v93 = v103[0];
                    if (v92)
                    {
                      v94 = v90;
                      v95 = v92;
                    }

                    else
                    {
                      EVP_DigestUpdate(v103[0], "F", 1uLL);
                      v93 = v103[0];
                      v94 = *(a1 + 160);
                      v95 = *(a1 + 168);
                    }

                    EVP_DigestUpdate(v93, v94, v95);
                    EVP_DigestFinal(v103[0], v90 + v92, 0);
                    EVP_MD_CTX_free(v103[0]);
                    v92 += 32;
                    v91 = *(a1 + 352);
                  }

                  while (v92 < *(v91 + 12));
                }

                (*(v91 + 16))(a1, v90, &d, a1 + 368);
                if (d)
                {
                  memset_s(v90, *(*(a1 + 352) + 12), 0, *(*(a1 + 352) + 12));
                  (*(a1 + 24))(v90, a1);
                }
              }

              v96 = *(a1 + 488);
              if (!v96 || (v97 = *(v96 + 40)) != 0 && (v97(a1, 1, a1 + 496), (v96 = *(a1 + 488)) == 0) || (v98 = *(v96 + 16)) == 0 || !v98(a1, 1, a1 + 496))
              {
                v99 = *(a1 + 376);
                if (v99 && ((v100 = *(v99 + 40)) == 0 || (v100(a1, 0, a1 + 384), (v99 = *(a1 + 376)) != 0)) && (v101 = *(v99 + 16)) != 0)
                {
                  if (v101(a1, 0, a1 + 384))
                  {
                    v4 = 4294967291;
                  }

                  else
                  {
                    v4 = 0;
                  }
                }

                else
                {
                  v4 = 0;
                }

                goto LABEL_130;
              }

              goto LABEL_143;
            }

LABEL_142:
            (*(a1 + 24))(v47, a1);
            goto LABEL_143;
          }

          v19 = "Unable to allocate buffer for SHA digest";
LABEL_43:
          v20 = a1;
          v21 = 4294967290;
          goto LABEL_129;
        }

        v19 = "Timed out waiting for NEWKEYS curve25519";
LABEL_128:
        v20 = a1;
        v21 = v4;
        goto LABEL_129;
      }

      v8 = "Timeout waiting for ECDH_REPLY reply";
      goto LABEL_30;
  }

LABEL_135:
  v75 = *(a2 + 592);
  if (v75)
  {
    memset_s(v75, 0x20uLL, 0, 0x20uLL);
    (*(a1 + 24))(*(a2 + 592), a1);
    *(a2 + 592) = 0;
  }

  v76 = *(a2 + 600);
  if (v76)
  {
    memset_s(v76, 0x20uLL, 0, 0x20uLL);
    (*(a1 + 24))(*(a2 + 600), a1);
    *(a2 + 600) = 0;
  }

  *a2 = 0;
  return v4;
}

uint64_t kex_method_ecdh_key_exchange(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v17 = 0;
  v16 = 0;
  v5 = *a2;
  if (*a2 <= 2)
  {
    if (v5)
    {
      if (v5 != 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a2 + 576) = 0;
      *a2 = 2;
    }

    if (kex_session_ecdh_curve_type(**(a1 + 144), &v16))
    {
      goto LABEL_21;
    }

    key = _libssh2_ecdsa_create_key(a1, (a2 + 568), (a2 + 576), (a2 + 584), v16);
    if (key)
    {
      v8 = key;
      v9 = "Unable to create private key";
      v10 = a1;
LABEL_27:
      v4 = _libssh2_error(v10, v8, v9);
      goto LABEL_28;
    }

    *(a2 + 288) = 30;
    v17 = (a2 + 289);
    _libssh2_store_str(&v17, *(a2 + 576), *(a2 + 584));
    v6 = *(a2 + 584) + 5;
    *(a2 + 552) = v6;
    *a2 = 3;
    goto LABEL_14;
  }

  switch(v5)
  {
    case 5:
      goto LABEL_20;
    case 4:
      goto LABEL_17;
    case 3:
      v6 = *(a2 + 552);
LABEL_14:
      v11 = _libssh2_transport_send(a1, (a2 + 288), v6, 0, 0);
      v4 = v11;
      if (v11 == -37)
      {
        return v4;
      }

      if (v11)
      {
        v9 = "Unable to send ECDH_INIT";
        goto LABEL_26;
      }

      *a2 = 4;
LABEL_17:
      v12 = _libssh2_packet_require(a1, 31, (a2 + 544), (a2 + 560), 0, 0, 0, a2 + 8);
      v4 = v12;
      if (v12 == -37)
      {
        return v4;
      }

      if (!v12)
      {
        *a2 = 5;
LABEL_20:
        if (!kex_session_ecdh_curve_type(**(a1 + 144), &v16))
        {
          v4 = ecdh_sha2_nistp(a1, v16, *(a2 + 544), *(a2 + 560), *(a2 + 576), *(a2 + 584), *(a2 + 568), a2 + 24);
          if (v4 == -37)
          {
            return v4;
          }

          (*(a1 + 24))(*(a2 + 544), a1);
          break;
        }

LABEL_21:
        v9 = "Unknown KEX nistp curve type";
        v10 = a1;
        v8 = 0xFFFFFFFFLL;
        goto LABEL_27;
      }

      v9 = "Timeout waiting for ECDH_REPLY reply";
LABEL_26:
      v10 = a1;
      v8 = v4;
      goto LABEL_27;
  }

LABEL_28:
  v13 = *(a2 + 576);
  if (v13)
  {
    (*(a1 + 24))(v13, a1);
    *(a2 + 576) = 0;
  }

  v14 = *(a2 + 568);
  if (v14)
  {
    EC_KEY_free(v14);
    *(a2 + 568) = 0;
  }

  *a2 = 0;
  return v4;
}

uint64_t kex_session_ecdh_curve_type(const char *a1, int *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = strcmp(a1, "ecdh-sha2-nistp256");
  if (!result)
  {
    v8 = 415;
    goto LABEL_15;
  }

  result = strcmp(a1, "ecdh-sha2-nistp384");
  if (!result)
  {
    v8 = 715;
LABEL_15:
    v7 = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_16;
  }

  v5 = strcmp(a1, "ecdh-sha2-nistp521");
  v6 = v5 == 0;
  v7 = v5 == 0;
  if (v5)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (v6)
  {
    v8 = 716;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
LABEL_16:
    if (v7)
    {
      *a2 = v8;
    }
  }

  return result;
}

uint64_t ecdh_sha2_nistp(uint64_t a1, int a2, uint64_t a3, EVP_MD_CTX *a4, const void *a5, size_t a6, const EC_KEY *a7, uint64_t a8)
{
  if (a4 > 4)
  {
    v12 = 0;
    v13 = *a8;
    if (*a8 > 2)
    {
      if (v13 != 3)
      {
        if (v13 != 5)
        {
          goto LABEL_75;
        }

        goto LABEL_64;
      }

LABEL_61:
      v53 = _libssh2_transport_send(a1, (a8 + 96), 1uLL, 0, 0);
      v12 = v53;
      if (v53 == -37)
      {
        return v12;
      }

      if (v53)
      {
        v19 = "Unable to send NEWKEYS message ECDH";
        goto LABEL_73;
      }

      *a8 = 5;
LABEL_64:
      v54 = _libssh2_packet_require(a1, 21, (a8 + 24), (a8 + 120), 0, 0, 0, a8 + 224);
      v12 = v54;
      if (v54 != -37)
      {
        if (!v54)
        {
          *(a1 + 128) |= 2u;
          (*(a1 + 24))(*(a8 + 24), a1);
          if (!*(a1 + 160))
          {
            switch(a2)
            {
              case 415:
                v55 = 32;
                break;
              case 716:
                v55 = 64;
                break;
              case 715:
                v55 = 48;
                break;
              default:
                v19 = "Unknown SHA digest for EC curve";
                goto LABEL_107;
            }

            v57 = (*(a1 + 8))(v55, a1);
            *(a1 + 160) = v57;
            if (!v57)
            {
              v19 = "Unable to allocate buffer for SHA digest";
              goto LABEL_15;
            }

            memcpy(v57, (a8 + 32), v55);
            *(a1 + 168) = v55;
          }

          v58 = *(a1 + 448);
          v59 = *(v58 + 56);
          if (v59)
          {
            v59(a1, a1 + 456);
            v58 = *(a1 + 448);
          }

          if (!*(v58 + 40))
          {
            goto LABEL_148;
          }

          LODWORD(v151) = 0;
          LODWORD(v150) = 0;
          switch(a2)
          {
            case 415:
              v149[0] = 0;
              v60 = (*(a1 + 8))(*(v58 + 20) + 32, a1);
              if (v60 && *(*(a1 + 448) + 20))
              {
                v61 = 0;
                do
                {
                  _libssh2_sha256_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                  v62 = v149[0];
                  if (v61)
                  {
                    v63 = v60;
                    v64 = v61;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "A", 1uLL);
                    v62 = v149[0];
                    v63 = *(a1 + 160);
                    v64 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v62, v63, v64);
                  EVP_DigestFinal(v149[0], v60 + v61, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v61 += 32;
                }

                while (v61 < *(*(a1 + 448) + 20));
              }

              break;
            case 716:
              v149[0] = 0;
              v60 = (*(a1 + 8))(*(v58 + 20) + 64, a1);
              if (v60 && *(*(a1 + 448) + 20))
              {
                v69 = 0;
                do
                {
                  _libssh2_sha512_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                  v70 = v149[0];
                  if (v69)
                  {
                    v71 = v60;
                    v72 = v69;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "A", 1uLL);
                    v70 = v149[0];
                    v71 = *(a1 + 160);
                    v72 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v70, v71, v72);
                  EVP_DigestFinal(v149[0], v60 + v69, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v69 += 64;
                }

                while (v69 < *(*(a1 + 448) + 20));
              }

              break;
            case 715:
              v149[0] = 0;
              v60 = (*(a1 + 8))(*(v58 + 20) + 48, a1);
              if (v60 && *(*(a1 + 448) + 20))
              {
                v65 = 0;
                do
                {
                  _libssh2_sha384_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                  v66 = v149[0];
                  if (v65)
                  {
                    v67 = v60;
                    v68 = v65;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "A", 1uLL);
                    v66 = v149[0];
                    v67 = *(a1 + 160);
                    v68 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v66, v67, v68);
                  EVP_DigestFinal(v149[0], v60 + v65, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v65 += 48;
                }

                while (v65 < *(*(a1 + 448) + 20));
              }

              break;
            default:
              goto LABEL_125;
          }

          if (v60)
          {
            if (a2 == 415)
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 448) + 24) + 32, a1);
              if (v73 && *(*(a1 + 448) + 24))
              {
                v74 = 0;
                do
                {
                  _libssh2_sha256_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                  v75 = v149[0];
                  if (v74)
                  {
                    v76 = v73;
                    v77 = v74;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "C", 1uLL);
                    v75 = v149[0];
                    v76 = *(a1 + 160);
                    v77 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v75, v76, v77);
                  EVP_DigestFinal(v149[0], v73 + v74, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v74 += 32;
                }

                while (v74 < *(*(a1 + 448) + 24));
              }
            }

            else if (a2 == 716)
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 448) + 24) + 64, a1);
              if (v73 && *(*(a1 + 448) + 24))
              {
                v82 = 0;
                do
                {
                  _libssh2_sha512_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                  v83 = v149[0];
                  if (v82)
                  {
                    v84 = v73;
                    v85 = v82;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "C", 1uLL);
                    v83 = v149[0];
                    v84 = *(a1 + 160);
                    v85 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v83, v84, v85);
                  EVP_DigestFinal(v149[0], v73 + v82, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v82 += 64;
                }

                while (v82 < *(*(a1 + 448) + 24));
              }
            }

            else
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 448) + 24) + 48, a1);
              if (v73 && *(*(a1 + 448) + 24))
              {
                v78 = 0;
                do
                {
                  _libssh2_sha384_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                  v79 = v149[0];
                  if (v78)
                  {
                    v80 = v73;
                    v81 = v78;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "C", 1uLL);
                    v79 = v149[0];
                    v80 = *(a1 + 160);
                    v81 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v79, v80, v81);
                  EVP_DigestFinal(v149[0], v73 + v78, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v78 += 48;
                }

                while (v78 < *(*(a1 + 448) + 24));
              }
            }

            if (!v73)
            {
              goto LABEL_206;
            }

            if ((*(*(a1 + 448) + 40))(a1))
            {
LABEL_205:
              (*(a1 + 24))(v60, a1);
LABEL_207:
              (*(a1 + 24))(v73, a1);
              goto LABEL_208;
            }

            if (v151)
            {
              memset_s(v60, *(*(a1 + 448) + 20), 0, *(*(a1 + 448) + 20));
              (*(a1 + 24))(v60, a1);
            }

            if (v150)
            {
              memset_s(v73, *(*(a1 + 448) + 24), 0, *(*(a1 + 448) + 24));
              (*(a1 + 24))(v73, a1);
            }

LABEL_148:
            v86 = *(a1 + 336);
            v87 = *(v86 + 56);
            if (v87)
            {
              v87(a1, a1 + 344);
              v86 = *(a1 + 336);
            }

            if (!*(v86 + 40))
            {
LABEL_213:
              v112 = *(a1 + 464);
              v113 = *(v112 + 32);
              if (v113)
              {
                v113(a1, a1 + 480);
                v112 = *(a1 + 464);
              }

              if (*(v112 + 16))
              {
                LODWORD(v151) = 0;
                switch(a2)
                {
                  case 716:
                    v149[0] = 0;
                    v114 = (*(a1 + 8))(*(v112 + 12) + 64, a1);
                    if (v114 && *(*(a1 + 464) + 12))
                    {
                      v123 = 0;
                      do
                      {
                        _libssh2_sha512_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                        v124 = v149[0];
                        if (v123)
                        {
                          v125 = v114;
                          v126 = v123;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "E", 1uLL);
                          v124 = v149[0];
                          v125 = *(a1 + 160);
                          v126 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v124, v125, v126);
                        EVP_DigestFinal(v149[0], v114 + v123, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v123 += 64;
                      }

                      while (v123 < *(*(a1 + 464) + 12));
                    }

                    break;
                  case 715:
                    v149[0] = 0;
                    v114 = (*(a1 + 8))(*(v112 + 12) + 48, a1);
                    if (v114 && *(*(a1 + 464) + 12))
                    {
                      v119 = 0;
                      do
                      {
                        _libssh2_sha384_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                        v120 = v149[0];
                        if (v119)
                        {
                          v121 = v114;
                          v122 = v119;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "E", 1uLL);
                          v120 = v149[0];
                          v121 = *(a1 + 160);
                          v122 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v120, v121, v122);
                        EVP_DigestFinal(v149[0], v114 + v119, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v119 += 48;
                      }

                      while (v119 < *(*(a1 + 464) + 12));
                    }

                    break;
                  case 415:
                    v149[0] = 0;
                    v114 = (*(a1 + 8))(*(v112 + 12) + 32, a1);
                    if (v114 && *(*(a1 + 464) + 12))
                    {
                      v115 = 0;
                      do
                      {
                        _libssh2_sha256_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                        v116 = v149[0];
                        if (v115)
                        {
                          v117 = v114;
                          v118 = v115;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "E", 1uLL);
                          v116 = v149[0];
                          v117 = *(a1 + 160);
                          v118 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v116, v117, v118);
                        EVP_DigestFinal(v149[0], v114 + v115, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v115 += 32;
                      }

                      while (v115 < *(*(a1 + 464) + 12));
                    }

                    break;
                  default:
                    goto LABEL_208;
                }

                if (!v114)
                {
                  goto LABEL_208;
                }

                (*(*(a1 + 464) + 16))(a1, v114, &v151, a1 + 480);
                if (v151)
                {
                  memset_s(v114, *(*(a1 + 464) + 12), 0, *(*(a1 + 464) + 12));
                  (*(a1 + 24))(v114, a1);
                }
              }

              v127 = *(a1 + 352);
              v128 = *(v127 + 32);
              if (v128)
              {
                v128(a1, a1 + 368);
                v127 = *(a1 + 352);
              }

              if (*(v127 + 16))
              {
                LODWORD(v151) = 0;
                switch(a2)
                {
                  case 716:
                    v149[0] = 0;
                    v129 = (*(a1 + 8))(*(v127 + 12) + 64, a1);
                    if (v129 && *(*(a1 + 352) + 12))
                    {
                      v138 = 0;
                      do
                      {
                        _libssh2_sha512_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                        v139 = v149[0];
                        if (v138)
                        {
                          v140 = v129;
                          v141 = v138;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "F", 1uLL);
                          v139 = v149[0];
                          v140 = *(a1 + 160);
                          v141 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v139, v140, v141);
                        EVP_DigestFinal(v149[0], v129 + v138, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v138 += 64;
                      }

                      while (v138 < *(*(a1 + 352) + 12));
                    }

                    break;
                  case 715:
                    v149[0] = 0;
                    v129 = (*(a1 + 8))(*(v127 + 12) + 48, a1);
                    if (v129 && *(*(a1 + 352) + 12))
                    {
                      v134 = 0;
                      do
                      {
                        _libssh2_sha384_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                        v135 = v149[0];
                        if (v134)
                        {
                          v136 = v129;
                          v137 = v134;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "F", 1uLL);
                          v135 = v149[0];
                          v136 = *(a1 + 160);
                          v137 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v135, v136, v137);
                        EVP_DigestFinal(v149[0], v129 + v134, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v134 += 48;
                      }

                      while (v134 < *(*(a1 + 352) + 12));
                    }

                    break;
                  case 415:
                    v149[0] = 0;
                    v129 = (*(a1 + 8))(*(v127 + 12) + 32, a1);
                    if (v129 && *(*(a1 + 352) + 12))
                    {
                      v130 = 0;
                      do
                      {
                        _libssh2_sha256_init(v149);
                        EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                        EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                        v131 = v149[0];
                        if (v130)
                        {
                          v132 = v129;
                          v133 = v130;
                        }

                        else
                        {
                          EVP_DigestUpdate(v149[0], "F", 1uLL);
                          v131 = v149[0];
                          v132 = *(a1 + 160);
                          v133 = *(a1 + 168);
                        }

                        EVP_DigestUpdate(v131, v132, v133);
                        EVP_DigestFinal(v149[0], v129 + v130, 0);
                        EVP_MD_CTX_free(v149[0]);
                        v130 += 32;
                      }

                      while (v130 < *(*(a1 + 352) + 12));
                    }

                    break;
                  default:
                    goto LABEL_208;
                }

                if (!v129)
                {
                  goto LABEL_208;
                }

                (*(*(a1 + 352) + 16))(a1, v129, &v151, a1 + 368);
                if (v151)
                {
                  memset_s(v129, *(*(a1 + 352) + 12), 0, *(*(a1 + 352) + 12));
                  (*(a1 + 24))(v129, a1);
                }
              }

              v142 = *(a1 + 488);
              if (!v142 || (v143 = *(v142 + 40)) != 0 && (v143(a1, 1, a1 + 496), (v142 = *(a1 + 488)) == 0) || (v144 = *(v142 + 16)) == 0 || !v144(a1, 1, a1 + 496))
              {
                v145 = *(a1 + 376);
                if (v145 && ((v146 = *(v145 + 40)) == 0 || (v146(a1, 0, a1 + 384), (v145 = *(a1 + 376)) != 0)) && (v147 = *(v145 + 16)) != 0)
                {
                  if (v147(a1, 0, a1 + 384))
                  {
                    v12 = 4294967291;
                  }

                  else
                  {
                    v12 = 0;
                  }
                }

                else
                {
                  v12 = 0;
                }

LABEL_75:
                BN_clear_free(*(a8 + 160));
                *(a8 + 160) = 0;
                v56 = *(a8 + 176);
                if (v56)
                {
                  (*(a1 + 24))(v56, a1);
                  *(a8 + 176) = 0;
                }

                *a8 = 0;
                return v12;
              }

LABEL_208:
              v12 = 4294967291;
              goto LABEL_75;
            }

            LODWORD(v151) = 0;
            LODWORD(v150) = 0;
            switch(a2)
            {
              case 415:
                v149[0] = 0;
                v60 = (*(a1 + 8))(*(v86 + 20) + 32, a1);
                if (v60 && *(*(a1 + 336) + 20))
                {
                  v88 = 0;
                  do
                  {
                    _libssh2_sha256_init(v149);
                    EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                    EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                    v89 = v149[0];
                    if (v88)
                    {
                      v90 = v60;
                      v91 = v88;
                    }

                    else
                    {
                      EVP_DigestUpdate(v149[0], "B", 1uLL);
                      v89 = v149[0];
                      v90 = *(a1 + 160);
                      v91 = *(a1 + 168);
                    }

                    EVP_DigestUpdate(v89, v90, v91);
                    EVP_DigestFinal(v149[0], v60 + v88, 0);
                    EVP_MD_CTX_free(v149[0]);
                    v88 += 32;
                  }

                  while (v88 < *(*(a1 + 336) + 20));
                }

                break;
              case 716:
                v149[0] = 0;
                v60 = (*(a1 + 8))(*(v86 + 20) + 64, a1);
                if (v60 && *(*(a1 + 336) + 20))
                {
                  v96 = 0;
                  do
                  {
                    _libssh2_sha512_init(v149);
                    EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                    EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                    v97 = v149[0];
                    if (v96)
                    {
                      v98 = v60;
                      v99 = v96;
                    }

                    else
                    {
                      EVP_DigestUpdate(v149[0], "B", 1uLL);
                      v97 = v149[0];
                      v98 = *(a1 + 160);
                      v99 = *(a1 + 168);
                    }

                    EVP_DigestUpdate(v97, v98, v99);
                    EVP_DigestFinal(v149[0], v60 + v96, 0);
                    EVP_MD_CTX_free(v149[0]);
                    v96 += 64;
                  }

                  while (v96 < *(*(a1 + 336) + 20));
                }

                break;
              case 715:
                v149[0] = 0;
                v60 = (*(a1 + 8))(*(v86 + 20) + 48, a1);
                if (v60 && *(*(a1 + 336) + 20))
                {
                  v92 = 0;
                  do
                  {
                    _libssh2_sha384_init(v149);
                    EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                    EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                    v93 = v149[0];
                    if (v92)
                    {
                      v94 = v60;
                      v95 = v92;
                    }

                    else
                    {
                      EVP_DigestUpdate(v149[0], "B", 1uLL);
                      v93 = v149[0];
                      v94 = *(a1 + 160);
                      v95 = *(a1 + 168);
                    }

                    EVP_DigestUpdate(v93, v94, v95);
                    EVP_DigestFinal(v149[0], v60 + v92, 0);
                    EVP_MD_CTX_free(v149[0]);
                    v92 += 48;
                  }

                  while (v92 < *(*(a1 + 336) + 20));
                }

                break;
              default:
                goto LABEL_208;
            }

            if (!v60)
            {
              goto LABEL_208;
            }

            if (a2 == 415)
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 336) + 24) + 32, a1);
              if (v73 && *(*(a1 + 336) + 24))
              {
                v100 = 0;
                do
                {
                  _libssh2_sha256_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x20uLL);
                  v101 = v149[0];
                  if (v100)
                  {
                    v102 = v73;
                    v103 = v100;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "D", 1uLL);
                    v101 = v149[0];
                    v102 = *(a1 + 160);
                    v103 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v101, v102, v103);
                  EVP_DigestFinal(v149[0], v73 + v100, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v100 += 32;
                }

                while (v100 < *(*(a1 + 336) + 24));
              }
            }

            else if (a2 == 716)
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 336) + 24) + 64, a1);
              if (v73 && *(*(a1 + 336) + 24))
              {
                v108 = 0;
                do
                {
                  _libssh2_sha512_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x40uLL);
                  v109 = v149[0];
                  if (v108)
                  {
                    v110 = v73;
                    v111 = v108;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "D", 1uLL);
                    v109 = v149[0];
                    v110 = *(a1 + 160);
                    v111 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v109, v110, v111);
                  EVP_DigestFinal(v149[0], v73 + v108, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v108 += 64;
                }

                while (v108 < *(*(a1 + 336) + 24));
              }
            }

            else
            {
              v149[0] = 0;
              v73 = (*(a1 + 8))(*(*(a1 + 336) + 24) + 48, a1);
              if (v73 && *(*(a1 + 336) + 24))
              {
                v104 = 0;
                do
                {
                  _libssh2_sha384_init(v149);
                  EVP_DigestUpdate(v149[0], *(a8 + 176), *(a8 + 200));
                  EVP_DigestUpdate(v149[0], (a8 + 32), 0x30uLL);
                  v105 = v149[0];
                  if (v104)
                  {
                    v106 = v73;
                    v107 = v104;
                  }

                  else
                  {
                    EVP_DigestUpdate(v149[0], "D", 1uLL);
                    v105 = v149[0];
                    v106 = *(a1 + 160);
                    v107 = *(a1 + 168);
                  }

                  EVP_DigestUpdate(v105, v106, v107);
                  EVP_DigestFinal(v149[0], v73 + v104, 0);
                  EVP_MD_CTX_free(v149[0]);
                  v104 += 48;
                }

                while (v104 < *(*(a1 + 336) + 24));
              }
            }

            if (v73)
            {
              if ((*(*(a1 + 336) + 40))(a1))
              {
                goto LABEL_205;
              }

              if (v151)
              {
                memset_s(v60, *(*(a1 + 336) + 20), 0, *(*(a1 + 336) + 20));
                (*(a1 + 24))(v60, a1);
              }

              if (v150)
              {
                memset_s(v73, *(*(a1 + 336) + 24), 0, *(*(a1 + 336) + 24));
                (*(a1 + 24))(v73, a1);
              }

              goto LABEL_213;
            }

LABEL_206:
            v73 = v60;
            goto LABEL_207;
          }

LABEL_125:
          v12 = 0xFFFFFFFFLL;
          goto LABEL_75;
        }

        v19 = "Timed out waiting for NEWKEYS ECDH";
LABEL_73:
        v20 = a1;
        v21 = v12;
        goto LABEL_74;
      }

      return v12;
    }

    if (v13)
    {
      if (v13 != 2)
      {
        goto LABEL_75;
      }
    }

    else
    {
      *(a8 + 160) = BN_new();
      *a8 = 2;
    }

    v150 = 0;
    v151 = 0;
    v149[0] = a3;
    v149[1] = (a3 + 1);
    v149[2] = a4;
    if (_libssh2_copy_string(a1, v149, (a1 + 200), &v150))
    {
      v19 = "Unable to allocate memory for a copy of the host ECDH key";
LABEL_15:
      v20 = a1;
      v21 = 4294967290;
LABEL_74:
      v12 = _libssh2_error(v20, v21, v19);
      goto LABEL_75;
    }

    *(a1 + 208) = v150;
    ctx = 0;
    if (_libssh2_md5_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 212), 0);
      EVP_MD_CTX_free(ctx);
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 228) = v22;
    ctx = 0;
    if (_libssh2_sha1_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 232), 0);
      EVP_MD_CTX_free(ctx);
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    *(a1 + 252) = v23;
    ctx = 0;
    if (_libssh2_sha256_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 256), 0);
      EVP_MD_CTX_free(ctx);
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 288) = v24;
    if ((*(*(a1 + 184) + 16))(a1, *(a1 + 200), *(a1 + 208), a1 + 192))
    {
      v19 = "Unable to initialize hostkey importer ECDH";
LABEL_27:
      v20 = a1;
      v21 = 4294967286;
      goto LABEL_74;
    }

    if (_libssh2_get_string(v149, &v151, &v150))
    {
      v19 = "Unexpected key length ECDH";
      v20 = a1;
      v21 = 4294967282;
      goto LABEL_74;
    }

    if (_libssh2_get_string(v149, (a8 + 184), (a8 + 208)))
    {
      v19 = "Unexpected ECDH server sig length";
      goto LABEL_27;
    }

    if (_libssh2_ecdh_gen_k((a8 + 160), a7, v151, v150))
    {
      v19 = "Unable to create ECDH shared secret";
LABEL_107:
      v20 = a1;
      v21 = 4294967291;
      goto LABEL_74;
    }

    v25 = BN_num_bits(*(a8 + 160));
    v26 = v25 + 7;
    if (v25 < -7)
    {
      v26 = v25 + 14;
    }

    *(a8 + 200) = (v26 >> 3) + 5;
    v27 = BN_num_bits(*(a8 + 160));
    v28 = *(a8 + 200);
    if ((v27 & 7) != 0)
    {
      *(a8 + 200) = --v28;
    }

    v29 = (*(a1 + 8))(v28, a1);
    *(a8 + 176) = v29;
    if (!v29)
    {
      v19 = "Unable to allocate buffer for ECDH K";
      goto LABEL_15;
    }

    _libssh2_htonu32(v29, *(a8 + 200) - 4);
    if ((BN_num_bits(*(a8 + 160)) & 7) != 0)
    {
      v30 = 4;
    }

    else
    {
      *(*(a8 + 176) + 4) = 0;
      v30 = 5;
    }

    BN_bn2bin(*(a8 + 160), (*(a8 + 176) + v30));
    switch(a2)
    {
      case 716:
        ctx = 0;
        *(a8 + 216) = &ctx;
        _libssh2_sha512_init(&ctx);
        v41 = *(a1 + 424);
        if (v41)
        {
          v42 = strlen(v41);
          _libssh2_htonu32((a8 + 32), v42 - 2);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v43 = strlen(*(a1 + 424)) - 2;
          v44 = ctx;
          v45 = *(a1 + 424);
        }

        else
        {
          _libssh2_htonu32((a8 + 32), 0x16u);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v44 = ctx;
          v45 = "SSH-2.0-libssh2_1.11.0";
          v43 = 22;
        }

        EVP_DigestUpdate(v44, v45, v43);
        v49 = strlen(*(a1 + 312));
        _libssh2_htonu32((a8 + 32), v49);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        v50 = strlen(*(a1 + 312));
        EVP_DigestUpdate(ctx, *(a1 + 312), v50);
        _libssh2_htonu32((a8 + 32), *(a1 + 440));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 432), *(a1 + 440));
        _libssh2_htonu32((a8 + 32), *(a1 + 328));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 320), *(a1 + 328));
        _libssh2_htonu32((a8 + 32), *(a1 + 208));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
        _libssh2_htonu32((a8 + 32), a6);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, a5, a6);
        _libssh2_htonu32((a8 + 32), v150);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, v151, v150);
        EVP_DigestUpdate(ctx, *(a8 + 176), *(a8 + 200));
        EVP_DigestFinal(ctx, (a8 + 32), 0);
        EVP_MD_CTX_free(ctx);
        v48 = (*(*(a1 + 184) + 40))(a1, *(a8 + 184), *(a8 + 208), a8 + 32, 64, a1 + 192);
        break;
      case 715:
        ctx = 0;
        *(a8 + 216) = &ctx;
        _libssh2_sha384_init(&ctx);
        v36 = *(a1 + 424);
        if (v36)
        {
          v37 = strlen(v36);
          _libssh2_htonu32((a8 + 32), v37 - 2);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v38 = strlen(*(a1 + 424)) - 2;
          v39 = ctx;
          v40 = *(a1 + 424);
        }

        else
        {
          _libssh2_htonu32((a8 + 32), 0x16u);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v39 = ctx;
          v40 = "SSH-2.0-libssh2_1.11.0";
          v38 = 22;
        }

        EVP_DigestUpdate(v39, v40, v38);
        v46 = strlen(*(a1 + 312));
        _libssh2_htonu32((a8 + 32), v46);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        v47 = strlen(*(a1 + 312));
        EVP_DigestUpdate(ctx, *(a1 + 312), v47);
        _libssh2_htonu32((a8 + 32), *(a1 + 440));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 432), *(a1 + 440));
        _libssh2_htonu32((a8 + 32), *(a1 + 328));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 320), *(a1 + 328));
        _libssh2_htonu32((a8 + 32), *(a1 + 208));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
        _libssh2_htonu32((a8 + 32), a6);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, a5, a6);
        _libssh2_htonu32((a8 + 32), v150);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, v151, v150);
        EVP_DigestUpdate(ctx, *(a8 + 176), *(a8 + 200));
        EVP_DigestFinal(ctx, (a8 + 32), 0);
        EVP_MD_CTX_free(ctx);
        v48 = (*(*(a1 + 184) + 40))(a1, *(a8 + 184), *(a8 + 208), a8 + 32, 48, a1 + 192);
        break;
      case 415:
        ctx = 0;
        *(a8 + 216) = &ctx;
        _libssh2_sha256_init(&ctx);
        v31 = *(a1 + 424);
        if (v31)
        {
          v32 = strlen(v31);
          _libssh2_htonu32((a8 + 32), v32 - 2);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v33 = strlen(*(a1 + 424)) - 2;
          v34 = ctx;
          v35 = *(a1 + 424);
        }

        else
        {
          _libssh2_htonu32((a8 + 32), 0x16u);
          EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
          v34 = ctx;
          v35 = "SSH-2.0-libssh2_1.11.0";
          v33 = 22;
        }

        EVP_DigestUpdate(v34, v35, v33);
        v51 = strlen(*(a1 + 312));
        _libssh2_htonu32((a8 + 32), v51);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        v52 = strlen(*(a1 + 312));
        EVP_DigestUpdate(ctx, *(a1 + 312), v52);
        _libssh2_htonu32((a8 + 32), *(a1 + 440));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 432), *(a1 + 440));
        _libssh2_htonu32((a8 + 32), *(a1 + 328));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 320), *(a1 + 328));
        _libssh2_htonu32((a8 + 32), *(a1 + 208));
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
        _libssh2_htonu32((a8 + 32), a6);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, a5, a6);
        _libssh2_htonu32((a8 + 32), v150);
        EVP_DigestUpdate(ctx, (a8 + 32), 4uLL);
        EVP_DigestUpdate(ctx, v151, v150);
        EVP_DigestUpdate(ctx, *(a8 + 176), *(a8 + 200));
        EVP_DigestFinal(ctx, (a8 + 32), 0);
        EVP_MD_CTX_free(ctx);
        v48 = (*(*(a1 + 184) + 40))(a1, *(a8 + 184), *(a8 + 208), a8 + 32, 32, a1 + 192);
        break;
      default:
LABEL_60:
        *(a8 + 96) = 21;
        *a8 = 3;
        goto LABEL_61;
    }

    if (v48)
    {
      v19 = "Unable to verify hostkey signature ECDH";
      v20 = a1;
      v21 = 4294967285;
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  return _libssh2_error(a1, 4294967286, "Host key data is too short");
}

uint64_t kex_method_diffie_hellman_group_exchange_sha256_key_exchange(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a2;
  if (*a2 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 2)
      {
LABEL_26:
        *a2 = 0;
        BN_clear_free(*(a2 + 280));
        *(a2 + 280) = 0;
        BN_clear_free(*(a2 + 272));
        *(a2 + 272) = 0;
        return v4;
      }

      v6 = *(a2 + 552);
    }

    else
    {
      *(a2 + 272) = BN_new();
      *(a2 + 280) = BN_new();
      *(a2 + 288) = 34;
      _libssh2_htonu32((a2 + 289), 0x800u);
      _libssh2_htonu32((a2 + 293), 0x1000u);
      _libssh2_htonu32((a2 + 297), 0x2000u);
      v6 = 13;
      *(a2 + 552) = 13;
      *a2 = 2;
    }

    v7 = _libssh2_transport_send(a1, (a2 + 288), v6, 0, 0);
    v4 = v7;
    if (v7 == -37)
    {
      return v4;
    }

    if (v7)
    {
      v9 = "Unable to send Group Exchange Request SHA256";
      goto LABEL_21;
    }

    *a2 = 3;
  }

  v8 = _libssh2_packet_require(a1, 31, (a2 + 544), (a2 + 560), 0, 0, 0, a2 + 8);
  v4 = v8;
  if (v8 != -37)
  {
    if (!v8)
    {
      *a2 = 4;
LABEL_15:
      v18 = 0;
      v19 = 0;
      v17 = 0;
      *len = 0;
      v14 = 0;
      if (*(a2 + 560) > 8uLL)
      {
        v10 = *(a2 + 544);
        v15[2] = *(a2 + 560);
        v15[0] = v10;
        v15[1] = v10 + 1;
        if (_libssh2_get_bignum_bytes(v15, &v19, &v17))
        {
          v9 = "Unexpected value DH-SHA256 p";
        }

        else
        {
          if (!_libssh2_get_bignum_bytes(v15, &v18, len))
          {
            BN_bin2bn(v19, v17, *(a2 + 272));
            BN_bin2bn(v18, len[0], *(a2 + 280));
            v4 = diffie_hellman_sha_algo(a1, *(a2 + 280), *(a2 + 272), v17, 256, &v14, 32, 33, (*(a2 + 544) + 1), *(a2 + 560) - 1, a2 + 24);
            if (v4 == -37)
            {
              return v4;
            }

            (*(a1 + 24))(*(a2 + 544), a1);
            goto LABEL_26;
          }

          v9 = "Unexpected value DH-SHA256 g";
        }
      }

      else
      {
        v9 = "Unexpected key length DH-SHA256";
      }

      v11 = a1;
      v12 = 4294967282;
      goto LABEL_25;
    }

    v9 = "Timeout waiting for GEX_GROUP reply SHA256";
LABEL_21:
    v11 = a1;
    v12 = v4;
LABEL_25:
    v4 = _libssh2_error(v11, v12, v9);
    goto LABEL_26;
  }

  return v4;
}

uint64_t diffie_hellman_sha_algo(uint64_t a1, const BIGNUM *a2, const BIGNUM *a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8, void *a9, size_t cnt, uint64_t a11)
{
  *v81 = a6;
  if (a5 > 383)
  {
    if (a5 == 512)
    {
      v18 = 64;
    }

    else
    {
      if (a5 != 384)
      {
        goto LABEL_8;
      }

      v18 = 48;
    }
  }

  else
  {
    if (a5 != 1)
    {
      if (a5 == 256)
      {
        v18 = 32;
        goto LABEL_12;
      }

LABEL_8:
      v19 = "sha algo value is unimplemented";
LABEL_9:
      v20 = a1;
      v21 = 4294967282;
LABEL_121:
      v22 = _libssh2_error(v20, v21, v19);
      goto LABEL_122;
    }

    v18 = 20;
  }

LABEL_12:
  v22 = 0;
  v23 = *a11;
  if (*a11 <= 3)
  {
    if (v23)
    {
      if (v23 != 2)
      {
        if (v23 != 3)
        {
          goto LABEL_122;
        }

LABEL_38:
        if (*(a1 + 152))
        {
          v32 = _libssh2_packet_burn(a1, (a11 + 240));
          v22 = v32;
          if (v32 == -37)
          {
            return v22;
          }

          if (v32 < 1)
          {
            goto LABEL_122;
          }

          *(a1 + 152) = 0;
        }

        *a11 = 4;
        goto LABEL_43;
      }
    }

    else
    {
      *(a11 + 8) = 0;
      v24 = a11 + 8;
      *(a11 + 176) = 0;
      *(a11 + 16) = 0;
      *(a11 + 128) = BN_CTX_new();
      _libssh2_dh_init((a11 + 136));
      *(a11 + 144) = BN_new();
      *(a11 + 152) = BN_new();
      *(a11 + 160) = BN_new();
      *(a11 + 224) = 0;
      *(a11 + 232) = 0;
      if (BN_num_bits(a3) > 0x4000)
      {
        v19 = "dh modulus value is too large";
        v20 = a1;
        v21 = 4294967262;
        goto LABEL_121;
      }

      if (_libssh2_dh_key_pair((a11 + 136), *(a11 + 144), a2, a3, a4, *(a11 + 128)))
      {
        v19 = "dh key pair generation failed";
        v20 = a1;
        v21 = 4294967291;
        goto LABEL_121;
      }

      v25 = BN_num_bits(*(a11 + 144));
      v26 = v25 + 7;
      if (v25 < -7)
      {
        v26 = v25 + 14;
      }

      *(a11 + 104) = (v26 >> 3) + 6;
      v27 = BN_num_bits(*(a11 + 144));
      v28 = *(a11 + 104);
      if ((v27 & 7) != 0)
      {
        *(a11 + 104) = --v28;
      }

      v29 = (*(a1 + 8))(v28, a1);
      *v24 = v29;
      if (!v29)
      {
        v19 = "Out of memory error";
LABEL_120:
        v20 = a1;
        v21 = 4294967290;
        goto LABEL_121;
      }

      *v29 = a7;
      _libssh2_htonu32((*(a11 + 8) + 1), *(a11 + 104) - 5);
      if ((BN_num_bits(*(a11 + 144)) & 7) != 0)
      {
        v30 = 5;
      }

      else
      {
        *(*v24 + 5) = 0;
        v30 = 6;
      }

      BN_bn2bin(*(a11 + 144), (*(a11 + 8) + v30));
      *a11 = 2;
    }

    v31 = _libssh2_transport_send(a1, *(a11 + 8), *(a11 + 104), 0, 0);
    v22 = v31;
    if (v31 == -37)
    {
      return v22;
    }

    if (v31)
    {
      v19 = "Unable to send KEX init message";
LABEL_114:
      v20 = a1;
      v21 = v22;
      goto LABEL_121;
    }

    *a11 = 3;
    goto LABEL_38;
  }

  if (v23 == 4)
  {
LABEL_43:
    v79 = 0;
    v33 = _libssh2_packet_require(a1, a8, (a11 + 16), (a11 + 112), 0, 0, 0, a11 + 224);
    if (v33)
    {
      if (v33 == -37)
      {
        return 4294967259;
      }

      v19 = "Timed out waiting for KEX reply";
      v20 = a1;
      v21 = 4294967287;
      goto LABEL_121;
    }

    if (*(a11 + 112) <= 4uLL)
    {
      v19 = "Unexpected packet length DH-SHA";
      goto LABEL_9;
    }

    v34 = *(a11 + 16);
    v80[2] = *(a11 + 112);
    v80[0] = v34;
    v80[1] = v34 + 1;
    v35 = *(a1 + 200);
    if (v35)
    {
      (*(a1 + 24))(v35, a1);
    }

    if (_libssh2_copy_string(a1, v80, (a1 + 200), &v79))
    {
      v19 = "Could not copy host key";
      goto LABEL_120;
    }

    *(a1 + 208) = v79;
    ctx = 0;
    if (_libssh2_md5_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 212), 0);
      EVP_MD_CTX_free(ctx);
      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    *(a1 + 228) = v36;
    ctx = 0;
    if (_libssh2_sha1_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 232), 0);
      EVP_MD_CTX_free(ctx);
      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    *(a1 + 252) = v37;
    ctx = 0;
    if (_libssh2_sha256_init(&ctx))
    {
      EVP_DigestUpdate(ctx, *(a1 + 200), *(a1 + 208));
      EVP_DigestFinal(ctx, (a1 + 256), 0);
      EVP_MD_CTX_free(ctx);
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    *(a1 + 288) = v38;
    if ((*(*(a1 + 184) + 16))(a1, *(a1 + 200), *(a1 + 208), a1 + 192))
    {
      v19 = "Unable to initialize hostkey importer DH-SHA";
LABEL_69:
      v20 = a1;
      v21 = 4294967286;
      goto LABEL_121;
    }

    if (_libssh2_get_string(v80, (a11 + 168), (a11 + 192)))
    {
      v19 = "Unable to get DH-SHA f value";
      goto LABEL_69;
    }

    BN_bin2bn(*(a11 + 168), *(a11 + 192), *(a11 + 152));
    if (_libssh2_get_string(v80, (a11 + 184), (a11 + 208)))
    {
      v19 = "Unable to get DH-SHA h sig";
      goto LABEL_69;
    }

    _libssh2_dh_secret((a11 + 136), *(a11 + 160), *(a11 + 152), a3, *(a11 + 128));
    v39 = BN_num_bits(*(a11 + 160));
    v40 = v39 + 7;
    if (v39 < -7)
    {
      v40 = v39 + 14;
    }

    *(a11 + 200) = (v40 >> 3) + 5;
    v41 = BN_num_bits(*(a11 + 160));
    v42 = *(a11 + 200);
    if ((v41 & 7) != 0)
    {
      *(a11 + 200) = --v42;
    }

    v43 = (*(a1 + 8))(v42, a1);
    *(a11 + 176) = v43;
    if (!v43)
    {
      v19 = "Unable to allocate buffer for DH-SHA K";
      goto LABEL_120;
    }

    _libssh2_htonu32(v43, *(a11 + 200) - 4);
    if ((BN_num_bits(*(a11 + 160)) & 7) != 0)
    {
      v44 = 4;
    }

    else
    {
      *(*(a11 + 176) + 4) = 0;
      v44 = 5;
    }

    BN_bn2bin(*(a11 + 160), (*(a11 + 176) + v44));
    *(a11 + 216) = v81;
    _libssh2_sha_algo_ctx_init(a5, *v81);
    v45 = *(a1 + 424);
    if (v45)
    {
      v46 = strlen(v45);
      _libssh2_htonu32((a11 + 32), v46 - 2);
      _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
      v47 = strlen(*(a1 + 424)) - 2;
      v48 = a5;
      v49 = *v81;
      v50 = *(a1 + 424);
    }

    else
    {
      _libssh2_htonu32((a11 + 32), 0x16u);
      _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
      v49 = *v81;
      v50 = "SSH-2.0-libssh2_1.11.0";
      v48 = a5;
      v47 = 22;
    }

    _libssh2_sha_algo_ctx_update(v48, v49, v50, v47);
    v51 = strlen(*(a1 + 312));
    _libssh2_htonu32((a11 + 32), v51);
    _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
    v52 = strlen(*(a1 + 312));
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a1 + 312), v52);
    _libssh2_htonu32((a11 + 32), *(a1 + 440));
    _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a1 + 432), *(a1 + 440));
    _libssh2_htonu32((a11 + 32), *(a1 + 328));
    _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a1 + 320), *(a1 + 328));
    _libssh2_htonu32((a11 + 32), *(a1 + 208));
    _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a1 + 200), *(a1 + 208));
    if (a7 == 32)
    {
      _libssh2_htonu32((a11 + 32), 0x800u);
      _libssh2_htonu32((a11 + 36), 0x1000u);
      _libssh2_htonu32((a11 + 40), 0x2000u);
      _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 0xCuLL);
    }

    if (a9)
    {
      _libssh2_sha_algo_ctx_update(a5, *v81, a9, cnt);
    }

    _libssh2_sha_algo_ctx_update(a5, *v81, (*(a11 + 8) + 1), *(a11 + 104) - 1);
    _libssh2_htonu32((a11 + 32), *(a11 + 192));
    _libssh2_sha_algo_ctx_update(a5, *v81, (a11 + 32), 4uLL);
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a11 + 168), *(a11 + 192));
    _libssh2_sha_algo_ctx_update(a5, *v81, *(a11 + 176), *(a11 + 200));
    _libssh2_sha_algo_ctx_final(a5, *v81, (a11 + 32));
    if ((*(*(a1 + 184) + 40))(a1, *(a11 + 184), *(a11 + 208), a11 + 32, v18, a1 + 192))
    {
      v19 = "Unable to verify hostkey signature DH-SHA";
      v20 = a1;
      v21 = 4294967285;
      goto LABEL_121;
    }

    *(a11 + 96) = 21;
    *a11 = 5;
    goto LABEL_89;
  }

  if (v23 != 5)
  {
    if (v23 != 6)
    {
      goto LABEL_122;
    }

    goto LABEL_92;
  }

LABEL_89:
  v53 = _libssh2_transport_send(a1, (a11 + 96), 1uLL, 0, 0);
  v22 = v53;
  if (v53 == -37)
  {
    return v22;
  }

  if (v53)
  {
    v19 = "Unable to send NEWKEYS message DH-SHA";
    goto LABEL_114;
  }

  *a11 = 6;
LABEL_92:
  v54 = _libssh2_packet_require(a1, 21, (a11 + 24), (a11 + 120), 0, 0, 0, a11 + 224);
  v22 = v54;
  if (v54 == -37)
  {
    return v22;
  }

  if (v54)
  {
    v19 = "Timed out waiting for NEWKEYS DH-SHA";
    goto LABEL_114;
  }

  *(a1 + 128) |= 2u;
  (*(a1 + 24))(*(a11 + 24), a1);
  if (!*(a1 + 160))
  {
    v55 = (*(a1 + 8))(v18, a1);
    *(a1 + 160) = v55;
    if (!v55)
    {
      v19 = "Unable to allocate buffer for SHA digest";
      goto LABEL_120;
    }

    memcpy(v55, (a11 + 32), v18);
    *(a1 + 168) = v18;
  }

  v56 = *(a1 + 448);
  v57 = *(v56 + 56);
  if (v57)
  {
    v57(a1, a1 + 456);
    v56 = *(a1 + 448);
  }

  if (!*(v56 + 40))
  {
    goto LABEL_105;
  }

  v79 = 0;
  v80[0] = 0;
  LODWORD(ctx) = 0;
  _libssh2_sha_algo_value_hash(a5, a1, a11, v80, *(v56 + 20), "A");
  v58 = v80[0];
  if (v80[0])
  {
    _libssh2_sha_algo_value_hash(a5, a1, a11, &v79, *(*(a1 + 448) + 24), "C");
    v59 = v79;
    if (!v79)
    {
      goto LABEL_116;
    }

    if ((*(*(a1 + 448) + 40))(a1))
    {
LABEL_111:
      (*(a1 + 24))(v58, a1);
LABEL_117:
      (*(a1 + 24))(v59, a1);
      goto LABEL_118;
    }

    if (ctx)
    {
      memset_s(v58, *(*(a1 + 448) + 20), 0, *(*(a1 + 448) + 20));
      (*(a1 + 24))(v58, a1);
    }

LABEL_105:
    v60 = *(a1 + 336);
    v61 = *(v60 + 56);
    if (v61)
    {
      v61(a1, a1 + 344);
      v60 = *(a1 + 336);
    }

    if (!*(v60 + 40))
    {
      goto LABEL_132;
    }

    v79 = 0;
    v80[0] = 0;
    LODWORD(ctx) = 0;
    _libssh2_sha_algo_value_hash(a5, a1, a11, v80, *(v60 + 20), "B");
    v58 = v80[0];
    if (!v80[0])
    {
LABEL_118:
      v22 = 4294967291;
      goto LABEL_122;
    }

    _libssh2_sha_algo_value_hash(a5, a1, a11, &v79, *(*(a1 + 336) + 24), "D");
    v59 = v79;
    if (v79)
    {
      if ((*(*(a1 + 336) + 40))(a1))
      {
        goto LABEL_111;
      }

      if (ctx)
      {
        memset_s(v58, *(*(a1 + 336) + 20), 0, *(*(a1 + 336) + 20));
        (*(a1 + 24))(v58, a1);
      }

LABEL_132:
      v66 = *(a1 + 464);
      v67 = *(v66 + 32);
      if (v67)
      {
        v67(a1, a1 + 480);
        v66 = *(a1 + 464);
      }

      if (*(v66 + 16))
      {
        v80[0] = 0;
        LODWORD(v79) = 0;
        _libssh2_sha_algo_value_hash(a5, a1, a11, v80, *(v66 + 12), "E");
        v68 = v80[0];
        if (!v80[0])
        {
          goto LABEL_118;
        }

        (*(*(a1 + 464) + 16))(a1, v80[0], &v79, a1 + 480);
        if (v79)
        {
          memset_s(v68, *(*(a1 + 464) + 12), 0, *(*(a1 + 464) + 12));
          (*(a1 + 24))(v68, a1);
        }
      }

      v69 = *(a1 + 352);
      v70 = *(v69 + 32);
      if (v70)
      {
        v70(a1, a1 + 368);
        v69 = *(a1 + 352);
      }

      if (*(v69 + 16))
      {
        v80[0] = 0;
        LODWORD(v79) = 0;
        _libssh2_sha_algo_value_hash(a5, a1, a11, v80, *(v69 + 12), "F");
        v71 = v80[0];
        if (!v80[0])
        {
          goto LABEL_118;
        }

        (*(*(a1 + 352) + 16))(a1, v80[0], &v79, a1 + 368);
        if (v79)
        {
          memset_s(v71, *(*(a1 + 352) + 12), 0, *(*(a1 + 352) + 12));
          (*(a1 + 24))(v71, a1);
        }
      }

      v72 = *(a1 + 488);
      if (!v72 || (v73 = *(v72 + 40)) != 0 && (v73(a1, 1, a1 + 496), (v72 = *(a1 + 488)) == 0) || (v74 = *(v72 + 16)) == 0 || !v74(a1, 1, a1 + 496))
      {
        v75 = *(a1 + 376);
        if (v75 && ((v76 = *(v75 + 40)) == 0 || (v76(a1, 0, a1 + 384), (v75 = *(a1 + 376)) != 0)) && (v77 = *(v75 + 16)) != 0)
        {
          if (v77(a1, 0, a1 + 384))
          {
            v22 = 4294967291;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_122;
      }

      goto LABEL_118;
    }

LABEL_116:
    v59 = v58;
    goto LABEL_117;
  }

  v22 = 0xFFFFFFFFLL;
LABEL_122:
  _libssh2_dh_dtor((a11 + 136));
  BN_clear_free(*(a11 + 144));
  *(a11 + 144) = 0;
  BN_clear_free(*(a11 + 152));
  *(a11 + 152) = 0;
  BN_clear_free(*(a11 + 160));
  *(a11 + 160) = 0;
  BN_CTX_free(*(a11 + 128));
  *(a11 + 128) = 0;
  v62 = *(a11 + 8);
  if (v62)
  {
    (*(a1 + 24))(v62, a1);
    *(a11 + 8) = 0;
  }

  v63 = *(a11 + 16);
  if (v63)
  {
    (*(a1 + 24))(v63, a1);
    *(a11 + 16) = 0;
  }

  v64 = *(a11 + 176);
  if (v64)
  {
    (*(a1 + 24))(v64, a1);
    *(a11 + 176) = 0;
  }

  *a11 = 0;
  return v22;
}

uint64_t _libssh2_sha_algo_ctx_init(int a1, EVP_MD_CTX **a2)
{
  if (a1 > 383)
  {
    if (a1 == 384)
    {

      return _libssh2_sha384_init(a2);
    }

    else
    {
      if (a1 != 512)
      {
        goto LABEL_18;
      }

      return _libssh2_sha512_init(a2);
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 256)
      {

        return _libssh2_sha256_init(a2);
      }

LABEL_18:
      _libssh2_sha_algo_ctx_init_cold_1();
    }

    return _libssh2_sha1_init(a2);
  }
}

uint64_t _libssh2_sha_algo_ctx_update(uint64_t result, EVP_MD_CTX **a2, void *d, size_t cnt)
{
  if (result <= 383)
  {
    if (result != 1 && result != 256)
    {
      return result;
    }

    return EVP_DigestUpdate(*a2, d, cnt);
  }

  if (result == 512 || result == 384)
  {
    return EVP_DigestUpdate(*a2, d, cnt);
  }

  return result;
}

void _libssh2_sha_algo_ctx_final(int a1, EVP_MD_CTX **a2, unsigned __int8 *md)
{
  if (a1 > 383)
  {
    if (a1 != 512 && a1 != 384)
    {
      return;
    }
  }

  else if (a1 != 1 && a1 != 256)
  {
    return;
  }

  EVP_DigestFinal(*a2, md, 0);
  v4 = *a2;

  EVP_MD_CTX_free(v4);
}

void _libssh2_sha_algo_value_hash(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, size_t a5, const void *a6)
{
  if (a1 > 383)
  {
    if (a1 == 384)
    {
      ctx = 0;
      if (*a4)
      {
        if (!a5)
        {
          return;
        }
      }

      else
      {
        v27 = (*(a2 + 8))(a5 + 48, a2);
        *a4 = v27;
        if (v27)
        {
          v28 = a5 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          return;
        }
      }

      v29 = 0;
      do
      {
        _libssh2_sha384_init(&ctx);
        EVP_DigestUpdate(ctx, *(a3 + 176), *(a3 + 200));
        EVP_DigestUpdate(ctx, (a3 + 32), 0x30uLL);
        v30 = ctx;
        if (v29)
        {
          v31 = *a4;
          v32 = v29;
        }

        else
        {
          EVP_DigestUpdate(ctx, a6, 1uLL);
          v30 = ctx;
          v31 = *(a2 + 160);
          v32 = *(a2 + 168);
        }

        EVP_DigestUpdate(v30, v31, v32);
        EVP_DigestFinal(ctx, (*a4 + v29), 0);
        EVP_MD_CTX_free(ctx);
        v29 += 48;
      }

      while (v29 < a5);
    }

    else if (a1 == 512)
    {
      ctx = 0;
      if (*a4 || (v16 = (*(a2 + 8))(a5 + 64, a2), (*a4 = v16) != 0))
      {
        if (a5)
        {
          v17 = 0;
          do
          {
            _libssh2_sha512_init(&ctx);
            EVP_DigestUpdate(ctx, *(a3 + 176), *(a3 + 200));
            EVP_DigestUpdate(ctx, (a3 + 32), 0x40uLL);
            v18 = ctx;
            if (v17)
            {
              v19 = *a4;
              v20 = v17;
            }

            else
            {
              EVP_DigestUpdate(ctx, a6, 1uLL);
              v18 = ctx;
              v19 = *(a2 + 160);
              v20 = *(a2 + 168);
            }

            EVP_DigestUpdate(v18, v19, v20);
            EVP_DigestFinal(ctx, (*a4 + v17), 0);
            EVP_MD_CTX_free(ctx);
            v17 += 64;
          }

          while (v17 < a5);
        }
      }
    }
  }

  else if (a1 == 1)
  {
    ctx = 0;
    if (*a4)
    {
      if (!a5)
      {
        return;
      }
    }

    else
    {
      v21 = (*(a2 + 8))(a5 + 20, a2);
      *a4 = v21;
      if (v21)
      {
        v22 = a5 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return;
      }
    }

    v23 = 0;
    do
    {
      _libssh2_sha1_init(&ctx);
      EVP_DigestUpdate(ctx, *(a3 + 176), *(a3 + 200));
      EVP_DigestUpdate(ctx, (a3 + 32), 0x14uLL);
      v24 = ctx;
      if (v23)
      {
        v25 = *a4;
        v26 = v23;
      }

      else
      {
        EVP_DigestUpdate(ctx, a6, 1uLL);
        v24 = ctx;
        v25 = *(a2 + 160);
        v26 = *(a2 + 168);
      }

      EVP_DigestUpdate(v24, v25, v26);
      EVP_DigestFinal(ctx, (*a4 + v23), 0);
      EVP_MD_CTX_free(ctx);
      v23 += 20;
    }

    while (v23 < a5);
  }

  else if (a1 == 256)
  {
    ctx = 0;
    if (*a4 || (v11 = (*(a2 + 8))(a5 + 32, a2), (*a4 = v11) != 0))
    {
      if (a5)
      {
        v12 = 0;
        do
        {
          _libssh2_sha256_init(&ctx);
          EVP_DigestUpdate(ctx, *(a3 + 176), *(a3 + 200));
          EVP_DigestUpdate(ctx, (a3 + 32), 0x20uLL);
          v13 = ctx;
          if (v12)
          {
            v14 = *a4;
            v15 = v12;
          }

          else
          {
            EVP_DigestUpdate(ctx, a6, 1uLL);
            v13 = ctx;
            v14 = *(a2 + 160);
            v15 = *(a2 + 168);
          }

          EVP_DigestUpdate(v13, v14, v15);
          EVP_DigestFinal(ctx, (*a4 + v12), 0);
          EVP_MD_CTX_free(ctx);
          v12 += 32;
        }

        while (v12 < a5);
      }
    }
  }
}

uint64_t kex_method_diffie_hellman_group16_sha512_key_exchange(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    *(a2 + 272) = BN_new();
    v4 = BN_new();
    *(a2 + 280) = v4;
    BN_set_word(v4, 2uLL);
    BN_bin2bn(kex_method_diffie_hellman_group16_sha512_key_exchange_p_value, 512, *(a2 + 272));
    *a2 = 2;
  }

  v6 = *(a2 + 272);
  v5 = *(a2 + 280);
  v9 = 0;
  v7 = diffie_hellman_sha_algo(a1, v5, v6, 512, 512, &v9, 30, 31, 0, 0, a2 + 24);
  if (v7 != -37)
  {
    *a2 = 0;
    BN_clear_free(*(a2 + 272));
    *(a2 + 272) = 0;
    BN_clear_free(*(a2 + 280));
    *(a2 + 280) = 0;
  }

  return v7;
}

uint64_t kex_method_diffie_hellman_group18_sha512_key_exchange(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    *(a2 + 272) = BN_new();
    v4 = BN_new();
    *(a2 + 280) = v4;
    BN_set_word(v4, 2uLL);
    BN_bin2bn(kex_method_diffie_hellman_group18_sha512_key_exchange_p_value, 1024, *(a2 + 272));
    *a2 = 2;
  }

  v6 = *(a2 + 272);
  v5 = *(a2 + 280);
  v9 = 0;
  v7 = diffie_hellman_sha_algo(a1, v5, v6, 1024, 512, &v9, 30, 31, 0, 0, a2 + 24);
  if (v7 != -37)
  {
    *a2 = 0;
    BN_clear_free(*(a2 + 272));
    *(a2 + 272) = 0;
    BN_clear_free(*(a2 + 280));
    *(a2 + 280) = 0;
  }

  return v7;
}

uint64_t kex_method_diffie_hellman_group14_key_exchange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    *(a2 + 272) = BN_new();
    v8 = BN_new();
    *(a2 + 280) = v8;
    BN_set_word(v8, 2uLL);
    BN_bin2bn(kex_method_diffie_hellman_group14_key_exchange_p_value, 256, *(a2 + 272));
    *a2 = 2;
  }

  v9 = diffie_hellman_sha_algo(a1, *(a2 + 280), *(a2 + 272), 256, a3, a4, 30, 31, 0, 0, a2 + 24);
  if (v9 != -37)
  {
    *a2 = 0;
    BN_clear_free(*(a2 + 272));
    *(a2 + 272) = 0;
    BN_clear_free(*(a2 + 280));
    *(a2 + 280) = 0;
  }

  return v9;
}

uint64_t kex_method_diffie_hellman_group1_sha1_key_exchange(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    *(a2 + 272) = BN_new();
    v4 = BN_new();
    *(a2 + 280) = v4;
    BN_set_word(v4, 2uLL);
    BN_bin2bn(kex_method_diffie_hellman_group1_sha1_key_exchange_p_value, 128, *(a2 + 272));
    *a2 = 2;
  }

  v6 = *(a2 + 272);
  v5 = *(a2 + 280);
  v9 = 0;
  v7 = diffie_hellman_sha_algo(a1, v5, v6, 128, 1, &v9, 30, 31, 0, 0, a2 + 24);
  if (v7 != -37)
  {
    BN_clear_free(*(a2 + 272));
    *(a2 + 272) = 0;
    BN_clear_free(*(a2 + 280));
    *(a2 + 280) = 0;
    *a2 = 0;
  }

  return v7;
}

uint64_t kex_method_diffie_hellman_group_exchange_sha1_key_exchange(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *a2;
  if (*a2 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 != 2)
      {
LABEL_26:
        *a2 = 0;
        BN_clear_free(*(a2 + 280));
        *(a2 + 280) = 0;
        BN_clear_free(*(a2 + 272));
        *(a2 + 272) = 0;
        return v4;
      }

      v6 = *(a2 + 552);
    }

    else
    {
      *(a2 + 272) = BN_new();
      *(a2 + 280) = BN_new();
      *(a2 + 288) = 34;
      _libssh2_htonu32((a2 + 289), 0x800u);
      _libssh2_htonu32((a2 + 293), 0x1000u);
      _libssh2_htonu32((a2 + 297), 0x2000u);
      v6 = 13;
      *(a2 + 552) = 13;
      *a2 = 2;
    }

    v7 = _libssh2_transport_send(a1, (a2 + 288), v6, 0, 0);
    v4 = v7;
    if (v7 == -37)
    {
      return v4;
    }

    if (v7)
    {
      v9 = "Unable to send Group Exchange Request";
      goto LABEL_21;
    }

    *a2 = 3;
  }

  v8 = _libssh2_packet_require(a1, 31, (a2 + 544), (a2 + 560), 0, 0, 0, a2 + 8);
  v4 = v8;
  if (v8 != -37)
  {
    if (!v8)
    {
      *a2 = 4;
LABEL_15:
      v18 = 0;
      v19 = 0;
      v17 = 0;
      s = 0;
      v14 = 0;
      if (*(a2 + 560) > 8uLL)
      {
        v10 = *(a2 + 544);
        v15[2] = *(a2 + 560);
        v15[0] = v10;
        v15[1] = v10 + 1;
        if (_libssh2_get_bignum_bytes(v15, &v17, &v19))
        {
          v9 = "Unexpected value DH-SHA1 p";
        }

        else
        {
          if (!_libssh2_get_bignum_bytes(v15, &s, &v18))
          {
            BN_bin2bn(v17, v19, *(a2 + 272));
            BN_bin2bn(s, v18, *(a2 + 280));
            v4 = diffie_hellman_sha_algo(a1, *(a2 + 280), *(a2 + 272), v19, 1, &v14, 32, 33, (*(a2 + 544) + 1), *(a2 + 560) - 1, a2 + 24);
            if (v4 == -37)
            {
              return v4;
            }

            (*(a1 + 24))(*(a2 + 544), a1);
            goto LABEL_26;
          }

          v9 = "Unexpected value DH-SHA1 g";
        }
      }

      else
      {
        v9 = "Unexpected key length DH-SHA1";
      }

      v11 = a1;
      v12 = 4294967282;
      goto LABEL_25;
    }

    v9 = "Timeout waiting for GEX_GROUP reply";
LABEL_21:
    v11 = a1;
    v12 = v4;
LABEL_25:
    v4 = _libssh2_error(v11, v12, v9);
    goto LABEL_26;
  }

  return v4;
}

uint64_t _libssh2_error_flags(uint64_t a1, uint64_t a2, char *__s, char a4)
{
  if (a1)
  {
    if (*(a1 + 620))
    {
      (*(a1 + 24))(*(a1 + 608), a1);
    }

    *(a1 + 616) = a2;
    *(a1 + 620) = 0;
    if (__s && (a4 & 1) != 0)
    {
      v8 = strlen(__s);
      v9 = (*(a1 + 8))(v8 + 1, a1);
      if (v9)
      {
        v10 = v9;
        memcpy(v9, __s, v8 + 1);
        *(a1 + 620) = 1;
        *(a1 + 608) = v10;
      }

      else
      {
        *(a1 + 608) = "former error forgotten (OOM)";
      }
    }

    else
    {
      *(a1 + 608) = __s;
    }
  }

  else if (__s)
  {
    fprintf(*MEMORY[0x277D85DF8], "Session is NULL, error: %s\n", __s);
  }

  return a2;
}

ssize_t _libssh2_recv(int a1, void *a2, size_t a3, int a4)
{
  result = recv(a1, a2, a3, a4);
  if (result < 0)
  {
    if (*__error() == 2 || *__error() == 35)
    {
      return -35;
    }

    else
    {
      return -*__error();
    }
  }

  return result;
}

ssize_t _libssh2_send(int a1, const void *a2, size_t a3, int a4)
{
  result = send(a1, a2, a3, a4);
  if (result < 0)
  {
    if (*__error() == 35)
    {
      return -35;
    }

    else
    {
      return -*__error();
    }
  }

  return result;
}

uint64_t _libssh2_store_str(_DWORD **a1, const void *a2, size_t __n)
{
  **a1 = bswap32(__n);
  v5 = *a1 + 1;
  *a1 = v5;
  v6 = __n;
  if (__n)
  {
    memcpy(v5, a2, __n);
    *a1 = (*a1 + v6);
  }

  if (HIDWORD(__n))
  {
    _libssh2_store_str_cold_1();
  }

  return 1;
}

uint64_t _libssh2_store_bignum2_bytes(_DWORD **a1, _BYTE *a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v5 = &a2[a3];
    while (!*a2)
    {
      ++a2;
      if (!--v3)
      {
        v6 = 0;
        a2 = v5;
        goto LABEL_8;
      }
    }

    v6 = *a2 < 0;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:
  if (v3 == -1 && v6)
  {
    v7 = 4294967294;
  }

  else
  {
    v7 = v3;
  }

  **a1 = bswap32(v7 + v6);
  v8 = *a1 + 1;
  *a1 = v8;
  if (v6)
  {
    *v8 = 0;
    v8 = *a1 + 1;
    *a1 = v8;
  }

  if (v7)
  {
    memcpy(v8, a2, v7);
    *a1 = (*a1 + v7);
  }

  else
  {
    v7 = 0;
  }

  if (v3 != v7)
  {
    _libssh2_store_bignum2_bytes_cold_1();
  }

  return 1;
}

uint64_t libssh2_base64_decode(uint64_t a1, uint64_t *a2, _DWORD *a3, unsigned __int8 *a4, unsigned int a5)
{
  v7 = 0;
  result = _libssh2_base64_decode(a1, a2, &v7, a4, a5);
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t _libssh2_base64_decode(uint64_t a1, uint64_t *a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = (*(a1 + 8))(3 * (a5 >> 2) + 1, a1);
  *a2 = v10;
  if (!v10)
  {
    v17 = "Unable to allocate memory for base64 decoding";
    v18 = 4294967290;
    v19 = a1;
    v20 = 4294967290;
LABEL_23:
    _libssh2_error_flags(v19, v20, v17, 0);
    return v18;
  }

  if (a5 < 1)
  {
    v11 = 0;
    goto LABEL_25;
  }

  v11 = 0;
  v12 = 0;
  v13 = &a4[a5];
  do
  {
    v14 = base64_reverse_table[*a4];
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    if (v12 <= 0)
    {
      v15 = -(-v12 & 3);
    }

    else
    {
      v15 = v12 & 3;
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (v15 == 3)
        {
          *(v10 + v11++) |= v14;
        }

        goto LABEL_18;
      }

      *(v10 + v11++) |= v14 >> 2;
      v16 = v14 << 6;
      goto LABEL_17;
    }

    if (!v15)
    {
      v16 = 4 * v14;
      goto LABEL_17;
    }

    if (v15 == 1)
    {
      *(v10 + v11++) |= v14 >> 4;
      v16 = 16 * v14;
LABEL_17:
      *(v10 + v11) = v16;
    }

LABEL_18:
    ++v12;
LABEL_19:
    ++a4;
  }

  while (a4 < v13);
  if ((v12 & 0x8000000000000003) == 1)
  {
    (*(a1 + 24))(*a2, a1);
    *a2 = 0;
    v17 = "Invalid base64";
    v18 = 4294967262;
    v19 = a1;
    v20 = 4294967262;
    goto LABEL_23;
  }

LABEL_25:
  v18 = 0;
  *a3 = v11;
  return v18;
}

const char *_libssh2_base64_encode(uint64_t a1, char *__s, size_t a3, const char **a4)
{
  v5 = a3;
  v6 = __s;
  *a4 = 0;
  if (!a3)
  {
    v5 = strlen(__s);
  }

  result = (*(a1 + 8))(4 * v5 / 3 + 4, a1);
  if (result)
  {
    v9 = result;
    if (v5)
    {
      v9 = result;
      do
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v5)
          {
            ++v11;
            v13 = *v6++;
            v12 = v13;
            --v5;
          }

          else
          {
            v12 = 0;
          }

          *(&v19 + v10++) = v12;
        }

        while (v10 != 3);
        v14 = v19 >> 2;
        v15 = (v20 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v19 & 3));
        v16 = v21;
        v17 = (v21 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v20 & 0xF));
        if (v11 == 2)
        {
          *v9 = table64[v14];
          v9[1] = table64[v15];
          v9[2] = table64[v17];
          v18 = 61;
        }

        else
        {
          *v9 = table64[v14];
          v9[1] = table64[v15];
          if (v11 == 1)
          {
            v18 = 61;
            v9[2] = 61;
          }

          else
          {
            v9[2] = table64[v17];
            v18 = table64[v16 & 0x3F];
          }
        }

        v9[3] = v18;
        v9 += 4;
      }

      while (v5);
    }

    *v9 = 0;
    *a4 = result;

    return strlen(result);
  }

  return result;
}

void *_libssh2_list_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *_libssh2_list_add(void **a1, void *a2)
{
  a2[2] = a1;
  v2 = *a1;
  *a2 = 0;
  a2[1] = v2;
  *a1 = a2;
  result = a1 + 1;
  if (!v2)
  {
    v2 = result;
  }

  *v2 = a2;
  return result;
}

uint64_t *_libssh2_list_remove(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v3 = v1;
  if (!v1)
  {
    v3 = (result[2] + 8);
  }

  *v3 = v2;
  if (v2)
  {
    v4 = (v2 + 8);
  }

  else
  {
    v4 = result[2];
  }

  *v4 = v1;
  return result;
}

void *_libssh2_calloc(uint64_t a1, size_t a2)
{
  v3 = (*(a1 + 8))(a2, a1);
  v4 = v3;
  if (v3)
  {
    bzero(v3, a2);
  }

  return v4;
}

_BYTE *_libssh2_xor_data(_BYTE *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v5 = *a2++;
    v4 = v5;
    v6 = *a3++;
    *result++ = v6 ^ v4;
  }

  return result;
}

unint64_t _libssh2_aes_ctr_increment(unint64_t result, uint64_t a2)
{
  v2 = (result + a2 - 1);
  if (v2 >= result)
  {
    v3 = 1;
    do
    {
      v4 = v3 + *v2;
      *v2-- = v4;
      v3 = v4 >> 8;
    }

    while (v2 >= result);
  }

  return result;
}

void *_libssh2_string_buf_new(uint64_t a1)
{
  result = (*(a1 + 8))(24, a1);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t _libssh2_string_buf_free(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (*a2)
    {
      (*(result + 24))(*a2, result);
    }

    v4 = *(v3 + 24);

    return v4(a2, v3);
  }

  return result;
}

uint64_t _libssh2_get_byte(void *a1, _BYTE *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + v2 - v3;
  if (v4)
  {
    v5 = v4 > v2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  *a2 = *v3;
  ++a1[1];
  return v6;
}

BOOL _libssh2_check_length(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + v2 - v3;
  if (v4 >= a2)
  {
    v6 = v4 > v2;
    v5 = *a1 - v3 < 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

uint64_t _libssh2_get_BOOLean(void *a1, BOOL *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + v2 - v3;
  if (v4)
  {
    v5 = v4 > v2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  *a2 = *v3 != 0;
  ++a1[1];
  return v6;
}

uint64_t _libssh2_get_u32(void *a1, _DWORD *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + v2 - v3;
  if (v4 >= 4)
  {
    v5 = v4 >= v2;
    v6 = v4 == v2;
    v7 = (*a1 - v3) < 0;
  }

  else
  {
    v5 = 1;
    v6 = 0;
  }

  if (!v6 && v5)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  *a2 = bswap32(*v3);
  a1[1] = v3 + 1;
  return v8;
}

uint64_t _libssh2_get_u64(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1 + v2 - v3;
  if (v4 >= 8)
  {
    v6 = v4 > v2;
    v5 = *a1 - v3 < 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = _libssh2_ntohu64(*(a1 + 8));
  result = 0;
  *a2 = v9;
  *(a1 + 8) = v3 + 8;
  return result;
}

uint64_t _libssh2_match_string(void *a1, const char *a2)
{
  v4 = 0;
  __s1 = 0;
  if (_libssh2_get_string(a1, &__s1, &v4) || v4 != strlen(a2))
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncmp(__s1, a2, v4))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t _libssh2_get_string(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  if (_libssh2_get_u32(a1, &v13))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v13;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1 + v8 - v7;
  if (v9 >= v13)
  {
    v11 = v9 > v8;
    v10 = *a1 - v7 < 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = v7;
  a1[1] += v6;
  result = 0;
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t _libssh2_copy_string(uint64_t a1, void *a2, void *a3, size_t *a4)
{
  v10 = 0;
  v11 = 0;
  if (_libssh2_get_string(a2, &v10, &v11))
  {
    return 0xFFFFFFFFLL;
  }

  if (v11)
  {
    v8 = (*(a1 + 8))(v11, a1);
    *a3 = v8;
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    memcpy(v8, v10, v11);
    if (!a4)
    {
      return 0;
    }

    v9 = v11;
  }

  else
  {
    v9 = 0;
    *a3 = 0;
  }

  result = 0;
  *a4 = v9;
  return result;
}

uint64_t _libssh2_get_bignum_bytes(void *a1, void *a2, void *a3)
{
  v15 = 0;
  if (_libssh2_get_u32(a1, &v15))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v15;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1 + v8 - v7;
  if (v9 >= v15)
  {
    v11 = v9 > v8;
    v10 = (*a1 - v7) < 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v15)
  {
    v13 = &v7[v15];
    LODWORD(v14) = v15;
    while (!*v7)
    {
      ++v7;
      LODWORD(v14) = v14 - 1;
      if (!v14)
      {
        v7 = v13;
        break;
      }
    }

    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  *a2 = v7;
  a1[1] += v6;
  result = 0;
  if (a3)
  {
    *a3 = v14;
  }

  return result;
}

char **_libssh2_mac_override(const char **a1)
{
  v1 = *a1;
  v2 = &mac_method_hmac_aesgcm;
  if (strcmp(*a1, "aes256-gcm@openssh.com") && strcmp(v1, "aes128-gcm@openssh.com"))
  {
    return 0;
  }

  return v2;
}

uint64_t mac_method_common_init(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  *a4 = a2;
  *a3 = 0;
  return 0;
}

uint64_t mac_method_hmac_sha2_256_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  _libssh2_htonu32(&data, a3);
  v14 = HMAC_CTX_new();
  v15 = *a8;
  v16 = EVP_sha256();
  HMAC_Init_ex(v14, v15, 32, v16, 0);
  HMAC_Update(v14, &data, 4uLL);
  HMAC_Update(v14, a4, a5);
  if (a6 && a7)
  {
    HMAC_Update(v14, a6, a7);
  }

  HMAC_Final(v14, a2, 0);
  HMAC_CTX_free(v14);
  return 0;
}

uint64_t mac_method_common_dtor(uint64_t a1, void *a2)
{
  if (*a2)
  {
    (*(a1 + 24))();
  }

  *a2 = 0;
  return 0;
}

uint64_t mac_method_hmac_sha2_512_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  _libssh2_htonu32(&data, a3);
  v14 = HMAC_CTX_new();
  v15 = *a8;
  v16 = EVP_sha512();
  HMAC_Init_ex(v14, v15, 64, v16, 0);
  HMAC_Update(v14, &data, 4uLL);
  HMAC_Update(v14, a4, a5);
  if (a6 && a7)
  {
    HMAC_Update(v14, a6, a7);
  }

  HMAC_Final(v14, a2, 0);
  HMAC_CTX_free(v14);
  return 0;
}

uint64_t mac_method_hmac_sha1_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  _libssh2_htonu32(&data, a3);
  v14 = HMAC_CTX_new();
  v15 = *a8;
  v16 = EVP_sha1();
  HMAC_Init_ex(v14, v15, 20, v16, 0);
  HMAC_Update(v14, &data, 4uLL);
  HMAC_Update(v14, a4, a5);
  if (a6 && a7)
  {
    HMAC_Update(v14, a6, a7);
  }

  HMAC_Final(v14, a2, 0);
  HMAC_CTX_free(v14);
  return 0;
}

uint64_t mac_method_hmac_sha1_96_hash(uint64_t a1, uint64_t a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  v13 = *MEMORY[0x277D85DE8];
  mac_method_hmac_sha1_hash(a1, &v11, a3, a4, a5, a6, a7, a8);
  *a2 = v11;
  *(a2 + 8) = v12;
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mac_method_hmac_md5_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  _libssh2_htonu32(&data, a3);
  v14 = HMAC_CTX_new();
  v15 = *a8;
  v16 = EVP_md5();
  HMAC_Init_ex(v14, v15, 16, v16, 0);
  HMAC_Update(v14, &data, 4uLL);
  HMAC_Update(v14, a4, a5);
  if (a6 && a7)
  {
    HMAC_Update(v14, a6, a7);
  }

  HMAC_Final(v14, a2, 0);
  HMAC_CTX_free(v14);
  return 0;
}

uint64_t mac_method_hmac_md5_96_hash(uint64_t a1, uint64_t a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  v13 = *MEMORY[0x277D85DE8];
  mac_method_hmac_md5_hash(a1, &v11, a3, a4, a5, a6, a7, a8);
  *a2 = v11;
  *(a2 + 8) = v12;
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t mac_method_hmac_ripemd160_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3, const unsigned __int8 *a4, size_t a5, const unsigned __int8 *a6, size_t a7, const void **a8)
{
  _libssh2_htonu32(&data, a3);
  v14 = HMAC_CTX_new();
  v15 = *a8;
  v16 = EVP_ripemd160();
  HMAC_Init_ex(v14, v15, 20, v16, 0);
  HMAC_Update(v14, &data, 4uLL);
  HMAC_Update(v14, a4, a5);
  if (a6 && a7)
  {
    HMAC_Update(v14, a6, a7);
  }

  HMAC_Final(v14, a2, 0);
  HMAC_CTX_free(v14);
  return 0;
}

const char *libssh2_version(int a1)
{
  if (a1 >= 68353)
  {
    return 0;
  }

  else
  {
    return "1.11.0";
  }
}

uint64_t libssh2_init(int a1)
{
  v2 = _libssh2_initialized;
  if (!(_libssh2_initialized | a1 & 1))
  {
    _libssh2_openssl_crypto_init();
    v2 = _libssh2_initialized;
  }

  _libssh2_initialized = v2 + 1;
  _libssh2_init_flags |= a1;
  return 0;
}

uint64_t libssh2_exit()
{
  v0 = _libssh2_initialized;
  if (_libssh2_initialized)
  {
    --_libssh2_initialized;
    if (v0 == 1 && (_libssh2_init_flags & 1) == 0)
    {
      return _libssh2_openssl_crypto_exit();
    }
  }

  return result;
}

uint64_t _libssh2_init_if_needed()
{
  if (!_libssh2_initialized)
  {
    result = _libssh2_openssl_crypto_init();
    ++_libssh2_initialized;
  }

  return result;
}

uint64_t _libssh2_packet_add(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v4 = a3;
  v7 = a1 + 72040;
  v107 = 0;
  v108 = 0;
  v105 = 0;
  v106 = 0;
  v8 = *a2;
  v9 = *(a1 + 72600);
  if (v9 > 11)
  {
    if (v9 > 13)
    {
      if (v9 != 14)
      {
        if (v9 != 15)
        {
          if (v9 == 18)
          {
            goto LABEL_6;
          }

          goto LABEL_51;
        }

LABEL_135:
        *(v7 + 560) = 15;
        if (_libssh2_transport_send(a1, &_libssh2_packet_add_packet, 1uLL) == -37)
        {
          return 4294967259;
        }

LABEL_150:
        (*(a1 + 24))(a2, a1);
LABEL_151:
        v16 = 0;
LABEL_264:
        *(v7 + 560) = 0;
        return v16;
      }

LABEL_237:
      *(v7 + 560) = 14;
      v100 = 100;
      v101 = *(a2 + 1);
      v16 = _libssh2_transport_send(a1, &v100, 5uLL);
      if (v16 == -37)
      {
        return v16;
      }

      goto LABEL_263;
    }

    if (v9 != 12)
    {
LABEL_26:
      *(v7 + 560) = 13;
      v113 = 0;
      v19 = *(v7 + 760);
      v20 = *(v7 + 680);
      if (v20)
      {
LABEL_27:
        if (!*(a1 + 64))
        {
LABEL_181:
          v64 = 4;
          goto LABEL_182;
        }

        if (v20 == 2)
        {
LABEL_33:
          v24 = _libssh2_transport_send(a1, (a1 + 72724), 0x11uLL);
          v16 = v24;
          if (v24 == -37)
          {
            goto LABEL_262;
          }

          if (v24)
          {
            *(v7 + 680) = 0;
LABEL_153:
            v65 = "Unable to send channel open confirmation";
            v66 = a1;
            v67 = 4294967289;
LABEL_261:
            v16 = _libssh2_error(v66, v67, v65);
LABEL_262:
            if (v16 != -37)
            {
              goto LABEL_263;
            }

            return v16;
          }

          _libssh2_list_add((a1 + 552), v19);
          (*(v19[13] + 64))(v19[13], v19, *(v7 + 728), *(v7 + 748), v19[13]);
LABEL_184:
          *(v7 + 680) = 0;
          goto LABEL_262;
        }

        if (v20 == 1)
        {
          v21 = _libssh2_calloc(a1, 0x310uLL);
          if (v21)
          {
            v19 = v21;
            v21[13] = a1;
            *(v21 + 8) = 3;
            v22 = (*(a1 + 8))(4, a1);
            v19[3] = v22;
            if (v22)
            {
              memcpy(v22, "x11", (*(v19 + 8) + 1));
              *(v19 + 17) = *(v7 + 736);
              v19[9] = 0x20000000200000;
              *(v19 + 20) = 0x8000;
              *(v19 + 12) = _libssh2_channel_nextid(a1);
              v23 = *(v7 + 740);
              *(v19 + 13) = v23;
              v19[7] = v23;
              v113 = (a1 + 72725);
              *(v7 + 684) = 91;
              _libssh2_store_u32(&v113, *(v19 + 17));
              _libssh2_store_u32(&v113, *(v19 + 12));
              _libssh2_store_u32(&v113, *(v19 + 18));
              _libssh2_store_u32(&v113, *(v19 + 20));
              *(v7 + 680) = 2;
              goto LABEL_33;
            }

            _libssh2_error(a1, 4294967290, "allocate a channel for new connection");
            (*(a1 + 24))(v19, a1);
          }

          else
          {
            _libssh2_error(a1, 4294967290, "allocate a channel for new connection");
          }

          goto LABEL_181;
        }

LABEL_146:
        v64 = 2;
LABEL_182:
        v113 = (a1 + 72725);
        *(v7 + 684) = 92;
        _libssh2_store_u32(&v113, *(v7 + 736));
        _libssh2_store_u32(&v113, v64);
        _libssh2_store_str(&v113, "X11 Forward Unavailable", 0x17uLL);
        _libssh2_htonu32(v113, 0);
        v74 = _libssh2_transport_send(a1, (v7 + 684), 0x28uLL);
        v16 = v74;
        if (v74 == -37)
        {
          goto LABEL_262;
        }

        if (!v74)
        {
          goto LABEL_184;
        }

        *(v7 + 680) = 0;
LABEL_259:
        v65 = "Unable to send open failure";
LABEL_260:
        v66 = a1;
        v67 = v16;
        goto LABEL_261;
      }

      v111 = v4;
      __n = 0;
      v109 = a2;
      if (v4 > 7)
      {
        v110 = a2 + 8;
        if (_libssh2_get_u32(&v109, (a1 + 72776)))
        {
          v37 = "unexpected sender channel size";
        }

        else if (_libssh2_get_u32(&v109, (a1 + 72780)) || _libssh2_get_u32(&v109, (a1 + 72784)))
        {
          v37 = "unexpected window size";
        }

        else if (_libssh2_get_string(&v109, (a1 + 72768), &__n))
        {
          v37 = "unexpected host size";
        }

        else
        {
          *(v7 + 752) = __n;
          if (!_libssh2_get_u32(&v109, (a1 + 72788)))
          {
            v20 = 1;
            *(v7 + 680) = 1;
            goto LABEL_27;
          }

          v37 = "unexpected port size";
        }
      }

      else
      {
        v37 = "unexpected data length";
      }

      _libssh2_error(a1, 4294967262, v37);
      goto LABEL_146;
    }

LABEL_217:
    *(v7 + 560) = 12;
    v113 = 0;
    v86 = _libssh2_list_first(a1 + 576);
    v87 = *(v7 + 576);
    if (v87 == 3)
    {
      v89 = 1;
    }

    else
    {
      v88 = v86;
      if (!v87)
      {
        v111 = v4;
        __n = 0;
        v109 = a2;
        if (v4 <= 0x13)
        {
          v65 = "Unexpected packet size";
          v66 = a1;
          v67 = 4294967255;
          goto LABEL_261;
        }

        v110 = a2 + 20;
        if (_libssh2_get_u32(&v109, (a1 + 72680)))
        {
          v65 = "Data too short extracting channel";
LABEL_244:
          v66 = a1;
          v67 = 4294967258;
          goto LABEL_261;
        }

        if (_libssh2_get_u32(&v109, (a1 + 72684)))
        {
          v65 = "Data too short extracting window size";
          goto LABEL_244;
        }

        if (_libssh2_get_u32(&v109, (a1 + 72688)))
        {
          v65 = "Data too short extracting packet";
          goto LABEL_244;
        }

        if (_libssh2_get_string(&v109, (a1 + 72664), &__n))
        {
          v65 = "Data too short extracting host";
          goto LABEL_244;
        }

        *(v7 + 660) = __n;
        if (_libssh2_get_u32(&v109, (a1 + 72692)))
        {
          v65 = "Data too short extracting port";
          goto LABEL_244;
        }

        if (_libssh2_get_string(&v109, (a1 + 72672), &__n))
        {
          v65 = "Data too short extracting shost";
          goto LABEL_244;
        }

        *(v7 + 664) = __n;
        if (_libssh2_get_u32(&v109, (a1 + 72696)))
        {
          v65 = "Data too short extracting sport";
          goto LABEL_244;
        }

        *(v7 + 576) = 1;
      }

      if (v88)
      {
        while (1)
        {
          if (*(v88 + 40) == *(v7 + 652))
          {
            v90 = strlen(*(v88 + 32));
            if (v90 == *(v7 + 660) && !memcmp(*(v88 + 32), *(v7 + 624), v90))
            {
              *(v7 + 672) = 0;
              v91 = *(v7 + 576);
              if (v91 == 2)
              {
                goto LABEL_271;
              }

              if (v91 == 1)
              {
                break;
              }
            }
          }

          v88 = _libssh2_list_next(v88);
          if (!v88)
          {
            goto LABEL_253;
          }
        }

        v93 = *(v88 + 68);
        if (!v93 || v93 > *(v88 + 64))
        {
          v94 = _libssh2_calloc(a1, 0x310uLL);
          if (v94)
          {
            v95 = v94;
            *(v7 + 672) = v94;
            v94[13] = a1;
            *(v94 + 8) = 15;
            v96 = (*(a1 + 8))(16, a1);
            v95[3] = v96;
            if (v96)
            {
              memcpy(v96, "forwarded-tcpip", (*(v95 + 8) + 1));
              *(v95 + 17) = *(v7 + 640);
              v95[9] = 0x20000000200000;
              *(v95 + 20) = 0x8000;
              *(v95 + 12) = _libssh2_channel_nextid(a1);
              v97 = *(v7 + 644);
              *(v95 + 13) = v97;
              v95[7] = v97;
              v113 = (a1 + 72621);
              *(v7 + 580) = 91;
              _libssh2_store_u32(&v113, *(v95 + 17));
              _libssh2_store_u32(&v113, *(v95 + 12));
              _libssh2_store_u32(&v113, *(v95 + 18));
              _libssh2_store_u32(&v113, *(v95 + 20));
              *(v7 + 576) = 2;
LABEL_271:
              v98 = _libssh2_transport_send(a1, (a1 + 72620), 0x11uLL);
              v16 = v98;
              if (v98 == -37)
              {
                goto LABEL_262;
              }

              if (v98)
              {
                *(v7 + 576) = 0;
                v65 = "Unable to send channel open confirmation";
                goto LABEL_260;
              }

              v99 = *(v7 + 672);
              if (v99)
              {
                _libssh2_list_add((v88 + 48), v99);
                ++*(v88 + 64);
              }

              v16 = 0;
              goto LABEL_257;
            }

            _libssh2_error(a1, 4294967290, "Unable to allocate a channel for new connection");
            (*(a1 + 24))(v95, a1);
          }

          else
          {
            _libssh2_error(a1, 4294967290, "Unable to allocate a channel for new connection");
          }
        }

        v89 = 4;
        goto LABEL_254;
      }

LABEL_253:
      v89 = 1;
LABEL_254:
      *(v7 + 576) = 3;
    }

    v113 = (a1 + 72621);
    *(v7 + 580) = 92;
    _libssh2_store_u32(&v113, *(v7 + 640));
    _libssh2_store_u32(&v113, v89);
    _libssh2_store_str(&v113, "Forward not requested", 0x15uLL);
    _libssh2_htonu32(v113, 0);
    v92 = _libssh2_transport_send(a1, (v7 + 580), 0x26uLL);
    v16 = v92;
    if (v92 == -37)
    {
      goto LABEL_262;
    }

    if (v92)
    {
      *(v7 + 576) = 0;
      goto LABEL_259;
    }

LABEL_257:
    *(v7 + 576) = 0;
    goto LABEL_262;
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v25 = 0;
LABEL_49:
      v28 = (*(a1 + 8))(48, a1);
      if (!v28)
      {
        (*(a1 + 24))(a2, a1);
        *(v7 + 560) = 0;
        return 4294967290;
      }

      v28[3] = a2;
      v28[4] = v4;
      v28[5] = v25;
      _libssh2_list_add((a1 + 536), v28);
      v9 = 4;
      *(v7 + 560) = 4;
      goto LABEL_51;
    }

    if (v9 != 11)
    {
LABEL_51:
      if (v8 != 20 || (*(a1 + 128)) && v9 != 5)
      {
        goto LABEL_151;
      }

      *v7 = 0;
      *(a1 + 35664) = 0;
      *(v7 + 560) = 0;
      *(v7 + 832) = 0;
      bzero((a1 + 71088), 0x298uLL);
      v18 = _libssh2_kex_exchange(a1, 1, a1 + 71088);
LABEL_55:
      if (v18 != -37)
      {
        goto LABEL_151;
      }

      return 4294967259;
    }

    v17 = *(a1 + 72608);
LABEL_24:
    *(v7 + 560) = 11;
    v18 = _libssh2_channel_receive_window_adjust(v17, (v4 - 13), 1, 0);
    goto LABEL_55;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_38;
  }

  if (a4 != -1 || (v38 = *(a1 + 56)) != 0 && !v38(a1, a2, a3, a1))
  {
    *(v7 + 560) = 1;
LABEL_38:
    v25 = 0;
    if (v8 <= 92)
    {
      if (v8 <= 6)
      {
        switch(v8)
        {
          case 1:
            if (v4 >= 5)
            {
              LODWORD(v113) = 0;
              v109 = a2;
              v110 = a2 + 1;
              v111 = v4;
              _libssh2_get_u32(&v109, &v113);
              _libssh2_get_string(&v109, &v108, &v106);
              _libssh2_get_string(&v109, &v107, &v105);
              v41 = *(a1 + 48);
              if (v41)
              {
                v41(a1, v113, v108, v106, v107, v105, a1);
              }
            }

            (*(a1 + 24))(a2, a1);
            *(a1 + 596) = -1;
            *(v7 + 560) = 0;
            return _libssh2_error(a1, 4294967283, "socket disconnect");
          case 2:
            v47 = *(a1 + 32);
            if (v4 < 2)
            {
              if (!v47)
              {
                goto LABEL_150;
              }

              v49 = "";
              v50 = a1;
              v48 = 0;
            }

            else
            {
              if (!v47)
              {
                goto LABEL_150;
              }

              v48 = (v4 - 1);
              v49 = (a2 + 1);
              v50 = a1;
            }

            v47(v50, v49, v48, a1);
            goto LABEL_150;
          case 4:
            if (v4 >= 2)
            {
              v26 = a2[1];
              if (v4 >= 6)
              {
                v109 = a2;
                v110 = a2 + 2;
                v111 = v4;
                _libssh2_get_string(&v109, &v108, &v106);
                _libssh2_get_string(&v109, &v107, &v105);
              }

              v27 = *(a1 + 40);
              if (v27)
              {
                v27(a1, v26, v108, v106, v107, v105, a1);
              }
            }

            goto LABEL_150;
        }

        goto LABEL_167;
      }

      switch(v8)
      {
        case 7:
          if (v4 >= 5)
          {
            v104 = 0;
            v109 = a2;
            v110 = a2 + 1;
            v111 = v4;
            if (_libssh2_get_u32(&v109, &v104))
            {
              v16 = _libssh2_error(a1, 4294967282, "Invalid extension info received");
            }

            else
            {
              v16 = 0;
            }

            if (!v16)
            {
              for (i = v104; v104; i = v104)
              {
                v113 = 0;
                __n = 0;
                __src = 0;
                v103 = 0;
                v104 = i - 1;
                _libssh2_get_string(&v109, &v103, &v113);
                _libssh2_get_string(&v109, &__src, &__n);
                if (v113 == 15 && (*v103 == 0x732D726576726573 ? (v76 = *(v103 + 7) == 0x73676C612D676973) : (v76 = 0), v76))
                {
                  v77 = *(a1 + 296);
                  if (v77)
                  {
                    (*(a1 + 24))(v77, a1);
                  }

                  v78 = (*(a1 + 8))(__n + 1, a1);
                  *(a1 + 296) = v78;
                  if (v78)
                  {
                    memcpy(v78, __src, __n);
                    v16 = 0;
                    *(*(a1 + 296) + __n) = 0;
                  }

                  else
                  {
                    v16 = _libssh2_error(a1, 4294967290, "memory for server sign algo");
                  }
                }

                else
                {
                  v16 = 0;
                }

                if (v16)
                {
                  break;
                }
              }
            }

            goto LABEL_263;
          }

          break;
        case 80:
          if (v4 < 5)
          {
            goto LABEL_150;
          }

          v61 = _libssh2_ntohu32((a2 + 1));
          if (v61 > 0xFFFFFFF9 || v61 + 6 > v4 || !a2[v61 + 5])
          {
            goto LABEL_150;
          }

          goto LABEL_135;
        case 90:
          if (v4 >= 0x11)
          {
            if (v4 >= 0x14 && _libssh2_ntohu32((a2 + 1)) == 15 && *(a2 + 5) == 0x6564726177726F66 && *(a2 + 12) == 0x70697063742D6465)
            {
              *(a1 + 72712) = 0;
              *(a1 + 72680) = 0u;
              *(a1 + 72696) = 0u;
              *(a1 + 72648) = 0u;
              *(a1 + 72664) = 0u;
              *(a1 + 72616) = 0u;
              *(a1 + 72632) = 0u;
              goto LABEL_217;
            }

            if (_libssh2_ntohu32((a2 + 1)) == 3 && *(a2 + 5) == 12664 && a2[7] == 49)
            {
              *(a1 + 72800) = 0;
              *(a1 + 72768) = 0u;
              *(a1 + 72784) = 0u;
              *(a1 + 72736) = 0u;
              *(a1 + 72752) = 0u;
              *(a1 + 72720) = 0u;
              goto LABEL_26;
            }

            if (v4 >= 0x1B && _libssh2_ntohu32((a2 + 1)) == 22)
            {
              v31 = *(a2 + 5) == 0x6567612D68747561 && *(a2 + 13) == 0x736E65706F40746ELL;
              if (v31 && *(a2 + 19) == 0x6D6F632E6873736ELL)
              {
                *(a1 + 72840) = 0u;
                *(a1 + 72856) = 0u;
                *(a1 + 72808) = 0u;
                *(a1 + 72824) = 0u;
LABEL_6:
                *(v7 + 560) = 18;
                v10 = *(v7 + 824);
                v11 = *(v7 + 768);
                if (!v11)
                {
                  *(v7 + 812) = _libssh2_ntohu32((a2 + 27));
                  *(v7 + 816) = _libssh2_ntohu32((a2 + 31));
                  *(v7 + 820) = _libssh2_ntohu32((a2 + 35));
                  v11 = 1;
                  *(v7 + 768) = 1;
                }

                v109 = 0;
                if (*(a1 + 72))
                {
                  if (v11 == 2)
                  {
LABEL_14:
                    v15 = _libssh2_transport_send(a1, (a1 + 72812), 0x11uLL);
                    v16 = v15;
                    if (v15 == -37)
                    {
                      goto LABEL_262;
                    }

                    if (!v15)
                    {
                      _libssh2_list_add((a1 + 552), v10);
                      *(a1 + 35664) = 0;
                      *(v7 + 832) = 0;
                      (*(v10[13] + 72))(v10[13], v10, v10[13]);
LABEL_159:
                      *(v7 + 768) = 0;
                      goto LABEL_262;
                    }

                    *(v7 + 768) = 0;
                    goto LABEL_153;
                  }

                  if (v11 != 1)
                  {
                    v40 = 2;
LABEL_157:
                    v109 = (a1 + 72813);
                    *(v7 + 772) = 92;
                    _libssh2_store_u32(&v109, *(v7 + 812));
                    _libssh2_store_u32(&v109, v40);
                    _libssh2_store_str(&v109, "Auth Agent unavailable", 0x16uLL);
                    _libssh2_htonu32(v109, 0);
                    v68 = _libssh2_transport_send(a1, (v7 + 772), 0x28uLL);
                    v16 = v68;
                    if (v68 == -37)
                    {
                      goto LABEL_262;
                    }

                    if (!v68)
                    {
                      goto LABEL_159;
                    }

                    *(v7 + 768) = 0;
                    goto LABEL_259;
                  }

                  v12 = (*(a1 + 8))(784, a1);
                  *(v7 + 824) = v12;
                  if (v12)
                  {
                    v10 = v12;
                    bzero(v12, 0x310uLL);
                    v10[13] = a1;
                    *(v10 + 8) = 10;
                    v13 = (*(a1 + 8))(11, a1);
                    v10[3] = v13;
                    if (v13)
                    {
                      memcpy(v13, "auth agent", (*(v10 + 8) + 1));
                      *(v10 + 17) = *(v7 + 812);
                      v10[9] = 0x20000000200000;
                      *(v10 + 20) = 0x8000;
                      *(v10 + 12) = _libssh2_channel_nextid(a1);
                      v14 = *(v7 + 816);
                      *(v10 + 13) = v14;
                      v10[7] = v14;
                      v109 = (a1 + 72813);
                      *(v7 + 772) = 91;
                      _libssh2_store_u32(&v109, *(v10 + 17));
                      _libssh2_store_u32(&v109, *(v10 + 12));
                      _libssh2_store_u32(&v109, *(v10 + 18));
                      _libssh2_store_u32(&v109, *(v10 + 20));
                      *(v7 + 768) = 2;
                      goto LABEL_14;
                    }

                    _libssh2_error(a1, 4294967290, "allocate a channel for new connection");
                    (*(a1 + 24))(v10, a1);
                  }

                  else
                  {
                    _libssh2_error(a1, 4294967290, "allocate a channel for new connection");
                  }
                }

                v40 = 4;
                goto LABEL_157;
              }
            }
          }

          break;
        default:
          goto LABEL_167;
      }

      goto LABEL_114;
    }

    if (v8 <= 95)
    {
      if (v8 == 93)
      {
        if (v4 >= 9)
        {
          v42 = _libssh2_ntohu32((a2 + 5));
          v43 = _libssh2_ntohu32((a2 + 1));
          v44 = _libssh2_channel_locate(a1, v43);
          if (v44)
          {
            *(v44 + 56) += v42;
          }
        }

        goto LABEL_150;
      }

      if (v8 == 94)
      {
        v25 = 9;
      }

      else
      {
        v25 = 13;
      }

      v51 = v4 - v25;
      if (v4 >= v25 && (v52 = _libssh2_ntohu32((a2 + 1)), (v53 = _libssh2_channel_locate(a1, v52)) != 0))
      {
        v17 = v53;
        if (*(v53 + 86) == 1 && v8 == 95)
        {
          (*(a1 + 24))(a2, a1);
          v54 = *(v17 + 96);
          v55 = v51 + v54;
          v56 = *(v17 + 76);
          v57 = v25 - v54 + v56;
          if (v55 >= v56)
          {
            LODWORD(v4) = v57;
          }

          *(v17 + 76) = v56 + v25 - v4;
          *(v7 + 568) = v17;
          goto LABEL_24;
        }

        if (v51 > *(v53 + 80))
        {
          _libssh2_error(a1, 4294967271, "Packet contains more data than we offered to receive, truncating");
          v4 = v25 + *(v17 + 80);
        }

        v69 = *(v17 + 76);
        v70 = *(v17 + 96);
        if (v70 < v69)
        {
          *(v17 + 85) = 0;
          v71 = v4 - v25 + v70;
          if (v71 > v69)
          {
            _libssh2_error(a1, 4294967272, "Remote sent more data than current window allows, truncating");
            v71 = *(v17 + 76);
            v4 = v25 - *(v17 + 96) + v71;
          }

          *(v17 + 96) = v71;
LABEL_167:
          *(v7 + 560) = 3;
          goto LABEL_49;
        }

        v58 = "The current receive window is full, data ignored";
        v59 = a1;
        v60 = 4294967272;
      }

      else
      {
        v58 = "Packet received for unknown channel";
        v59 = a1;
        v60 = 4294967273;
      }

      _libssh2_error(v59, v60, v58);
      goto LABEL_150;
    }

    if (v8 == 96)
    {
      if (v4 >= 5)
      {
        v45 = _libssh2_ntohu32((a2 + 1));
        v46 = _libssh2_channel_locate(a1, v45);
        if (v46)
        {
          *(v46 + 85) = 1;
        }
      }

      goto LABEL_150;
    }

    if (v8 == 97)
    {
      if (v4 >= 5)
      {
        v62 = _libssh2_ntohu32((a2 + 1));
        v63 = _libssh2_channel_locate(a1, v62);
        if (v63)
        {
          *(v63 + 84) = 257;
        }
      }

      goto LABEL_150;
    }

    if (v8 != 98)
    {
      goto LABEL_167;
    }

    if (v4 < 9)
    {
LABEL_114:
      v16 = 0;
      goto LABEL_263;
    }

    v33 = _libssh2_ntohu32((a2 + 1));
    v34 = _libssh2_ntohu32((a2 + 5));
    v35 = (v34 + 9);
    v36 = v35 < v4 && a2[v35] == 0;
    v16 = 0;
    if (v4 >= 0x14 && v34 == 11)
    {
      if (*(a2 + 9) == 0x6174732D74697865 && *(a2 + 12) == 0x7375746174732D74)
      {
        v79 = _libssh2_channel_locate(a1, v33);
        v16 = 0;
        if (v4 >= 0x19 && v79)
        {
          v16 = 0;
          *(v79 + 36) = _libssh2_ntohu32((a2 + 21));
        }

        goto LABEL_236;
      }

      if (*(a2 + 9) != 0x6769732D74697865 || *(a2 + 12) != 0x6C616E6769732D74)
      {
        goto LABEL_179;
      }

      v80 = _libssh2_channel_locate(a1, v33);
      v16 = 0;
      if (v4 >= 0x19)
      {
        v81 = v80;
        if (v80)
        {
          v82 = _libssh2_ntohu32((a2 + 21));
          if (v82 == -1)
          {
            *(v81 + 40) = 0;
          }

          else
          {
            v83 = v82;
            v84 = (*(a1 + 8))(v82 + 1, a1);
            *(v81 + 40) = v84;
            if (v84)
            {
              if (v83 + 25 > v4)
              {
LABEL_179:
                v16 = 0;
                goto LABEL_236;
              }

              v85 = v83;
              memcpy(v84, a2 + 25, v83);
              v16 = 0;
              *(*(v81 + 40) + v85) = 0;
              goto LABEL_236;
            }
          }

          v16 = _libssh2_error(a1, 4294967290, "memory for signal name");
        }
      }
    }

LABEL_236:
    if (!v36)
    {
      goto LABEL_237;
    }

LABEL_263:
    (*(a1 + 24))(a2, a1);
    goto LABEL_264;
  }

  (*(a1 + 24))(a2, a1);

  return _libssh2_error(a1, 4294967292, "Invalid MAC received");
}

uint64_t _libssh2_packet_ask(uint64_t a1, int a2, void *a3, unint64_t *a4, int a5, const void *a6, size_t a7)
{
  v14 = _libssh2_list_first(a1 + 536);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  v21 = a4;
  v16 = a5;
  v17 = a7 + a5;
  while (1)
  {
    v18 = v15[3];
    if (*v18 == a2)
    {
      v19 = v15[4];
      if (v19 >= v17 && (!a6 || !memcmp(&v18[v16], a6, a7)))
      {
        break;
      }
    }

    v15 = _libssh2_list_next(v15);
    if (!v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *a3 = v18;
  *v21 = v19;
  _libssh2_list_remove(v15);
  (*(a1 + 24))(v15, a1);
  return 0;
}

uint64_t _libssh2_packet_askv(uint64_t a1, char *__s, void *a3, unint64_t *a4, int a5, const void *a6, size_t a7)
{
  v12 = __s;
  v14 = strlen(__s);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  while (1)
  {
    v16 = *v12++;
    result = _libssh2_packet_ask(a1, v16, a3, a4, a5, a6, a7);
    if (!result)
    {
      break;
    }

    if (!--v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t _libssh2_packet_require(uint64_t a1, int a2, void *a3, unint64_t *a4, int a5, const void *a6, size_t a7, uint64_t a8)
{
  if (*(a8 + 8))
  {
    while (1)
    {
LABEL_4:
      if (*(a1 + 596))
      {
        return 4294967283;
      }

      result = _libssh2_transport_read(a1);
      if (result == -37)
      {
        return result;
      }

      if ((result & 0x80000000) != 0)
      {
        break;
      }

      if (result == a2)
      {
        result = _libssh2_packet_ask(a1, a2, a3, a4, a5, a6, a7);
        break;
      }

      if (!result)
      {
        v17 = *(a1 + 73576);
        if (v17 - time(0) + *(a8 + 8) > 0)
        {
          return 0xFFFFFFFFLL;
        }

        result = 4294967287;
        break;
      }
    }

    *(a8 + 8) = 0;
  }

  else
  {
    result = _libssh2_packet_ask(a1, a2, a3, a4, a5, a6, a7);
    if (result)
    {
      *(a8 + 8) = time(0);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t _libssh2_packet_burn(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (*a2)
  {
LABEL_30:
    while (!*(a1 + 596))
    {
      v11 = _libssh2_transport_read(a1);
      v12 = v11;
      if (v11 == -37)
      {
        goto LABEL_38;
      }

      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_36;
      }

      if (v11 && !_libssh2_packet_ask(a1, v11, &v16, &v15, 0, 0, 0))
      {
        (*(a1 + 24))(v16, a1);
LABEL_36:
        *a2 = 0;
        goto LABEL_38;
      }
    }

    v12 = 4294967283;
  }

  else
  {
    v4 = 0;
    v5 = vdupq_n_s64(0xFEuLL);
    do
    {
      v6 = vdupq_n_s64(v4);
      v7 = vorrq_s8(v6, xmmword_23E229690);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 14), 14).u8[0])
      {
        __s[v4] = v4 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v7)), 14), 14).i8[1])
      {
        __s[v4 + 1] = v4 | 2;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), vorrq_s8(v6, xmmword_23E22CA70)))), 14).i8[2])
      {
        __s[v4 + 2] = v4 | 3;
        __s[v4 + 3] = v4 | 4;
      }

      v8 = vorrq_s8(v6, xmmword_23E22CA60);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v8)), 14)).i32[1])
      {
        __s[v4 + 4] = v4 | 5;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v8)), 14)).i8[5])
      {
        __s[v4 + 5] = v4 | 6;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), vorrq_s8(v6, xmmword_23E22CA50))))).i8[6])
      {
        __s[v4 + 6] = v4 | 7;
        __s[v4 + 7] = v4 | 8;
      }

      v9 = vorrq_s8(v6, xmmword_23E22CA40);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v9)), 14), 14).u8[0])
      {
        __s[v4 + 8] = v4 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v9)), 14), 14).i8[1])
      {
        __s[v4 + 9] = v4 | 0xA;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), vorrq_s8(v6, xmmword_23E22CA30)))), 14).i8[2])
      {
        __s[v4 + 10] = v4 | 0xB;
        __s[v4 + 11] = v4 | 0xC;
      }

      v10 = vorrq_s8(v6, xmmword_23E22CA20);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v10)), 14)).i32[1])
      {
        __s[v4 + 12] = v4 | 0xD;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), v10)), 14)).i8[5])
      {
        __s[v4 + 13] = v4 | 0xE;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFEuLL), vorrq_s8(v6, xmmword_23E22CA10))))).i8[6])
      {
        __s[v4 + 14] = v4 | 0xF;
        __s[v4 + 15] = v4 + 16;
      }

      v4 += 16;
    }

    while (v4 != 256);
    __s[254] = 0;
    if (_libssh2_packet_askv(a1, __s, &v16, &v15, 0, 0, 0))
    {
      *a2 = 2;
      goto LABEL_30;
    }

    v12 = *v16;
    (*(a1 + 24))();
  }

LABEL_38:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t _libssh2_packet_requirev(uint64_t a1, char *a2, void *a3, unint64_t *a4, int a5, const void *a6, size_t a7, time_t *a8)
{
  if (_libssh2_packet_askv(a1, a2, a3, a4, a5, a6, a7))
  {
    if (!*a8)
    {
      *a8 = time(0);
    }

    while (1)
    {
      if (*(a1 + 596) == -1)
      {
        v17 = 4294967283;
        goto LABEL_15;
      }

      v16 = _libssh2_transport_read(a1);
      v17 = v16;
      if ((v16 & 0x80000000) != 0 && v16 != -37)
      {
        goto LABEL_15;
      }

      if (v16 <= 0)
      {
        v18 = *(a1 + 73576);
        if (v18 - time(0) + *a8 < 1)
        {
          v17 = 4294967287;
          goto LABEL_15;
        }

        if (v17 == -37)
        {
          return v17;
        }
      }

      if (strchr(a2, v17))
      {
        v17 = _libssh2_packet_askv(a1, a2, a3, a4, a5, a6, a7);
        goto LABEL_15;
      }
    }
  }

  v17 = 0;
LABEL_15:
  *a8 = 0;
  return v17;
}

uint64_t _libssh2_channel_nextid(uint64_t a1)
{
  v2 = *(a1 + 568);
  for (i = _libssh2_list_first(a1 + 552); i; i = _libssh2_list_next(i))
  {
    v4 = *(i + 48);
    if (v4 <= v2)
    {
      v2 = v2;
    }

    else
    {
      v2 = v4;
    }
  }

  *(a1 + 568) = v2 + 1;
  return v2;
}

uint64_t _libssh2_channel_locate(uint64_t a1, int a2)
{
  result = _libssh2_list_first(a1 + 552);
  if (result)
  {
    while (*(result + 48) != a2)
    {
      result = _libssh2_list_next(result);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = _libssh2_list_first(a1 + 576);
    if (result)
    {
      v5 = result;
      while (1)
      {
        result = _libssh2_list_first(v5 + 48);
        if (result)
        {
          break;
        }

LABEL_9:
        result = _libssh2_list_next(v5);
        v5 = result;
        if (!result)
        {
          return result;
        }
      }

      while (*(result + 48) != a2)
      {
        result = _libssh2_list_next(result);
        if (!result)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t _libssh2_channel_open(uint64_t a1, const void *a2, unsigned int a3, unsigned int a4, unsigned int a5, const void *a6, size_t a7)
{
  v9 = a1 + 69632;
  v39 = 0;
  v10 = *(a1 + 72400);
  if (v10 != 3)
  {
    if (v10 != 2)
    {
      if (v10)
      {
        goto LABEL_25;
      }

      *(a1 + 72440) = 0;
      *(a1 + 72416) = 0u;
      *(a1 + 72432) = a3 + 17;
      *(a1 + 72456) = _libssh2_channel_nextid(a1);
      *(v9 + 2776) = 0;
      v16 = _libssh2_calloc(a1, 0x310uLL);
      *(v9 + 2784) = v16;
      if (!v16)
      {
        v23 = "Unable to allocate space for channel data";
        v27 = a1;
        v22 = 4294967290;
        goto LABEL_37;
      }

      v17 = (v9 + 2784);
      v16[8] = a3;
      v18 = (*(a1 + 8))(a3, a1);
      *(*(v9 + 2784) + 24) = v18;
      if (!v18)
      {
        _libssh2_error(a1, 4294967290, "Failed allocating memory for channel type name");
        (*(a1 + 24))(*v17, a1);
        result = 0;
        *v17 = 0;
        return result;
      }

      memcpy(v18, a2, a3);
      v19 = *(v9 + 2784);
      *(v19 + 48) = *(v9 + 2824);
      *(v19 + 72) = a4;
      *(v19 + 76) = a4;
      *(v19 + 80) = a5;
      *(v19 + 104) = a1;
      _libssh2_list_add((a1 + 552), v19);
      v20 = (*(a1 + 8))(*(v9 + 2800), a1);
      *(v9 + 2792) = v20;
      v39 = v20;
      if (!v20)
      {
        v30 = "Unable to allocate temporary space for packet";
        v31 = a1;
        v22 = 4294967290;
        goto LABEL_24;
      }

      v39 = (v20 + 1);
      *v20 = 90;
      _libssh2_store_str(&v39, a2, a3);
      _libssh2_store_u32(&v39, *(v9 + 2824));
      _libssh2_store_u32(&v39, a4);
      _libssh2_store_u32(&v39, a5);
      *(v9 + 2768) = 2;
    }

    v21 = _libssh2_transport_send(a1, *(v9 + 2792), *(v9 + 2800), a6, a7);
    if (v21)
    {
      v22 = v21;
      if (v21 == -37)
      {
        v23 = "Would block sending channel-open request";
LABEL_15:
        v27 = a1;
LABEL_37:
        _libssh2_error(v27, v22, v23);
        return 0;
      }

      v30 = "Unable to send channel-open request";
LABEL_23:
      v31 = a1;
      goto LABEL_24;
    }

    *(v9 + 2768) = 3;
  }

  v24 = (v9 + 2808);
  v25 = (v9 + 2816);
  v26 = _libssh2_packet_requirev(a1, "[\", (v9 + 2808), (v9 + 2816), 1, (*(v9 + 2792) + a3 + 5), 4uLL, (a1 + 72408));
  if (v26)
  {
    v22 = v26;
    if (v26 == -37)
    {
      v23 = "Would block";
      goto LABEL_15;
    }

    v30 = "Unexpected error";
    goto LABEL_23;
  }

  if (!*v25)
  {
LABEL_20:
    v30 = "Unexpected packet size";
    v31 = a1;
    v22 = 4294967282;
LABEL_24:
    _libssh2_error(v31, v22, v30);
    goto LABEL_25;
  }

  v28 = *v24;
  v29 = **v24;
  if (v29 == 92)
  {
    v37 = _libssh2_ntohu32((v28 + 5));
    if (v37 > 2)
    {
      if (v37 == 3)
      {
        v30 = "Channel open failure (unknown channel type)";
        goto LABEL_52;
      }

      if (v37 == 4)
      {
        v30 = "Channel open failure (resource shortage)";
        goto LABEL_52;
      }
    }

    else
    {
      if (v37 == 1)
      {
        v30 = "Channel open failure (administratively prohibited)";
        goto LABEL_52;
      }

      if (v37 == 2)
      {
        v30 = "Channel open failure (connect failed)";
LABEL_52:
        v31 = a1;
        v22 = 4294967275;
        goto LABEL_24;
      }
    }

    v30 = "Channel open failure";
    goto LABEL_52;
  }

  if (v29 == 91)
  {
    if (*v25 > 0x10uLL)
    {
      *(*(v9 + 2784) + 68) = _libssh2_ntohu32((v28 + 5));
      *(*(v9 + 2784) + 56) = _libssh2_ntohu32((*(v9 + 2808) + 9));
      *(*(v9 + 2784) + 52) = _libssh2_ntohu32((*(v9 + 2808) + 9));
      *(*(v9 + 2784) + 60) = _libssh2_ntohu32((*(v9 + 2808) + 13));
      (*(a1 + 24))(*(v9 + 2792), a1);
      *(v9 + 2792) = 0;
      (*(a1 + 24))(*(v9 + 2808), a1);
      *(v9 + 2808) = 0;
      *(v9 + 2768) = 0;
      return *(v9 + 2784);
    }

    goto LABEL_20;
  }

LABEL_25:
  v32 = (v9 + 2808);
  v33 = *(v9 + 2808);
  if (v33)
  {
    (*(a1 + 24))(v33, a1);
    *v32 = 0;
  }

  v34 = *(v9 + 2792);
  if (v34)
  {
    (*(a1 + 24))(v34, a1);
    *(v9 + 2792) = 0;
  }

  v35 = *(v9 + 2784);
  if (v35)
  {
    (*(a1 + 24))(*(v35 + 24), a1);
    _libssh2_list_remove(*(v9 + 2784));
    _libssh2_htonu32(&v38, *(*(v9 + 2784) + 48));
    while ((_libssh2_packet_ask(a1, 94, (v9 + 2808), (a1 + 72448), 1, &v38, 4uLL) & 0x80000000) == 0 || (_libssh2_packet_ask(a1, 95, (v9 + 2808), (a1 + 72448), 1, &v38, 4uLL) & 0x80000000) == 0)
    {
      (*(a1 + 24))(*v32, a1);
      *v32 = 0;
    }

    (*(a1 + 24))(*(v9 + 2784), a1);
    *(v9 + 2784) = 0;
  }

  result = 0;
  *(v9 + 2768) = 0;
  return result;
}

uint64_t libssh2_channel_open_ex(uint64_t result, const void *a2, unsigned int a3, unsigned int a4, unsigned int a5, const void *a6, unsigned int a7)
{
  if (result)
  {
    v13 = result;
    v14 = time(0);
    while (1)
    {
      result = _libssh2_channel_open(v13, a2, a3, a4, a5, a6, a7);
      if (!*(v13 + 172) || result != 0)
      {
        break;
      }

      if (libssh2_session_last_errno(v13) != -37 || _libssh2_wait_socket(v13, v14))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t libssh2_channel_direct_tcpip_ex(uint64_t a1, const char *a2, unsigned int a3, const char *a4, unsigned int a5)
{
  if (a1)
  {
    v10 = a1 + 69632;
    v11 = time(0);
    do
    {
      v18 = 0;
      if (!*(v10 + 2828))
      {
        v12 = strlen(a2);
        *(v10 + 2840) = v12;
        v13 = strlen(a4);
        *(v10 + 2848) = v13;
        *(v10 + 2856) = v12 + v13 + 16;
        v14 = (*(a1 + 8))();
        *(v10 + 2832) = v14;
        v18 = v14;
        if (!v14)
        {
          _libssh2_error(a1, 4294967290, "Unable to allocate memory for direct-tcpip connection");
          v15 = 0;
          goto LABEL_10;
        }

        _libssh2_store_str(&v18, a2, *(v10 + 2840));
        _libssh2_store_u32(&v18, a3);
        _libssh2_store_str(&v18, a4, *(v10 + 2848));
        _libssh2_store_u32(&v18, a5);
      }

      v15 = _libssh2_channel_open(a1, "direct-tcpip", 0xCu, 0x200000u, 0x8000u, *(v10 + 2832), *(v10 + 2856));
      if (v15 || libssh2_session_last_errno(a1) != -37)
      {
        *(v10 + 2828) = 0;
        (*(a1 + 24))(*(v10 + 2832), a1);
        *(v10 + 2832) = 0;
      }

      else
      {
        v15 = 0;
        *(v10 + 2828) = 2;
      }

LABEL_10:
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(a1 + 172) == 0;
      }

      if (v16)
      {
        return v15;
      }
    }

    while (libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v11));
  }

  return 0;
}

uint64_t libssh2_channel_direct_streamlocal_ex(uint64_t a1, const char *a2, const char *a3, unsigned int a4)
{
  if (a1)
  {
    v8 = a1 + 69632;
    v9 = time(0);
    do
    {
      v16 = 0;
      if (!*(v8 + 2828))
      {
        v10 = strlen(a2);
        *(v8 + 2840) = v10;
        v11 = strlen(a3);
        *(v8 + 2848) = v11;
        *(v8 + 2856) = v10 + v11 + 12;
        v12 = (*(a1 + 8))();
        *(v8 + 2832) = v12;
        v16 = v12;
        if (!v12)
        {
          _libssh2_error(a1, 4294967290, "Unable to allocate memory for direct-streamlocal connection");
          v13 = 0;
          goto LABEL_10;
        }

        _libssh2_store_str(&v16, a2, *(v8 + 2840));
        _libssh2_store_str(&v16, a3, *(v8 + 2848));
        _libssh2_store_u32(&v16, a4);
      }

      v13 = _libssh2_channel_open(a1, "direct-streamlocal@openssh.com", 0x1Eu, 0x200000u, 0x8000u, *(v8 + 2832), *(v8 + 2856));
      if (v13 || libssh2_session_last_errno(a1) != -37)
      {
        *(v8 + 2828) = 0;
        (*(a1 + 24))(*(v8 + 2832), a1);
        *(v8 + 2832) = 0;
      }

      else
      {
        v13 = 0;
        *(v8 + 2828) = 2;
      }

LABEL_10:
      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(a1 + 172) == 0;
      }

      if (v14)
      {
        return v13;
      }
    }

    while (libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v9));
  }

  return 0;
}

void *libssh2_channel_forward_listen_ex(uint64_t a1, const char *a2, unsigned int a3, _DWORD *a4, int a5)
{
  if (a1)
  {
    v10 = a1 + 69632;
    v11 = time(0);
    if (!a2)
    {
      a2 = "0.0.0.0";
    }

    do
    {
      v31 = 0;
      v12 = *(v10 + 2864);
      if (v12 != 3)
      {
        if (v12 != 2)
        {
          if (v12)
          {
            goto LABEL_32;
          }

          v13 = strlen(a2);
          *(v10 + 2880) = v13;
          *(v10 + 2884) = v13 + 27;
          *(v10 + 2888) = 0;
          v14 = (*(a1 + 8))();
          *(v10 + 2872) = v14;
          if (!v14)
          {
            v17 = a1;
            v18 = 4294967290;
            v19 = "Unable to allocate memory for setenv packet";
            goto LABEL_29;
          }

          v31 = (v14 + 1);
          *v14 = 80;
          _libssh2_store_str(&v31, "tcpip-forward", 0xDuLL);
          v15 = v31;
          v31 = (v31 + 1);
          *v15 = 1;
          _libssh2_store_str(&v31, a2, *(v10 + 2880));
          _libssh2_store_u32(&v31, a3);
          *(v10 + 2864) = 2;
        }

        v16 = _libssh2_transport_send(a1, *(v10 + 2872), *(v10 + 2884), 0, 0);
        if (v16)
        {
          if (v16 != -37)
          {
            _libssh2_error(a1, 4294967289, "Unable to send global-request packet for forward listen request");
            (*(a1 + 24))(*(v10 + 2872), a1);
            v22 = 0;
            *(v10 + 2872) = 0;
            goto LABEL_33;
          }

          v17 = a1;
          v18 = 4294967259;
          v19 = "Would block sending global-request packet for forward listen request";
          goto LABEL_29;
        }

        (*(a1 + 24))(*(v10 + 2872), a1);
        *(v10 + 2872) = 0;
        *(v10 + 2864) = 3;
      }

      v29 = 0;
      v30 = 0;
      v20 = _libssh2_packet_requirev(a1, "QR", &v30, &v29, 0, 0, 0, (v10 + 2888));
      if (v20 != -37)
      {
        if (v20 || !v29)
        {
          v25 = a1;
          v26 = 4294967282;
          v27 = "Unknown";
        }

        else
        {
          v21 = *v30;
          if (v21 != 82)
          {
            if (v21 == 81)
            {
              v22 = _libssh2_calloc(a1, 0x60uLL);
              if (v22)
              {
                v23 = (*(a1 + 8))((*(v10 + 2880) + 1), a1);
                v22[4] = v23;
                if (v23)
                {
                  v22[3] = a1;
                  memcpy(v23, a2, *(v10 + 2880));
                  *(v22[4] + *(v10 + 2880)) = 0;
                  v24 = a3;
                  if (!a3)
                  {
                    v24 = 0;
                    if (v29 >= 5)
                    {
                      v24 = _libssh2_ntohu32((v30 + 1));
                    }
                  }

                  *(v22 + 10) = v24;
                  *(v22 + 16) = 0;
                  *(v22 + 17) = a5;
                  _libssh2_list_add((a1 + 576), v22);
                  if (a4)
                  {
                    *a4 = *(v22 + 10);
                  }
                }

                else
                {
                  _libssh2_error(a1, 4294967290, "Unable to allocate memory for listener queue");
                  (*(a1 + 24))(v22, a1);
                  v22 = 0;
                }
              }

              else
              {
                _libssh2_error(a1, 4294967290, "Unable to allocate memory for listener queue");
              }

              (*(a1 + 24))(v30, a1);
LABEL_33:
              *(v10 + 2864) = 0;
              if (v22)
              {
                return v22;
              }

              goto LABEL_34;
            }

LABEL_32:
            v22 = 0;
            goto LABEL_33;
          }

          (*(a1 + 24))();
          v25 = a1;
          v26 = 4294967264;
          v27 = "Unable to complete request for forward-listen";
        }

        _libssh2_error(v25, v26, v27);
        goto LABEL_32;
      }

      v17 = a1;
      v18 = 4294967259;
      v19 = "Would block";
LABEL_29:
      _libssh2_error(v17, v18, v19);
      v22 = 0;
LABEL_34:
      if (!*(a1 + 172))
      {
        return v22;
      }
    }

    while (libssh2_session_last_errno(a1) == -37 && !_libssh2_wait_socket(a1, v11));
  }

  return 0;
}

uint64_t _libssh2_channel_forward_cancel(uint64_t a1)
{
  v15 = 0;
  v2 = *(a1 + 24);
  v3 = strlen(*(a1 + 32));
  v4 = v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 80);
  }

  else
  {
    v7 = (*(v2 + 8))(v3 + 34, v2);
    if (!v7)
    {
      v10 = 4294967290;
      _libssh2_error(v2, 4294967290, "Unable to allocate memory for setenv packet");
      return v10;
    }

    v6 = v7;
    v15 = (v7 + 1);
    *v7 = 80;
    _libssh2_store_str(&v15, "cancel-tcpip-forward", 0x14uLL);
    v8 = v15;
    v15 = (v15 + 1);
    *v8 = 0;
    _libssh2_store_str(&v15, *(a1 + 32), v4);
    _libssh2_store_u32(&v15, *(a1 + 40));
    *(a1 + 72) = 2;
  }

  v9 = _libssh2_transport_send(v2, v6, v4 + 34, 0, 0);
  v10 = v9;
  if (v9)
  {
    if (v9 == -37)
    {
      _libssh2_error(v2, 4294967259, "Would block sending forward request");
      *(a1 + 80) = v6;
      return v10;
    }

    v10 = 4294967289;
    _libssh2_error(v2, 4294967289, "Unable to send global-request packet for forward listen request");
    *(a1 + 72) = 3;
  }

  (*(v2 + 24))(v6, v2);
  *(a1 + 72) = 3;
LABEL_12:
  v11 = _libssh2_list_first(a1 + 48);
  while (v11)
  {
    v12 = _libssh2_list_next(v11);
    v13 = _libssh2_channel_free(v11);
    v11 = v12;
    if (v13 == -37)
    {
      return 4294967259;
    }
  }

  (*(v2 + 24))(*(a1 + 32), v2);
  _libssh2_list_remove(a1);
  (*(v2 + 24))(a1, v2);
  return v10;
}

uint64_t _libssh2_channel_free(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    _libssh2_channel_free_cold_1();
  }

  if (!*(a1 + 684))
  {
    *(a1 + 684) = 2;
  }

  if (*(a1 + 64) || *(v1 + 596) || (result = _libssh2_channel_close(a1), result != -37))
  {
    *(a1 + 684) = 0;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v1 + 24))(v4, v1);
    }

    v9 = 0;
    v10 = 0;
    _libssh2_htonu32(&v11, *(a1 + 48));
    while ((_libssh2_packet_ask(v1, 94, &v10, &v9, 1, &v11, 4uLL) & 0x80000000) == 0 || (_libssh2_packet_ask(v1, 95, &v10, &v9, 1, &v11, 4uLL) & 0x80000000) == 0)
    {
      (*(v1 + 24))(v10, v1);
    }

    v5 = *(a1 + 24);
    if (v5)
    {
      (*(v1 + 24))(v5, v1);
    }

    _libssh2_list_remove(a1);
    v6 = *(a1 + 136);
    if (v6)
    {
      (*(v1 + 24))(v6, v1);
    }

    v7 = *(a1 + 504);
    if (v7)
    {
      (*(v1 + 24))(v7, v1);
    }

    v8 = *(a1 + 544);
    if (v8)
    {
      (*(v1 + 24))(v8, v1);
    }

    (*(v1 + 24))(a1, v1);
    return 0;
  }

  return result;
}

uint64_t libssh2_channel_forward_cancel(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    result = _libssh2_channel_forward_cancel(a1);
    if (result != -37)
    {
      break;
    }

    v4 = *(a1 + 24);
    if (!*(v4 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v4, v2);
  }

  while (!result);
  return result;
}

uint64_t *libssh2_channel_forward_accept(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = time(0);
  while (1)
  {
    do
    {
      v3 = _libssh2_transport_read(*(a1 + 24));
    }

    while (v3 > 0);
    v4 = v3;
    if (_libssh2_list_first(a1 + 48))
    {
      break;
    }

    if (v4 == -37)
    {
      v5 = 4294967259;
      v6 = "Would block waiting for packet";
    }

    else
    {
      v5 = 4294967273;
      v6 = "Channel not found";
    }

    _libssh2_error(*(a1 + 24), v5, v6);
    v7 = *(a1 + 24);
    if (!*(v7 + 172) || libssh2_session_last_errno(v7) != -37 || _libssh2_wait_socket(*(a1 + 24), v2))
    {
      return 0;
    }
  }

  v8 = _libssh2_list_first(a1 + 48);
  _libssh2_list_remove(v8);
  --*(a1 + 64);
  _libssh2_list_add((v8[13] + 552), v8);
  return v8;
}

uint64_t libssh2_channel_setenv_ex(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5)
{
  if (!a1)
  {
    return 4294967257;
  }

  v10 = time(0);
  v11 = a3;
  v12 = a5;
  v13 = a3 + a5 + 21;
  v14 = &channel_setenv_reply_codes;
  v15 = "Failed getting response for channel-setenv";
  while (1)
  {
    v16 = *(a1 + 104);
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v17 = *(a1 + 128);
    if (v17 != 3)
    {
      if (v17 != 2)
      {
        if (v17)
        {
          goto LABEL_16;
        }

        *(a1 + 144) = v13;
        *(a1 + 160) = 0;
        v18 = (*(v16 + 8))(v13, v16);
        *(a1 + 136) = v18;
        if (!v18)
        {
          v32 = v16;
          v22 = 4294967290;
          v33 = "Unable to allocate memory for setenv packet";
          goto LABEL_21;
        }

        v39 = (v18 + 1);
        *v18 = 98;
        _libssh2_store_u32(&v39, *(a1 + 68));
        _libssh2_store_str(&v39, "env", 3uLL);
        v19 = v39;
        v39 = (v39 + 1);
        *v19 = 1;
        _libssh2_store_str(&v39, a2, v11);
        _libssh2_store_str(&v39, a4, v12);
        *(a1 + 128) = 2;
      }

      v20 = _libssh2_transport_send(v16, *(a1 + 136), *(a1 + 144), 0, 0);
      if (v20)
      {
        if (v20 == -37)
        {
          _libssh2_error(v16, 4294967259, "Would block sending setenv request");
          goto LABEL_22;
        }

        (*(v16 + 24))(*(a1 + 136), v16);
        *(a1 + 136) = 0;
        *(a1 + 128) = 0;
        v32 = v16;
        v22 = 4294967289;
        v33 = "Unable to send channel-request packet for setenv request";
        goto LABEL_21;
      }

      (*(v16 + 24))(*(a1 + 136), v16);
      *(a1 + 136) = 0;
      _libssh2_htonu32((a1 + 152), *(a1 + 48));
      *(a1 + 128) = 3;
    }

    v21 = _libssh2_packet_requirev(v16, v14, &v38, &v37, 1, (a1 + 152), 4uLL, (a1 + 160));
    if (v21 == -37)
    {
      goto LABEL_22;
    }

    v22 = v21;
    if (v21)
    {
      *(a1 + 128) = 0;
      v32 = v16;
      v33 = v15;
      goto LABEL_21;
    }

    if (v37)
    {
      break;
    }

    *(a1 + 128) = 0;
    v32 = v16;
    v22 = 4294967282;
    v33 = "Unexpected packet size";
LABEL_21:
    result = _libssh2_error(v32, v22, v33);
    if (result != -37)
    {
      return result;
    }

LABEL_22:
    v35 = *(a1 + 104);
    if (!*(v35 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v35, v10);
    if (result)
    {
      return result;
    }
  }

  v36 = v10;
  v23 = v13;
  v24 = a2;
  v25 = a4;
  v26 = v12;
  v27 = v11;
  v28 = v14;
  v29 = v15;
  v30 = *v38;
  (*(v16 + 24))();
  v31 = v30 == 99;
  v15 = v29;
  v14 = v28;
  v11 = v27;
  v12 = v26;
  a4 = v25;
  a2 = v24;
  v13 = v23;
  v10 = v36;
  if (!v31)
  {
LABEL_16:
    *(a1 + 128) = 0;
    v32 = v16;
    v22 = 4294967274;
    v33 = "Unable to complete request for channel-setenv";
    goto LABEL_21;
  }

  result = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t libssh2_channel_request_auth_agent(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = *(a1 + 692);
  if (v2)
  {
    result = 4294967273;
  }

  else
  {
    v4 = time(0);
    do
    {
      result = channel_request_auth_agent(a1, "auth-agent-req@openssh.com", 0x1Au);
      if (result != -37)
      {
        break;
      }

      v5 = *(a1 + 104);
      if (!*(v5 + 172))
      {
        result = 4294967259;
        goto LABEL_15;
      }

      result = _libssh2_wait_socket(v5, v4);
    }

    while (!result);
    if (result != -37 && result != 0)
    {
      *(a1 + 692) = 3;
      goto LABEL_17;
    }

LABEL_15:
    v2 = *(a1 + 692);
  }

  if (v2 == 3)
  {
LABEL_17:
    v7 = time(0);
    do
    {
      result = channel_request_auth_agent(a1, "auth-agent-req", 0xEu);
      if (result != -37)
      {
        break;
      }

      v8 = *(a1 + 104);
      if (!*(v8 + 172))
      {
        return 4294967259;
      }

      result = _libssh2_wait_socket(v8, v7);
    }

    while (!result);
    if (result && result != -37)
    {
      v9 = 4;
      goto LABEL_27;
    }
  }

  if (result)
  {
    return result;
  }

  v9 = 0;
LABEL_27:
  *(a1 + 692) = v9;
  return result;
}

uint64_t channel_request_auth_agent(uint64_t a1, const void *a2, unsigned int a3)
{
  v4 = *(a1 + 104);
  v19 = 0;
  v5 = *(a1 + 696);
  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    if (v5)
    {
LABEL_12:
      v14 = "Unable to complete request for auth-agent";
      v15 = v4;
      v10 = 4294967274;
      return _libssh2_error(v15, v10, v14);
    }

    *(a1 + 736) = a3 + 10;
    *(a1 + 752) = 0;
    v19 = (a1 + 701);
    *(a1 + 700) = 98;
    _libssh2_store_u32(&v19, *(a1 + 68));
    _libssh2_store_str(&v19, a2, a3);
    v8 = v19;
    v19 = (v19 + 1);
    *v8 = 1;
    *(a1 + 696) = 2;
  }

  v9 = _libssh2_transport_send(v4, (a1 + 700), *(a1 + 736), 0, 0);
  if (!v9)
  {
    _libssh2_htonu32((a1 + 744), *(a1 + 48));
    *(a1 + 696) = 3;
LABEL_9:
    v17 = 0;
    v18 = 0;
    v12 = _libssh2_packet_requirev(v4, "cd", &v18, &v17, 1, (a1 + 744), 4uLL, (a1 + 752));
    v11 = v12;
    if (v12 == -37)
    {
      return v11;
    }

    if (v12)
    {
      *(a1 + 696) = 0;
      v14 = "Failed to request auth-agent";
      v15 = v4;
      v10 = 4294967282;
      return _libssh2_error(v15, v10, v14);
    }

    v13 = *v18;
    (*(v4 + 24))();
    *(a1 + 696) = 0;
    if (v13 == 99)
    {
      return v11;
    }

    goto LABEL_12;
  }

  v10 = v9;
  if (v9 != -37)
  {
    *(a1 + 696) = 0;
    v14 = "Unable to send auth-agent request";
    v15 = v4;
    return _libssh2_error(v15, v10, v14);
  }

  v11 = 4294967259;
  _libssh2_error(v4, v9, "Would block sending auth-agent request");
  return v11;
}

uint64_t libssh2_channel_request_pty_ex(uint64_t a1, const void *a2, int a3, const void *a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9)
{
  if (!a1)
  {
    return 4294967257;
  }

  LODWORD(v17) = a5;
  LODWORD(v16) = a3;
  v14 = time(0);
  v15 = (v17 + v16);
  v37 = (v15 + 41);
  v16 = v16;
  v17 = v17;
  v36 = v14;
  while (1)
  {
    v18 = *(a1 + 104);
    v41 = 0;
    v19 = *(a1 + 168);
    if (v19 == 3)
    {
      break;
    }

    if (v19 == 2)
    {
      goto LABEL_9;
    }

    if (v19)
    {
      goto LABEL_22;
    }

    if (v15 < 0x101)
    {
      *(a1 + 472) = v37;
      *(a1 + 488) = 0;
      v41 = (a1 + 173);
      *(a1 + 172) = 98;
      _libssh2_store_u32(&v41, *(a1 + 68));
      _libssh2_store_str(&v41, "pty-req", 7uLL);
      v23 = v41;
      v41 = (v41 + 1);
      *v23 = 1;
      _libssh2_store_str(&v41, a2, v16);
      _libssh2_store_u32(&v41, a6);
      _libssh2_store_u32(&v41, a7);
      _libssh2_store_u32(&v41, a8);
      _libssh2_store_u32(&v41, a9);
      _libssh2_store_str(&v41, a4, v17);
      *(a1 + 168) = 2;
LABEL_9:
      v24 = _libssh2_transport_send(v18, (a1 + 172), *(a1 + 472), 0, 0);
      if (v24)
      {
        v21 = v24;
        if (v24 == -37)
        {
          _libssh2_error(v18, v24, "Would block sending pty request");
          goto LABEL_25;
        }

        *(a1 + 168) = 0;
        v20 = v18;
        v22 = "Unable to send pty-request packet";
        goto LABEL_23;
      }

      _libssh2_htonu32((a1 + 480), *(a1 + 48));
      *(a1 + 168) = 3;
      break;
    }

    v20 = v18;
    v21 = 4294967262;
    v22 = "term + mode lengths too large";
LABEL_23:
    result = _libssh2_error(v20, v21, v22);
LABEL_24:
    if (result != -37)
    {
      return result;
    }

LABEL_25:
    v35 = *(a1 + 104);
    if (!*(v35 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v35, v14);
    if (result)
    {
      return result;
    }
  }

  v39 = 0;
  v40 = 0;
  result = _libssh2_packet_requirev(v18, "cd", &v40, &v39, 1, (a1 + 480), 4uLL, (a1 + 488));
  if (result == -37)
  {
    goto LABEL_24;
  }

  if (result)
  {
    v26 = 1;
  }

  else
  {
    v26 = v39 == 0;
  }

  if (v26)
  {
    *(a1 + 168) = 0;
    v20 = v18;
    v21 = 4294967282;
    v22 = "Failed to require the PTY package";
    goto LABEL_23;
  }

  v27 = v15;
  v28 = a2;
  v29 = a4;
  v30 = a6;
  v31 = a7;
  v32 = v17;
  v33 = v16;
  v34 = *v40;
  (*(v18 + 24))();
  *(a1 + 168) = 0;
  v26 = v34 == 99;
  v16 = v33;
  v17 = v32;
  a7 = v31;
  a6 = v30;
  a4 = v29;
  a2 = v28;
  v15 = v27;
  v14 = v36;
  if (!v26)
  {
LABEL_22:
    v20 = v18;
    v21 = 4294967274;
    v22 = "Unable to complete request for channel request-pty";
    goto LABEL_23;
  }

  return 0;
}

uint64_t libssh2_channel_request_pty_size_ex(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (!a1)
  {
    return 4294967257;
  }

  v10 = time(0);
  while (1)
  {
    v11 = *(a1 + 104);
    v17 = 0;
    v12 = *(a1 + 168);
    if (v12 != 2)
    {
      if (v12)
      {
        result = 4294967282;
        goto LABEL_18;
      }

      *(a1 + 472) = 39;
      *(a1 + 488) = 0;
      v17 = (a1 + 173);
      *(a1 + 172) = 98;
      _libssh2_store_u32(&v17, *(a1 + 68));
      _libssh2_store_str(&v17, "window-change", 0xDuLL);
      v13 = v17;
      v17 = (v17 + 1);
      *v13 = 0;
      _libssh2_store_u32(&v17, a2);
      _libssh2_store_u32(&v17, a3);
      _libssh2_store_u32(&v17, a4);
      _libssh2_store_u32(&v17, a5);
      *(a1 + 168) = 2;
    }

    v14 = _libssh2_transport_send(v11, (a1 + 172), *(a1 + 472), 0, 0);
    if (v14 == -37)
    {
      _libssh2_error(v11, v14, "Would block sending window-change request");
      goto LABEL_11;
    }

    if (!v14)
    {
      break;
    }

    *(a1 + 168) = 0;
    result = _libssh2_error(v11, v14, "Unable to send window-change packet");
    if (result != -37)
    {
      return result;
    }

LABEL_11:
    v16 = *(a1 + 104);
    if (!*(v16 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v16, v10);
    if (result)
    {
      return result;
    }
  }

  _libssh2_htonu32((a1 + 480), *(a1 + 48));
  result = 0;
LABEL_18:
  *(a1 + 168) = 0;
  return result;
}

uint64_t libssh2_channel_x11_req_ex(uint64_t a1, int a2, const char *a3, const char *a4, unsigned int a5)
{
  v35[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = time(0);
    v11 = "MIT-MAGIC-COOKIE-1";
    if (a3)
    {
      v11 = a3;
    }

    v32 = v11;
    v31 = a5;
    while (1)
    {
      v12 = *(a1 + 104);
      if (a3)
      {
        v13 = strlen(a3);
        if (a4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = 18;
        if (a4)
        {
LABEL_7:
          v14 = strlen(a4);
          goto LABEL_10;
        }
      }

      v14 = 32;
LABEL_10:
      __dst = 0;
      v15 = *(a1 + 496);
      switch(v15)
      {
        case 3:
          goto LABEL_21;
        case 2:
          goto LABEL_17;
        case 0:
          *(a1 + 512) = v13 + v14 + 30;
          *(a1 + 528) = 0;
          v16 = (*(v12 + 8))();
          *(a1 + 504) = v16;
          if (!v16)
          {
            v25 = v12;
            v22 = 4294967290;
            v26 = "Unable to allocate memory for pty-request";
            goto LABEL_31;
          }

          __dst = v16 + 1;
          *v16 = 98;
          _libssh2_store_u32(&__dst, *(a1 + 68));
          _libssh2_store_str(&__dst, "x11-req", 7uLL);
          v17 = __dst;
          __dst = __dst + 1;
          *v17 = 1;
          v18 = __dst;
          __dst = __dst + 1;
          *v18 = a2 != 0;
          _libssh2_store_str(&__dst, v32, v13);
          _libssh2_store_u32(&__dst, v14);
          if (a4)
          {
            memcpy(__dst, a4, v14);
          }

          else
          {
            if (_libssh2_openssl_random(v35, 0x10uLL))
            {
              v25 = v12;
              v22 = 4294967247;
              v26 = "Unable to get random bytes for x11-req cookie";
              goto LABEL_31;
            }

            v28 = 0;
            for (i = 0; i != 16; ++i)
            {
              snprintf(__dst + v28, 3uLL, "%02X", *(v35 + i));
              v28 += 2;
            }

            a5 = v31;
          }

          __dst = __dst + v14;
          _libssh2_store_u32(&__dst, a5);
          *(a1 + 496) = 2;
LABEL_17:
          v19 = _libssh2_transport_send(v12, *(a1 + 504), *(a1 + 512), 0, 0);
          if (v19)
          {
            v20 = v19;
            if (v19 == -37)
            {
              _libssh2_error(v12, 4294967259, "Would block sending X11-req packet");
              goto LABEL_33;
            }

            (*(v12 + 24))(*(a1 + 504), v12);
            *(a1 + 504) = 0;
            *(a1 + 496) = 0;
            v25 = v12;
            v22 = v20;
            v26 = "Unable to send x11-req packet";
            goto LABEL_31;
          }

          (*(v12 + 24))(*(a1 + 504), v12);
          *(a1 + 504) = 0;
          _libssh2_htonu32((a1 + 520), *(a1 + 48));
          *(a1 + 496) = 3;
LABEL_21:
          v35[0] = 0;
          v33 = 0;
          result = _libssh2_packet_requirev(v12, "cd", &v33, v35, 1, (a1 + 520), 4uLL, (a1 + 528));
          if (result == -37)
          {
            goto LABEL_32;
          }

          v22 = result;
          if (result || !v35[0])
          {
            *(a1 + 496) = 0;
            v25 = v12;
            v26 = "waiting for x11-req response packet";
            goto LABEL_31;
          }

          v23 = *v33;
          (*(v12 + 24))();
          *(a1 + 496) = 0;
          v24 = v23 == 99;
          a5 = v31;
          if (v24)
          {
            result = 0;
            goto LABEL_41;
          }

          break;
      }

      v25 = v12;
      v22 = 4294967274;
      v26 = "Unable to complete request for channel x11-req";
LABEL_31:
      result = _libssh2_error(v25, v22, v26);
LABEL_32:
      if (result != -37)
      {
        goto LABEL_41;
      }

LABEL_33:
      v27 = *(a1 + 104);
      if (!*(v27 + 172))
      {
        result = 4294967259;
        goto LABEL_41;
      }

      result = _libssh2_wait_socket(v27, v10);
      if (result)
      {
        goto LABEL_41;
      }
    }
  }

  result = 4294967257;
LABEL_41:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _libssh2_channel_process_startup(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v6 = *(a1 + 104);
  v28 = 0;
  v7 = *(a1 + 536);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      goto LABEL_18;
    }

    if (v7 != 17)
    {
LABEL_24:
      v23 = "Unable to complete request for channel-process-startup";
      v24 = v6;
      v21 = 4294967274;
      return _libssh2_error(v24, v21, v23);
    }

    v10 = "Channel can not be reused";
    v11 = v6;
    v12 = 4294967257;
  }

  else
  {
    if (v7)
    {
      if (v7 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    *(a1 + 552) = a3 + 10;
    *(a1 + 568) = 0;
    if (a4)
    {
      *(a1 + 552) = a3 + 14;
    }

    v15 = (*(v6 + 8))();
    *(a1 + 544) = v15;
    if (v15)
    {
      v28 = (v15 + 1);
      *v15 = 98;
      _libssh2_store_u32(&v28, *(a1 + 68));
      _libssh2_store_str(&v28, a2, a3);
      v16 = v28;
      v28 = (v28 + 1);
      *v16 = 1;
      if (a4)
      {
        _libssh2_store_u32(&v28, a5);
      }

      *(a1 + 536) = 2;
LABEL_14:
      v17 = _libssh2_transport_send(v6, *(a1 + 544), *(a1 + 552), a4, a5);
      if (v17)
      {
        v18 = v17;
        if (v17 != -37)
        {
          (*(v6 + 24))(*(a1 + 544), v6);
          *(a1 + 544) = 0;
          *(a1 + 536) = 17;
          v23 = "Unable to send channel request";
          v24 = v6;
          v21 = v18;
          return _libssh2_error(v24, v21, v23);
        }

        v19 = 4294967259;
        _libssh2_error(v6, 4294967259, "Would block sending channel request");
        return v19;
      }

      (*(v6 + 24))(*(a1 + 544), v6);
      *(a1 + 544) = 0;
      _libssh2_htonu32((a1 + 560), *(a1 + 48));
      *(a1 + 536) = 3;
LABEL_18:
      v26 = 0;
      v27 = 0;
      v20 = _libssh2_packet_requirev(v6, "cd", &v27, &v26, 1, (a1 + 560), 4uLL, (a1 + 568));
      if (v20 == -37)
      {
        return 4294967259;
      }

      v21 = v20;
      if (v20 || !v26)
      {
        *(a1 + 536) = 17;
        v23 = "Failed waiting for channel success";
        v24 = v6;
        return _libssh2_error(v24, v21, v23);
      }

      v22 = *v27;
      (*(v6 + 24))();
      *(a1 + 536) = 17;
      if (v22 != 99)
      {
        goto LABEL_24;
      }

      return 0;
    }

    v10 = "Unable to allocate memory for channel-process request";
    v11 = v6;
    v12 = 4294967290;
  }

  return _libssh2_error(v11, v12, v10);
}

uint64_t libssh2_channel_process_startup(uint64_t a1, const void *a2, unsigned int a3, const void *a4, unsigned int a5)
{
  if (!a1)
  {
    return 4294967257;
  }

  v10 = time(0);
  do
  {
    result = _libssh2_channel_process_startup(a1, a2, a3, a4, a5);
    if (result != -37)
    {
      break;
    }

    v12 = *(a1 + 104);
    if (!*(v12 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v12, v10);
  }

  while (!result);
  return result;
}

uint64_t libssh2_channel_set_blocking(uint64_t result, int a2)
{
  if (result)
  {
    return _libssh2_session_set_blocking(*(result + 104), a2);
  }

  return result;
}

uint64_t _libssh2_channel_flush(uint64_t a1, int a2)
{
  if (!*(a1 + 576))
  {
    v4 = _libssh2_list_first(*(a1 + 104) + 536);
    *(a1 + 584) = 0u;
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = _libssh2_list_next(v5);
        if (v5[4] <= 4)
        {
          goto LABEL_13;
        }

        v7 = v5[3];
        v8 = *v7;
        if ((v8 & 0xFE) != 0x5E || _libssh2_ntohu32((v7 + 1)) != *(a1 + 48))
        {
          goto LABEL_13;
        }

        if (v8 == 94)
        {
          v9 = 0;
        }

        else
        {
          if (v5[4] < 9)
          {
            *(a1 + 576) = 0;
            v15 = *(a1 + 104);

            return _libssh2_error(v15, 4294967282, "Unexpected packet length");
          }

          v9 = _libssh2_ntohu32((v5[3] + 5));
        }

        if (a2 != -2)
        {
          if (v8 == 95)
          {
            if (a2 != -1 && v9 != a2)
            {
              goto LABEL_13;
            }
          }

          else if (a2 || v8 != 94)
          {
            goto LABEL_13;
          }
        }

        v10 = v5[4];
        v11 = v5[3];
        v12 = v10 - v5[5];
        *(a1 + 584) = v10 + *(a1 + 584) - 13;
        *(a1 + 592) += v12;
        (*(*(a1 + 104) + 24))(v11);
        _libssh2_list_remove(v5);
        (*(*(a1 + 104) + 24))(v5);
LABEL_13:
        v5 = v6;
      }

      while (v6);
    }

    *(a1 + 576) = 2;
  }

  result = *(a1 + 592);
  *(a1 + 96) -= result;
  *(a1 + 76) -= result;
  v14 = *(a1 + 584);
  if (v14)
  {
    if (_libssh2_channel_receive_window_adjust(a1, v14, 1, 0) == -37)
    {
      return 4294967259;
    }

    result = *(a1 + 592);
  }

  *(a1 + 576) = 0;
  return result;
}

uint64_t _libssh2_channel_receive_window_adjust(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v4 = a2;
  if (a4)
  {
    *a4 = *(a1 + 76);
  }

  if (!*(a1 + 600))
  {
    if (!a3)
    {
      v8 = *(a1 + 88) + a2;
      if (v8 <= 0x3FF)
      {
        v7 = 0;
        *(a1 + 88) = v8;
        return v7;
      }
    }

    v9 = *(a1 + 88);
    if (!(a2 | v9))
    {
      return 0;
    }

    v4 = v9 + a2;
    *(a1 + 88) = 0;
    *(a1 + 604) = 93;
    _libssh2_htonu32((a1 + 605), *(a1 + 68));
    _libssh2_htonu32((a1 + 609), v4);
    *(a1 + 600) = 2;
  }

  v6 = _libssh2_transport_send(*(a1 + 104), (a1 + 604), 9uLL, 0, 0);
  if (!v6)
  {
    v7 = 0;
    *(a1 + 76) += v4;
    *(a1 + 600) = 0;
    return v7;
  }

  if (v6 == -37)
  {
    v7 = 4294967259;
    _libssh2_error(*(a1 + 104), 4294967259, "Would block sending window adjust");
    return v7;
  }

  *(a1 + 88) = v4;
  v11 = *(a1 + 104);

  return _libssh2_error(v11, 4294967289, "Unable to send transfer-window adjustment packet, deferring");
}

uint64_t libssh2_channel_flush_ex(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967257;
  }

  v4 = time(0);
  do
  {
    result = _libssh2_channel_flush(a1, a2);
    if (result != -37)
    {
      break;
    }

    v6 = *(a1 + 104);
    if (!*(v6 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v6, v4);
  }

  while (!result);
  return result;
}

uint64_t libssh2_channel_get_exit_status(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t libssh2_channel_get_exit_signal(uint64_t a1, void *a2, size_t *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (!a1)
  {
    return 0;
  }

  v14 = *(a1 + 40);
  if (!v14)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (!a3)
    {
      goto LABEL_13;
    }

    v17 = 0;
LABEL_12:
    *a3 = v17;
LABEL_13:
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = 0;
    }

    return 0;
  }

  v15 = *(a1 + 104);
  v16 = strlen(v14);
  v17 = v16;
  if (!a2)
  {
LABEL_6:
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = (*(v15 + 8))(v16 + 1, v15);
  *a2 = v18;
  if (v18)
  {
    memcpy(v18, *(a1 + 40), v17);
    *(*a2 + v17) = 0;
    goto LABEL_6;
  }

  return _libssh2_error(v15, 4294967290, "Unable to allocate memory for signal name");
}

uint64_t libssh2_channel_receive_window_adjust(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return -39;
  }

  v9 = 0;
  v6 = time(0);
  while (1)
  {
    LODWORD(result) = _libssh2_channel_receive_window_adjust(a1, a2, a3, &v9);
    if (result != -37)
    {
      break;
    }

    v8 = *(a1 + 104);
    if (!*(v8 + 172))
    {
      LODWORD(result) = -37;
      return result;
    }

    LODWORD(result) = _libssh2_wait_socket(v8, v6);
    if (result)
    {
      return result;
    }
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

uint64_t libssh2_channel_receive_window_adjust2(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  if (!a1)
  {
    return 4294967257;
  }

  v8 = time(0);
  do
  {
    result = _libssh2_channel_receive_window_adjust(a1, a2, a3, a4);
    if (result != -37)
    {
      break;
    }

    v10 = *(a1 + 104);
    if (!*(v10 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v10, v8);
  }

  while (!result);
  return result;
}

uint64_t _libssh2_channel_extended_data(uint64_t a1, char a2)
{
  if (!*(a1 + 688))
  {
    *(a1 + 86) = a2;
  }

  *(a1 + 688) = 0;
  return 0;
}

uint64_t libssh2_channel_handle_extended_data2(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967257;
  }

  time(0);
  if (!*(a1 + 688))
  {
    *(a1 + 86) = a2;
  }

  result = 0;
  *(a1 + 688) = 0;
  return result;
}

time_t libssh2_channel_handle_extended_data(time_t result, char a2)
{
  if (result)
  {
    v3 = result;
    result = time(0);
    if (!*(v3 + 688))
    {
      *(v3 + 86) = a2;
    }

    *(v3 + 688) = 0;
  }

  return result;
}

unint64_t _libssh2_channel_read(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 104);
  if (*(a1 + 616) == 11)
  {
    LODWORD(v10) = *(a1 + 72);
    LODWORD(v9) = *(a1 + 76);
LABEL_4:
    v11 = v10 + a4 - v9;
    if (v11 <= 0x400)
    {
      v12 = 1024;
    }

    else
    {
      v12 = v11;
    }

    *(a1 + 616) = 11;
    v13 = _libssh2_channel_receive_window_adjust(a1, v12, 0, 0);
    if (v13)
    {
      return v13;
    }

    *(a1 + 616) = 0;
    goto LABEL_9;
  }

  v10 = *(a1 + 72);
  v9 = *(a1 + 76);
  if (3 * (v10 >> 2) + a4 > v9)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_9:
    v14 = _libssh2_transport_read(v8);
  }

  while (v14 > 0);
  v15 = v14;
  if (v14 != -37 && v14)
  {
    v28 = "transport read";
    v29 = v8;
    v30 = v15;
    return _libssh2_error(v29, v30, v28);
  }

  v16 = _libssh2_list_first(v8 + 536);
  if (!v16 || !a4)
  {
    goto LABEL_38;
  }

  v17 = v16;
  v33 = a3;
  v18 = 0;
  v32 = a2;
  do
  {
    v19 = _libssh2_list_next(v17);
    if (v17[4] < 5)
    {
      goto LABEL_34;
    }

    v20 = _libssh2_ntohu32((v17[3] + 1));
    *(a1 + 620) = v20;
    v21 = v17[3];
    v22 = *v21;
    if (a2)
    {
      if (v22 != 95 || *(a1 + 48) != v20 || v17[4] < 9 || _libssh2_ntohu32((v21 + 5)) != a2)
      {
        goto LABEL_34;
      }

      v21 = v17[3];
    }

    else if (v22 == 95)
    {
      if (*(a1 + 48) != v20 || *(a1 + 86) != 2)
      {
        goto LABEL_34;
      }
    }

    else if (v22 != 94 || *(a1 + 48) != v20)
    {
      goto LABEL_34;
    }

    v23 = a4 - v18;
    v24 = v17[4];
    v25 = v17[5];
    v26 = v24 - v25;
    if (a4 - v18 >= v24 - v25)
    {
      v27 = v24 - v25;
    }

    else
    {
      v27 = a4 - v18;
    }

    memcpy((v33 + v18), &v21[v25], v27);
    v17[5] += v27;
    v18 += v27;
    if (v23 >= v26)
    {
      _libssh2_list_remove(v17);
      (*(v8 + 24))(v17[3], v8);
      (*(v8 + 24))(v17, v8);
    }

    a2 = v32;
LABEL_34:
    if (!v19)
    {
      break;
    }

    v17 = v19;
  }

  while (v18 < a4);
  if (v18)
  {
    *(a1 + 96) -= v18;
    *(a1 + 76) -= v18;
    return v18;
  }

LABEL_38:
  if (*(a1 + 85))
  {
    return 0;
  }

  v18 = 0;
  if (v15 == -37 && !*(a1 + 84))
  {
    v28 = "would block";
    v29 = v8;
    v30 = 4294967259;
    return _libssh2_error(v29, v30, v28);
  }

  return v18;
}

unint64_t libssh2_channel_read_ex(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return -39;
  }

  if (*(a1 + 76) < a4)
  {
    v8 = time(0);
    do
    {
      if (_libssh2_channel_receive_window_adjust(a1, a4, 1, 0) != -37)
      {
        break;
      }

      v9 = *(a1 + 104);
      if (!*(v9 + 172))
      {
        break;
      }
    }

    while (!_libssh2_wait_socket(v9, v8));
  }

  v10 = time(0);
  while (1)
  {
    result = _libssh2_channel_read(a1, a2, a3, a4);
    if (result != -37)
    {
      break;
    }

    v12 = *(a1 + 104);
    if (!*(v12 + 172))
    {
      return -37;
    }

    LODWORD(result) = _libssh2_wait_socket(v12, v10);
    if (result)
    {
      return result;
    }
  }

  return result;
}

uint64_t libssh2_channel_window_read_ex(uint64_t result, uint64_t *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    if (a3)
    {
      *a3 = *(result + 72);
    }

    if (a2)
    {
      v5 = _libssh2_list_first(*(result + 104) + 536);
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        do
        {
          v8 = _libssh2_list_next(v6);
          if (v6[4] > 4uLL)
          {
            v9 = v6[3];
            if ((*v9 & 0xFE) == 0x5E && _libssh2_ntohu32((v9 + 1)) == *(v4 + 48))
            {
              v7 = v6[4] + v7 - v6[5];
            }
          }

          v6 = v8;
        }

        while (v8);
      }

      else
      {
        v7 = 0;
      }

      *a2 = v7;
    }

    return *(v4 + 76);
  }

  return result;
}

uint64_t _libssh2_channel_packet_data_len(uint64_t a1, int a2)
{
  result = _libssh2_list_first(*(a1 + 104) + 536);
  if (result)
  {
    v5 = result;
    while (1)
    {
      v6 = _libssh2_list_next(v5);
      if (v5[4] >= 5uLL)
      {
        v7 = _libssh2_ntohu32((v5[3] + 1));
        v8 = v5[3];
        v9 = *v8;
        if (a2)
        {
          if (v9 == 95 && *(a1 + 48) == v7 && v5[4] >= 9uLL && _libssh2_ntohu32((v8 + 5)) == a2)
          {
            return v5[4] - v5[5];
          }
        }

        else if (v9 == 95)
        {
          if (*(a1 + 48) == v7 && *(a1 + 86) == 2)
          {
            return v5[4] - v5[5];
          }
        }

        else if (v9 == 94 && *(a1 + 48) == v7)
        {
          return v5[4] - v5[5];
        }
      }

      v5 = v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _libssh2_channel_write(uint64_t a1, unsigned int a2, const void *a3, unint64_t a4)
{
  v6 = *(a1 + 104);
  if (a4 >= 0x7FBC)
  {
    v7 = 32700;
  }

  else
  {
    v7 = a4;
  }

  v8 = *(a1 + 624);
  if (v8)
  {
    if (v8 != 2)
    {
      return -34;
    }

    v9 = *(a1 + 648);
    goto LABEL_7;
  }

  if (*(a1 + 64))
  {
    v12 = "We have already closed this channel";
    v13 = *(a1 + 104);
    v11 = 4294967270;
    return _libssh2_error(v13, v11, v12);
  }

  if (*(a1 + 65))
  {
    v12 = "EOF has already been received, data might be ignored";
    v13 = *(a1 + 104);
    v11 = 4294967269;
    return _libssh2_error(v13, v11, v12);
  }

  v16 = a1 + 628;
  do
  {
    v17 = _libssh2_transport_read(v6);
  }

  while (v17 > 0);
  v11 = v17;
  if (v17 != -37 && v17)
  {
    v13 = *(a1 + 104);
    v12 = "Failure while draining incoming flow";
    return _libssh2_error(v13, v11, v12);
  }

  if (*(a1 + 56))
  {
    *(a1 + 656) = v7;
    if (a2)
    {
      v18 = 95;
    }

    else
    {
      v18 = 94;
    }

    v22 = (a1 + 629);
    *(a1 + 628) = v18;
    _libssh2_store_u32(&v22, *(a1 + 68));
    if (a2)
    {
      _libssh2_store_u32(&v22, a2);
    }

    v19 = *(a1 + 656);
    v20 = *(a1 + 56);
    if (v19 > v20)
    {
      *(a1 + 656) = v20;
      v19 = v20;
    }

    v21 = *(a1 + 60);
    if (v19 > v21)
    {
      *(a1 + 656) = v21;
      LODWORD(v19) = v21;
    }

    _libssh2_store_u32(&v22, v19);
    v9 = v22 - v16;
    *(a1 + 648) = v22 - v16;
    *(a1 + 624) = 2;
LABEL_7:
    v10 = _libssh2_transport_send(v6, (a1 + 628), v9, a3, *(a1 + 656));
    if (!v10)
    {
      result = *(a1 + 656);
      *(a1 + 56) -= result;
      *(a1 + 624) = 0;
      return result;
    }

    v11 = v10;
    if (v10 != -37)
    {
      *(a1 + 624) = 0;
    }

    v12 = "Unable to send channel data";
    v13 = v6;
    return _libssh2_error(v13, v11, v12);
  }

  *(v6 + 600) = 1;
  if (v17 == -37)
  {
    return -37;
  }

  else
  {
    return 0;
  }
}

uint64_t libssh2_channel_write_ex(uint64_t a1, unsigned int a2, const void *a3, unint64_t a4)
{
  if (!a1)
  {
    return -39;
  }

  v8 = time(0);
  while (1)
  {
    result = _libssh2_channel_write(a1, a2, a3, a4);
    if (result != -37)
    {
      break;
    }

    v10 = *(a1 + 104);
    if (!*(v10 + 172))
    {
      return -37;
    }

    LODWORD(result) = _libssh2_wait_socket(v10, v8);
    if (result)
    {
      return result;
    }
  }

  return result;
}

uint64_t libssh2_channel_send_eof(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    result = channel_send_eof(a1);
    if (result != -37)
    {
      break;
    }

    v4 = *(a1 + 104);
    if (!*(v4 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v4, v2);
  }

  while (!result);
  return result;
}

uint64_t channel_send_eof(uint64_t a1)
{
  v2 = *(a1 + 104);
  __src = 96;
  _libssh2_htonu32(&v7, *(a1 + 68));
  v3 = _libssh2_transport_send(v2, &__src, 5uLL, 0, 0);
  if (v3)
  {
    if (v3 == -37)
    {
      v4 = 4294967259;
      _libssh2_error(v2, 4294967259, "Would block sending EOF");
    }

    else
    {
      return _libssh2_error(v2, 4294967289, "Unable to send EOF on channel");
    }
  }

  else
  {
    v4 = 0;
    *(a1 + 65) = 1;
  }

  return v4;
}

uint64_t libssh2_channel_eof(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = _libssh2_list_first(*(a1 + 104) + 536);
  if (!v2)
  {
    return *(a1 + 85);
  }

  v3 = v2;
  while (1)
  {
    v4 = _libssh2_list_next(v3);
    if (*(v3 + 32) > 4uLL)
    {
      v5 = *(v3 + 24);
      if ((*v5 & 0xFE) == 0x5E)
      {
        v6 = *(a1 + 48);
        if (v6 == _libssh2_ntohu32((v5 + 1)))
        {
          break;
        }
      }
    }

    v3 = v4;
    if (!v4)
    {
      return *(a1 + 85);
    }
  }

  return 0;
}

uint64_t libssh2_channel_wait_eof(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  while (2)
  {
    if (!*(a1 + 676))
    {
      *(a1 + 676) = 2;
    }

    v3 = *(a1 + 104);
    while (1)
    {
      if (*(a1 + 85))
      {
        result = 0;
        *(a1 + 676) = 0;
        return result;
      }

      if (*(a1 + 96) == *(a1 + 76) && *(v3 + 172))
      {
        break;
      }

      v4 = _libssh2_transport_read(v3);
      if (v4 == -37)
      {
        goto LABEL_14;
      }

      v5 = v4;
      if ((v4 & 0x80000000) != 0)
      {
        *(a1 + 676) = 0;
        v6 = v3;
        v7 = "_libssh2_transport_read() bailed out!";
        goto LABEL_13;
      }
    }

    v6 = v3;
    v5 = 4294967249;
    v7 = "Receiving channel window has been exhausted";
LABEL_13:
    result = _libssh2_error(v6, v5, v7);
    if (result != -37)
    {
      return result;
    }

LABEL_14:
    v9 = *(a1 + 104);
    if (!*(v9 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v9, v2);
    if (!result)
    {
      continue;
    }

    return result;
  }
}

uint64_t _libssh2_channel_close(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = 0;
    *(a1 + 664) = 0;
    return v2;
  }

  v4 = *(a1 + 104);
  if (*(a1 + 65))
  {
    LODWORD(v2) = 0;
  }

  else
  {
    v7 = channel_send_eof(a1);
    v2 = v7;
    if (v7 == -37)
    {
      return v2;
    }

    if (v7)
    {
      _libssh2_error(v4, v7, "Unable to send EOF, but closing channel anyway");
    }
  }

  v5 = *(a1 + 664);
  if (v5 != 2)
  {
    if (v5)
    {
      goto LABEL_17;
    }

    *(a1 + 668) = 97;
    _libssh2_htonu32((a1 + 669), *(a1 + 68));
    *(a1 + 664) = 2;
  }

  v6 = _libssh2_transport_send(v4, (a1 + 668), 5uLL, 0, 0);
  v2 = v6;
  if (v6)
  {
    if (v6 == -37)
    {
      _libssh2_error(v4, 4294967259, "Would block sending close-channel");
      return v2;
    }

    _libssh2_error(v4, v6, "Unable to send close-channel request, but closing anyway");
    v5 = *(a1 + 664);
LABEL_17:
    if (v5 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  *(a1 + 664) = 3;
LABEL_18:
  if (!*(a1 + 84) && !v2)
  {
    while (*(v4 + 596) != -1)
    {
      v8 = _libssh2_transport_read(v4);
      if (*(a1 + 84))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 0;
      }

      if (!v9)
      {
        LODWORD(v2) = v8;
        goto LABEL_26;
      }
    }

    LODWORD(v2) = 0;
    goto LABEL_29;
  }

LABEL_26:
  if (v2 != -37)
  {
LABEL_29:
    *(a1 + 64) = 1;
    v10 = *(a1 + 120);
    if (v10)
    {
      v10(v4, v4, a1, a1 + 112);
    }

    *(a1 + 664) = 0;
  }

  return v2 & (v2 >> 31);
}

uint64_t libssh2_channel_close(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    result = _libssh2_channel_close(a1);
    if (result != -37)
    {
      break;
    }

    v4 = *(a1 + 104);
    if (!*(v4 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v4, v2);
  }

  while (!result);
  return result;
}

uint64_t libssh2_channel_wait_closed(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  while (1)
  {
    v3 = *(a1 + 104);
    if (*(a1 + 85))
    {
      if (!*(a1 + 680))
      {
        *(a1 + 680) = 2;
      }

      if (*(a1 + 84))
      {
        goto LABEL_20;
      }

      do
      {
        result = _libssh2_transport_read(v3);
        if (*(a1 + 84))
        {
          v5 = 1;
        }

        else
        {
          v5 = result <= 0;
        }
      }

      while (!v5);
      if ((result & 0x80000000) == 0)
      {
LABEL_20:
        result = 0;
        *(a1 + 680) = 0;
        return result;
      }
    }

    else
    {
      result = _libssh2_error(*(a1 + 104), 4294967262, "libssh2_channel_wait_closed() invoked when channel is not in EOF state");
    }

    if (result != -37)
    {
      return result;
    }

    v6 = *(a1 + 104);
    if (!*(v6 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v6, v2);
    if (result)
    {
      return result;
    }
  }
}

uint64_t libssh2_channel_free(uint64_t a1)
{
  if (!a1)
  {
    return 4294967257;
  }

  v2 = time(0);
  do
  {
    result = _libssh2_channel_free(a1);
    if (result != -37)
    {
      break;
    }

    v4 = *(a1 + 104);
    if (!*(v4 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v4, v2);
  }

  while (!result);
  return result;
}

uint64_t libssh2_channel_window_write_ex(uint64_t result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 52);
    }

    return *(result + 56);
  }

  return result;
}

uint64_t libssh2_channel_signal_ex(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 4294967257;
  }

  v6 = time(0);
  while (1)
  {
    v7 = *(a1 + 104);
    v8 = *(a1 + 760);
    if (v8 == 2)
    {
      break;
    }

    if (v8)
    {
      result = 4294967282;
      goto LABEL_20;
    }

    *(a1 + 776) = a3 + 20;
    v9 = (*(v7 + 8))(a3 + 20, v7);
    *(a1 + 768) = v9;
    if (v9)
    {
      v18 = (v9 + 1);
      *v9 = 98;
      _libssh2_store_u32(&v18, *(a1 + 68));
      _libssh2_store_str(&v18, "signal", 6uLL);
      v10 = v18;
      v18 = (v18 + 1);
      *v10 = 0;
      _libssh2_store_str(&v18, a2, a3);
      *(a1 + 760) = 2;
      break;
    }

    v13 = v7;
    v14 = 4294967290;
    v15 = "Unable to allocate memory for signal request";
LABEL_12:
    result = _libssh2_error(v13, v14, v15);
    if (result != -37)
    {
      return result;
    }

LABEL_13:
    v17 = *(a1 + 104);
    if (!*(v17 + 172))
    {
      return 4294967259;
    }

    result = _libssh2_wait_socket(v17, v6);
    if (result)
    {
      return result;
    }
  }

  v11 = _libssh2_transport_send(v7, *(a1 + 768), *(a1 + 776), 0, 0);
  if (v11 == -37)
  {
    _libssh2_error(v7, 4294967259, "Would block sending signal request");
    goto LABEL_13;
  }

  v12 = v11;
  if (v11)
  {
    (*(v7 + 24))(*(a1 + 768), v7);
    *(a1 + 760) = 0;
    v13 = v7;
    v14 = v12;
    v15 = "Unable to send signal packet";
    goto LABEL_12;
  }

  (*(v7 + 24))(*(a1 + 768), v7);
  result = 0;
LABEL_20:
  *(a1 + 760) = 0;
  return result;
}

uint64_t *libssh2_knownhost_init(uint64_t a1)
{
  v2 = (*(a1 + 8))(24, a1);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    _libssh2_list_init(v2 + 1);
  }

  else
  {
    _libssh2_error(a1, 4294967290, "Unable to allocate memory for known-hosts collection");
  }

  return v3;
}

uint64_t knownhost_add(uint64_t a1, char *__s, char *a3, const void *a4, size_t a5, char *a6, size_t a7, const void *a8, uint64_t a9, int a10, void *a11)
{
  v17 = strlen(__s);
  v18 = *a1;
  if ((a10 & 0x3C0000) != 0)
  {
    v19 = _libssh2_calloc(v18, 0x90uLL);
    if (v19)
    {
      v20 = v19;
      v41 = 0;
      v42 = 0;
      v19[11] = a10;
      if (a10 != 3)
      {
        if (a10 == 2)
        {
          v26 = _libssh2_base64_decode(*a1, &v42, &v41, __s, v17);
          if (v26)
          {
            goto LABEL_45;
          }

          v27 = v41;
          *(v20 + 3) = v42;
          *(v20 + 4) = v27;
          v28 = strlen(a3);
          v26 = _libssh2_base64_decode(*a1, &v42, &v41, a3, v28);
          if (v26)
          {
            goto LABEL_45;
          }

          v17 = v41;
          *(v20 + 6) = v42;
          v22 = 14;
          goto LABEL_8;
        }

        if (a10 != 1)
        {
          v29 = *a1;
          v30 = "Unknown host name type";
          v31 = 4294967263;
LABEL_44:
          v26 = _libssh2_error(v29, v31, v30);
LABEL_45:
          v37 = v26;
          free_host(*a1, v20);
          return v37;
        }
      }

      v21 = (*(*a1 + 8))(v17 + 1);
      *(v20 + 3) = v21;
      if (!v21)
      {
        v29 = *a1;
        v30 = "Unable to allocate memory for host name";
        goto LABEL_43;
      }

      memcpy(v21, __s, v17 + 1);
      v22 = 8;
LABEL_8:
      *&v20[v22] = v17;
      if ((a10 & 0x20000) != 0)
      {
        if (!a7)
        {
          a7 = strlen(a6);
        }

        v32 = (*(*a1 + 8))(a7 + 1);
        *(v20 + 8) = v32;
        if (!v32)
        {
          v29 = *a1;
          v30 = "Unable to allocate memory for key";
          goto LABEL_43;
        }

        memcpy(v32, a6, a7 + 1);
        *(*(v20 + 8) + a7) = 0;
        if (!a4)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (!_libssh2_base64_encode(*a1, a6, a7, &v42))
        {
          v29 = *a1;
          v30 = "Unable to allocate memory for base64-encoded key";
          goto LABEL_43;
        }

        *(v20 + 8) = v42;
        if (!a4)
        {
          goto LABEL_29;
        }
      }

      if ((a10 & 0x3C0000) == 0x3C0000)
      {
        v33 = (*(*a1 + 8))(a5 + 1);
        *(v20 + 9) = v33;
        if (v33)
        {
          memcpy(v33, a4, a5);
          *(*(v20 + 9) + a5) = 0;
          *(v20 + 10) = a5;
          goto LABEL_29;
        }

        v29 = *a1;
        v30 = "Unable to allocate memory for key type";
LABEL_43:
        v31 = 4294967290;
        goto LABEL_44;
      }

LABEL_29:
      if (!a8)
      {
        *(v20 + 11) = 0;
LABEL_33:
        _libssh2_list_add((a1 + 8), v20);
        if (!a11)
        {
          return 0;
        }

        v20[26] = -559035650;
        *(v20 + 14) = v20;
        v35 = v20[11];
        if (v35 == 1)
        {
          v36 = *(v20 + 3);
        }

        else
        {
          v36 = 0;
        }

        v37 = 0;
        v38 = *(v20 + 8);
        *(v20 + 15) = v36;
        *(v20 + 16) = v38;
        v20[34] = v35;
        *a11 = v20 + 26;
        return v37;
      }

      v34 = (*(*a1 + 8))(a9 + 1);
      *(v20 + 11) = v34;
      if (v34)
      {
        memcpy(v34, a8, a9 + 1);
        *(*(v20 + 11) + a9) = 0;
        *(v20 + 12) = a9;
        goto LABEL_33;
      }

      v29 = *a1;
      v30 = "Unable to allocate memory for comment";
      goto LABEL_43;
    }

    v18 = *a1;
    v23 = "Unable to allocate memory for known host entry";
    v24 = 4294967290;
  }

  else
  {
    v23 = "No key type set";
    v24 = 4294967262;
  }

  return _libssh2_error(v18, v24, v23);
}

uint64_t knownhost_check(uint64_t *a1, const char *a2, int a3, char *a4, size_t a5, int a6, uint64_t *a7)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v49 = 0;
  if (a6 == 2)
  {
    v8 = 1;
    goto LABEL_65;
  }

  if (a3 < 0)
  {
    v46 = a7;
    v15 = 1;
    v14 = a2;
    if ((a6 & 0x20000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v14 = __str;
  if (snprintf(__str, 0x10EuLL, "[%s]:%d", a2, a3) >= 0x10E)
  {
    v41 = *a1;
    v42 = "Known-host write buffer too small";
    v43 = 4294967258;
    goto LABEL_55;
  }

  v46 = a7;
  v15 = 2;
  if ((a6 & 0x20000) == 0)
  {
LABEL_8:
    if (_libssh2_base64_encode(*a1, a4, a5, &v49))
    {
      v47 = a1;
      a4 = v49;
      goto LABEL_10;
    }

    v41 = *a1;
    v42 = "Unable to allocate memory for base64-encoded key";
    v43 = 4294967290;
LABEL_55:
    _libssh2_error(v41, v43, v42);
    v8 = 3;
    goto LABEL_65;
  }

LABEL_6:
  v47 = a1;
LABEL_10:
  v16 = 0;
  v17 = a6 & 0x3C0000;
  do
  {
    v18 = _libssh2_list_first((v47 + 1));
    if (v18)
    {
      v19 = v18;
      do
      {
        v20 = *(v19 + 44);
        if (v20 == 3)
        {
          if (v7 != 3)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v20 == 2)
          {
            if (v7 != 1)
            {
              goto LABEL_41;
            }

            v22 = HMAC_CTX_new();
            if (*(v19 + 32) != 20)
            {
              goto LABEL_41;
            }

            v23 = v22;
            v24 = *(v19 + 48);
            v25 = *(v19 + 56);
            v26 = EVP_sha1();
            HMAC_Init_ex(v23, v24, v25, v26, 0);
            v27 = strlen(v14);
            HMAC_Update(v23, v14, v27);
            HMAC_Final(v23, md, 0);
            HMAC_CTX_free(v23);
            v28 = *(v19 + 24);
            v29 = *v28;
            v30 = v28[1];
            v31 = *(v28 + 4);
            v33 = *md == v29 && v51 == v30 && v52 == v31;
            goto LABEL_31;
          }

          if (v20 != 1 || v7 != 1)
          {
            goto LABEL_41;
          }
        }

        v33 = strcmp(v14, *(v19 + 24)) == 0;
LABEL_31:
        if (v33)
        {
          v35 = *(v19 + 44);
          if (!v17 || v17 != 3932160 && v17 == (v35 & 0x3C0000))
          {
            v36 = *(v19 + 64);
            if (!strcmp(a4, v36))
            {
              v37 = v46;
              if (v46)
              {
                *(v19 + 104) = -559035650;
                v38 = v19 + 104;
                *(v19 + 112) = v19;
                if (v35 == 1)
                {
                  v40 = *(v19 + 24);
                }

                else
                {
                  v40 = 0;
                }

                v8 = 0;
                *(v19 + 120) = v40;
LABEL_62:
                *(v19 + 128) = v36;
                *(v19 + 136) = v35;
                *v37 = v38;
              }

              else
              {
                v8 = 0;
              }

              goto LABEL_63;
            }

            if (!v16)
            {
              v16 = v19;
            }
          }
        }

LABEL_41:
        v19 = _libssh2_list_next(v19);
      }

      while (v19);
    }

    v14 = a2;
    --v15;
  }

  while (v15);
  if (v16)
  {
    v37 = v46;
    if (v46)
    {
      *(v16 + 104) = -559035650;
      v38 = v16 + 104;
      *(v16 + 112) = v16;
      v35 = *(v16 + 44);
      if (v35 == 1)
      {
        v39 = *(v16 + 24);
      }

      else
      {
        v39 = 0;
      }

      *(v16 + 120) = v39;
      v36 = *(v16 + 64);
      v8 = 1;
      v19 = v16;
      goto LABEL_62;
    }

    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

LABEL_63:
  if (v49)
  {
    (*(*v47 + 24))();
  }

LABEL_65:
  v44 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t libssh2_knownhost_del(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a2 == -559035650)
  {
    v4 = *(a2 + 8);
    _libssh2_list_remove(v4);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    free_host(*a1, v4);
    return 0;
  }

  else
  {
    v6 = *a1;

    return _libssh2_error(v6, 4294967262, "Invalid host information");
  }
}

uint64_t free_host(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2[11];
    if (v4)
    {
      (*(v3 + 24))(v4, v3);
    }

    v5 = a2[9];
    if (v5)
    {
      (*(v3 + 24))(v5, v3);
    }

    v6 = a2[8];
    if (v6)
    {
      (*(v3 + 24))(v6, v3);
    }

    v7 = a2[6];
    if (v7)
    {
      (*(v3 + 24))(v7, v3);
    }

    v8 = a2[3];
    if (v8)
    {
      (*(v3 + 24))(v8, v3);
    }

    v9 = *(v3 + 24);

    return v9(a2, v3);
  }

  return result;
}

uint64_t libssh2_knownhost_free(uint64_t *a1)
{
  v2 = _libssh2_list_first((a1 + 1));
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = _libssh2_list_next(v3);
      free_host(*a1, v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(*a1 + 24);

  return v5(a1);
}

uint64_t libssh2_knownhost_readline(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    if (a3)
    {
      v4 = 0;
      for (i = a3; ; --i)
      {
        v6 = *(a2 + v4);
        if (v6 > 0x23)
        {
          break;
        }

        if (((1 << v6) & 0x100000200) == 0)
        {
          if (((1 << v6) & 0x800000401) != 0)
          {
            return 0;
          }

          break;
        }

        if (a3 == ++v4)
        {
          return 0;
        }
      }

      v10 = 0;
      while (v6 > 0x20u || ((1 << v6) & 0x100000201) == 0)
      {
        if (~v4 + a3 == v10)
        {
          goto LABEL_23;
        }

        LOBYTE(v6) = *(a2 + v10++ + v4 + 1);
      }

      v11 = v4 + v10;
      v12 = i - v10;
      while (1)
      {
        v13 = *(a2 + v11);
        if (v13 != 9 && v13 != 32)
        {
          break;
        }

        if (a3 == ++v11)
        {
          goto LABEL_23;
        }
      }

      if (!*(a2 + v11))
      {
LABEL_23:
        v7 = *a1;
        v8 = "Failed to parse known_hosts line";
        return _libssh2_error(v7, 4294967263, v8);
      }

      v14 = 0;
      while (v13 != 10)
      {
        if (~v11 + a3 == v14)
        {
          v13 = *(v4 + v10 + a2 + v12);
          return hostline(a1, a2 + v4, v10, (a2 + v11), a3 - (v13 == 10) - v11);
        }

        v13 = *(a2 + v14++ + v11 + 1);
        if (!v13)
        {
          return hostline(a1, a2 + v4, v10, (a2 + v11), a3 - (v13 == 10) - v11);
        }
      }

      return hostline(a1, a2 + v4, v10, (a2 + v11), a3 - (v13 == 10) - v11);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = *a1;
    v8 = "Unsupported type of known-host information store";
    return _libssh2_error(v7, 4294967263, v8);
  }
}

uint64_t hostline(uint64_t *a1, unint64_t a2, uint64_t a3, char *__s1, unint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a5 > 0x13)
  {
    v9 = a5;
    v10 = __s1;
    v13 = *__s1;
    if (v13 - 48 >= 0xA)
    {
      v17 = &__s1[a5];
      v18 = __s1;
      while (v13 > 0x20 || ((1 << v13) & 0x100000201) == 0)
      {
        if (!--v9)
        {
          goto LABEL_13;
        }

        v19 = *++v18;
        v13 = v19;
      }

      v17 = v18;
LABEL_13:
      v15 = v17 - __s1;
      if (!strncmp(__s1, "ssh-dss", v17 - __s1))
      {
        v16 = 786432;
      }

      else if (!strncmp(v10, "ssh-rsa", v17 - v10))
      {
        v16 = 0x80000;
      }

      else if (!strncmp(v10, "ecdsa-sha2-nistp256", v17 - v10))
      {
        v16 = 0x100000;
      }

      else if (!strncmp(v10, "ecdsa-sha2-nistp384", v17 - v10))
      {
        v16 = 1310720;
      }

      else if (!strncmp(v10, "ecdsa-sha2-nistp521", v17 - v10))
      {
        v16 = 1572864;
      }

      else if (!strncmp(v10, "ssh-ed25519", v17 - v10))
      {
        v16 = 1835008;
      }

      else
      {
        v16 = 3932160;
      }

      while (1)
      {
        v20 = *v17;
        if (v20 != 9 && v20 != 32)
        {
          break;
        }

        ++v17;
        --v9;
      }

      if (v9)
      {
        v21 = 0;
        while (v20 > 0x20u || ((1 << v20) & 0x100000201) == 0)
        {
          if (v9 - 1 == v21)
          {
            goto LABEL_35;
          }

          LOBYTE(v20) = v17[++v21];
        }

        v14 = v9 - v21;
        v22 = &v17[v21];
        v40 = &v17[v9];
        do
        {
          v23 = *v22;
          if (v23 != 32 && v23 != 9)
          {
            v9 = v21;
            v40 = v22;
            goto LABEL_44;
          }

          ++v22;
          --v14;
        }

        while (v14);
        v9 = v21;
      }

      else
      {
LABEL_35:
        v40 = 0;
        v14 = 0;
      }
    }

    else
    {
      v40 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0x40000;
      v17 = __s1;
      v10 = 0;
    }

LABEL_44:
    if (a3 >= 3 && (*a2 != 12668 || *(a2 + 2) != 124))
    {
      if (a3 >= 1)
      {
        v38 = v15;
        v26 = a1;
        v27 = 0;
        v28 = a2 + a3;
        v29 = v16 | 0x20001;
        do
        {
          v30 = v28 - 1;
          ++v27;
          if (v28 - 1 == a2 || *(v28 - 2) == 44)
          {
            if (v27 >= 0xFF)
            {
              goto LABEL_66;
            }

            __memcpy_chk();
            __s[v27] = 0;
            result = knownhost_add(v26, __s, 0, v10, v38, v17, v9, v40, v14, v29, 0);
            if (result)
            {
              goto LABEL_69;
            }

            if (v30 > a2)
            {
              v27 = 0;
              v30 = v28 - 2;
            }
          }

          v28 = v30;
        }

        while (v30 > a2);
      }

LABEL_58:
      result = 0;
      goto LABEL_69;
    }

    v31 = 0;
    v32 = a2 + 4;
    for (i = a3 - 4; ; --i)
    {
      if (!*(v32 - 1))
      {
        goto LABEL_58;
      }

      if (*(v32 - 1) == 124)
      {
        break;
      }

      ++v32;
      ++v31;
    }

    if (v31 < 0x1F)
    {
      v37 = v16;
      v39 = v15;
      v26 = a1;
      __memcpy_chk();
      v42[v31] = 0;
      if (i < 0xFF)
      {
        __memcpy_chk();
        __s[i] = 0;
        result = knownhost_add(a1, __s, v42, v10, v39, v17, v9, v40, v14, v37 | 0x20002u, 0);
LABEL_69:
        v36 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_66:
      v34 = *v26;
      v35 = "Failed to parse known_hosts line (unexpected length)";
    }

    else
    {
      v34 = *a1;
      v35 = "Failed to parse known_hosts line (unexpectedly long salt)";
    }

    result = _libssh2_error(v34, 4294967263, v35);
    goto LABEL_69;
  }

  v6 = *a1;
  v7 = *MEMORY[0x277D85DE8];

  return _libssh2_error(v6, 4294967263, "Failed to parse known_hosts line (key too short)");
}

uint64_t libssh2_knownhost_readfile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v17 = *MEMORY[0x277D85DE8];
  if (v4 != 1)
  {
    v9 = *v1;
    v10 = *MEMORY[0x277D85DE8];
    v11 = "Unsupported type of known-host information store";
    v12 = 4294967263;
LABEL_9:

    return _libssh2_error(v9, v12, v11);
  }

  v5 = fopen(v2, "r");
  if (!v5)
  {
    v9 = *v3;
    v13 = *MEMORY[0x277D85DE8];
    v11 = "Failed to open file";
    v12 = 4294967280;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = 0;
  if (fgets(__s, 4092, v5))
  {
    while (1)
    {
      v8 = strlen(__s);
      if (libssh2_knownhost_readline(v3, __s, v8, 1))
      {
        break;
      }

      v7 = (v7 + 1);
      if (!fgets(__s, 4092, v6))
      {
        goto LABEL_13;
      }
    }

    v7 = _libssh2_error(*v3, 4294967250, "Failed to parse known hosts file");
  }

LABEL_13:
  fclose(v6);
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}