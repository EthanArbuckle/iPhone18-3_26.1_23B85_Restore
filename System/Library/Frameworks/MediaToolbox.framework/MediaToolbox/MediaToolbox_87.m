uint64_t sub_1969B33A0@<X0>(int a1@<W8>)
{
  v5 = ((v3 & (v4 + 1)) << (a1 ^ 0xC3)) & (v3 ^ 0xC1C27107) ^ v3 & (v4 + 1);
  v6 = ((2 * (v3 ^ 0xC9C2312B)) ^ 0x1B84A878) & (v3 ^ 0xC9C2312B) ^ (2 * (v3 ^ 0xC9C2312B)) & 0xDC2543C;
  v7 = (v6 ^ 0x4404038) & (4 * v5) ^ v5;
  v8 = ((4 * (v6 ^ 0x4425404)) ^ 0x370950F0) & (v6 ^ 0x4425404) ^ (4 * (v6 ^ 0x4425404)) & 0xDC2543C;
  v9 = (v8 ^ 0x500503C) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x8C2040C)) ^ 0xDC2543C0) & (v8 ^ 0x8C2040C) ^ (16 * (v8 ^ 0x8C2040C)) & 0xDC25430;
  v11 = v9 ^ 0xDC2543C ^ (v10 ^ 0xC00403C) & (v9 << 8);
  v12 = v3 ^ (2 * ((v11 << 16) & 0xDC20000 ^ v11 ^ ((v11 << 16) ^ 0x543C0000) & (((v10 ^ 0x1C2143C) << 8) & 0xDC20000 ^ 0xD820000 ^ (((v10 ^ 0x1C2143C) << 8) ^ 0x42540000) & (v10 ^ 0x1C2143C)))) ^ 0xBCF22A0E;
  v13 = 1825732043 * (((&v15 | 0xF5932BE9) + (~&v15 | 0xA6CD416)) ^ 0xF50578DF);
  v15 = v1;
  v16 = v12 - v13;
  v17 = v13 + a1 - 1198;
  return (*(v2 + 8 * (a1 + 3170)))(&v15);
}

uint64_t sub_1969B3570@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v7 = *(a2 + v4 + 16);
  v8 = (a1 + a3);
  *v8 = *(a2 + v4);
  v8[1] = v7;
  return (*(v6 + 8 * ((((((v5 - 23) ^ 0xFFFFFFFFFFFFEBB6) & v3) != 32) * (((2 * (v5 - 23)) ^ 0x206A) - 2187)) ^ (v5 - 23))))(a3);
}

uint64_t sub_1969B35C8()
{
  (*(v1 + 8 * (v3 ^ 0x19BB)))(v2);
  *v0 = 0;
  return (STACK[0x800])(LODWORD(STACK[0x400]), 23);
}

uint64_t sub_1969B3648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v8 - 1;
  v19 = __ROR8__((v13 + v18) & ((5 * (v10 ^ 0x14AEu)) ^ 0xFFFFFFFFFFFFE9A5), 8);
  v20 = ((0x6AF7234D0CC131D4 - v19) & a3) + v19 + v12 - ((v19 + v12) & v14);
  v21 = v20 ^ v17;
  v22 = v20 ^ a5;
  v23 = (__ROR8__(v21, 8) + v22) ^ v16;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a2;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (v9 - ((v26 + v27) ^ a6 | v9) + ((v26 + v27) ^ a6 | a7)) ^ a8;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((((2 * (v30 + v29)) & 0x408B64F38B169598) - (v30 + v29) - 0x2045B279C58B4ACDLL) ^ 0xBEFFD0ACCA6B91C4, 8);
  v32 = (((2 * (v30 + v29)) & 0x408B64F38B169598) - (v30 + v29) - 0x2045B279C58B4ACDLL) ^ 0xBEFFD0ACCA6B91C4 ^ __ROR8__(v29, 61);
  v33 = (((2 * (v31 + v32)) | 0xE86939D20CCACD96) - (v31 + v32) - 0x74349CE9066566CBLL) ^ 0x10F780EB76E1B8A7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x1A2AEBE44253AF03;
  *(a1 + v18) = *(v13 + v18) ^ 0xEC ^ (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v15) >> (8 * ((v13 + v18) & 7)));
  return (*(v11 + 8 * ((363 * (v18 == 0)) ^ v10)))();
}

uint64_t sub_1969B37E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23)
{
  v26 = (a23 - 3485) | 0x112;
  v173 = a20 ^ v26 ^ 0x3EFC20F;
  v174 = a4 + 16;
  v172 = *(v24 - 116) < 0xB896830C;
  v27 = (a16 + (a4 + 16));
  v28 = *(a14 + (((a23 + 99) | 0x12) ^ 0x41 ^ v27[6] ^ 0xFCu)) << 8;
  v29 = *(a14 + (v27[2] ^ 0xF0)) << 8;
  v30 = v27[11];
  v31 = *(a15 + (v30 ^ 0x14));
  v32 = v31 ^ v30;
  v33 = (v31 ^ ~v30 | 0xFFFFFF0F) & ((*(a14 + (v27[10] ^ 0x1ALL)) << 8) ^ 0x2DA33050) | (v31 ^ v30) & 0xAF;
  v34 = ((v27[9] ^ 0xC6) + (v27[9] ^ 0x3B) + *(a12 + (v27[9] ^ 0x50)) + 1);
  v35 = ((((v34 << 16) ^ 0xFFDFFFFF) & ((*(a13 + (v27[8] ^ 0x89)) << 24) ^ 0xFEE0B3D1) & 0xFFE0FFFF | ((v34 & 0x1F) << 16)) ^ 0x6BED9969) & (v33 ^ 0xD25C69EE) ^ v33 & 0x8A3D547;
  v36 = *(a13 + (v27[12] ^ 0xA7)) ^ 0xB8;
  v37 = ((((v27[1] ^ 0xF9) - (v27[1] ^ 0xFB) + *(a12 + (v27[1] ^ 0x92))) << 16) ^ 0x8FE3AE7D) & (v29 ^ 0x8FFF017D) | v29 & 0x5100;
  v38 = (*(a15 + (v27[7] ^ 0x7FLL)) - ((2 * *(a15 + (v27[7] ^ 0x7FLL))) & 0x22) - 31215) ^ ((v28 ^ 0x36EB) & 0x200 | v28 & 0x1800) ^ ((v27[7] ^ 0x7E81) & 0x7EFF ^ 0x9B66) & (((v28 ^ 0x36EB) & 0x6AB | v28 & 0xF9FF) ^ 0xA854);
  v39 = *(a13 + (((*v27 ^ 0xDB) - (*v27 ^ 0xB4)) ^ 0xFFFFFFFE) + (*v27 ^ 0xDB));
  v40 = ((v27[13] ^ 0x3B) + (v27[13] ^ 0xC6) + *(a12 + (v27[13] ^ 0xADLL)) + 1) << 16;
  v41 = (v40 ^ 0xFFC0FFFF) & ((((v36 << 24) ^ 0x267BFF19) & ((*(a14 + (v27[14] ^ 0x9CLL)) << 8) ^ 0x3F7B2C19) & 0x3FFFFFFF | ((v36 >> 6) << 30)) ^ 0xBEE33174);
  v42 = v40 & 0x670000;
  LOBYTE(v36) = *(a15 + (v27[3] ^ 0x81)) ^ v27[3];
  v43 = (((v39 ^ 0x62) << 24) ^ 0xEEB7A6E5) & (v37 ^ 0x70E85988) ^ v37 & 0xE485910;
  v44 = v43 >> 8;
  v45 = *(a15 + (v27[15] ^ 0x3CLL)) & 0x1F ^ v27[15] ^ (v42 ^ 0x93F768D ^ v41) & ~*(a15 + (v27[15] ^ 0x3CLL));
  v46 = *(v23 + 8 * (v26 - 2446)) - 8;
  v47 = *(v23 + 8 * (v26 ^ 0xB3D));
  v48 = ((v35 ^ 0x3BF4) >> 8);
  v49 = *(v23 + 8 * (v26 - 2894)) - 4;
  v50 = *(v23 + 8 * (v26 - 2677)) - 12;
  v51 = *(v47 + 4 * ((v45 ^ 0x4A1D3ED1u) >> 16)) ^ *(v46 + 4 * (v39 ^ 0x64u)) ^ (((v48 - (v48 ^ 0x76072D4)) ^ 0xFFFFFFF8) + v48) ^ *(v50 + 4 * (v48 ^ 0x70u)) ^ (*(v49 + 4 * (v38 ^ 0x57u)) - (((v38 ^ 0xDF) + v25) ^ v38 ^ 0xDF));
  v52 = *(v46 + 4 * ((v35 ^ 0x4D243BF4) >> 24)) ^ 0x89DFE440;
  v53 = *(v46 + 4 * (*(a13 + (v27[4] ^ 0xAC) - ((2 * (v27[4] ^ 0xAC)) & 0xDEu) + 111) ^ 2)) ^ ((v45 ^ 0x3ED1) >> 8) ^ *(v47 + 4 * (((v27[1] ^ 0xF9) - (v27[1] ^ 0xFB) + *(a12 + (v27[1] ^ 0x92))) ^ 0xD5u)) ^ (*(v49 + 4 * (v32 ^ 0x84u)) - (((v35 ^ 0xF4) + v25) ^ v35 ^ 0xF4)) ^ *(v50 + 4 * (((v45 ^ 0x3ED1) >> 8) ^ 0x70u));
  LODWORD(v30) = *(v50 + 4 * (BYTE1(v43) ^ 0xBDu)) ^ *(v47 + 4 * (((v27[5] ^ 0xC5) - (v27[5] ^ 0xC7) + *(a12 + ((((a23 + 99) | 0x12) - 117) ^ 0x7Au ^ v27[5]))) ^ 0xA6u)) ^ (*(v49 + 4 * (v45 ^ 0x59u)) - (((v45 ^ 0xD1) + v25) ^ v45 ^ 0xD1)) ^ (v52 - ((2 * v52) & 0x1D0359A6) - 1904104237);
  v171 = (v43 ^ 0x14) & (v36 ^ 0x59) ^ v36 & 0x1E;
  v54 = v53 ^ 0x76CA9CA0;
  v55 = *(v47 + 4 * ((v35 ^ 0x4D243BF4) >> 16)) ^ *(v46 + 4 * ((v45 ^ 0x4A1D3ED1u) >> 24)) ^ (*(v49 + 4 * (v36 ^ 0xC4u)) - (((v171 ^ 0xD) + v25) ^ v171 ^ 0xD)) ^ *(v50 + 4 * (HIBYTE(v38) ^ 0x3Du));
  v56 = (v53 ^ 0x76CA9CA0u) >> 24;
  v57 = *(v47 + 4 * (BYTE2(v55) ^ 0x49u)) ^ *(v46 + 4 * ((v51 ^ 0xD00EB55E) >> 24)) ^ (*(v49 + 4 * (v53 ^ 0x28u)) - (((v53 ^ 0xA0) + v25) ^ v53 ^ 0xA0)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0x9Au));
  v58 = *(v47 + 4 * (BYTE2(v51) ^ 6u)) ^ *(v46 + 4 * v56) ^ *(v50 + 4 * (BYTE1(v55) ^ 0xC6u)) ^ (*(v49 + 4 * ((v30 ^ v44) ^ 0xB7u)) - ((((v30 ^ v44) ^ 0x3F) + v25) ^ (v30 ^ v44) ^ 0x3F));
  v59 = v54 >> 8;
  LOBYTE(v44) = v57 ^ BYTE1(v30);
  v60 = *(v50 + 4 * (BYTE1(v54) ^ 0x70u));
  v61 = *(v47 + 4 * BYTE2(v54)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0xE7)) ^ (*(v49 + 4 * ((v55 ^ HIBYTE(v38)) ^ 0xF8u)) - ((((v55 ^ HIBYTE(v38)) ^ 0x70) + v25) ^ (v55 ^ HIBYTE(v38)) ^ 0x70)) ^ *(v50 + 4 * ((-((v51 ^ 0xB55E) >> 8) ^ 0x7EC74417 ^ (112 - (((v51 ^ 0xB55E) >> 8) ^ 0x70)) ^ (((v51 ^ 0xB55E) >> 8) + 2126988311 - (((v51 ^ 0xD00EB55E) >> 7) & 0x2E))) + 112));
  LODWORD(v30) = *(v47 + 4 * (BYTE2(v30) ^ 0x30u)) ^ *(v46 + 4 * (HIBYTE(v55) ^ 0xFA)) ^ v60 ^ (*(v49 + 4 * (v51 ^ 0xD6u)) - (((v51 ^ 0x5E) + v25) ^ v51 ^ 0x5E));
  v62 = *(v46 + 4 * (HIBYTE(v57) ^ 0x3D)) ^ BYTE1(v61) ^ *(v47 + 4 * (BYTE2(v30) ^ 0xBDu)) ^ *(v50 + 4 * (BYTE1(v61) ^ 0xC8u)) ^ (*(v49 + 4 * ((v58 ^ BYTE1(v55)) ^ 0xFBu)) - ((((v58 ^ BYTE1(v55)) ^ 0x73) + v25) ^ (v58 ^ BYTE1(v55)) ^ 0x73));
  v63 = *(v46 + 4 * (HIBYTE(v61) ^ 0x63));
  v64 = *(v47 + 4 * (BYTE2(v57) ^ 0xDu)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0xE2u)) ^ *(v46 + 4 * (HIBYTE(v58) ^ 0x54)) ^ (*(v49 + 4 * ((v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0xA6u)) - ((((v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0x2E) + v25) ^ (v61 ^ ((v51 ^ 0xB55E) >> 8)) ^ 0x2E));
  v65 = *(v49 + 4 * ((v30 ^ v59) ^ 0x3Bu)) - ((((v30 ^ v59) ^ 0xB3) + v25) ^ (v30 ^ v59) ^ 0xB3);
  v66 = BYTE1(v57);
  v67 = *(v50 + 4 * (v66 ^ 8u));
  v68 = v64 ^ BYTE1(v30);
  v69 = *(v47 + 4 * (BYTE2(v61) ^ 0x3Eu)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0xEF)) ^ *(v50 + 4 * (BYTE1(v58) ^ 0xADu)) ^ (*(v49 + 4 * (v44 ^ 0xDFu)) - (((v44 ^ 0x57) + v25) ^ v44 ^ 0x57));
  LODWORD(v30) = v66 ^ *(v47 + 4 * (BYTE2(v58) ^ 0x36u));
  LOBYTE(v44) = v69 ^ BYTE1(v58);
  v70 = v30 ^ v63 ^ v67 ^ v65 ^ 0xC292E37C;
  v71 = *(v47 + 4 * ((BYTE2(v69) ^ 0x11) - ((v69 >> 15) & 0x10) + 8)) ^ *(v46 + 4 * ((v62 ^ 0xD91DAD9u) >> 24)) ^ *(v50 + 4 * (BYTE1(v70) ^ 0x70u)) ^ (*(v49 + 4 * (v68 ^ 0x8Du)) - (((v68 ^ 5) + v25) ^ v68 ^ 5));
  LODWORD(v30) = (v30 ^ v63 ^ v67 ^ v65 ^ 0x7C);
  LODWORD(v30) = *(v47 + 4 * ((v62 ^ 0xD91DAD9u) >> 16)) ^ *(v50 + 4 * (BYTE1(v69) ^ 0xDCu)) ^ (*(v49 + 4 * (v30 ^ 0x88)) - ((v30 + v25) ^ v30)) ^ *(v46 + 4 * ((v68 ^ 0x9CA92305) >> 24));
  LOBYTE(v64) = v71 ^ BYTE1(v70);
  LOBYTE(v67) = v30 ^ BYTE1(v69);
  v72 = *(v47 + 4 * (BYTE2(v64) ^ 0xA1u)) ^ *(v46 + 4 * HIBYTE(v70)) ^ *(v50 + 4 * (((v62 ^ 0xDAD9) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v44 ^ 0x27u)) - (((v44 ^ 0xAF) + v25) ^ v44 ^ 0xAF));
  LOBYTE(v39) = v72 ^ ((v62 ^ 0xDAD9) >> 8);
  v73 = *(v47 + 4 * BYTE2(v70)) ^ *(v46 + 4 * (HIBYTE(v69) ^ 0x79)) ^ (*(v49 + 4 * (v62 ^ 0x51u)) - (((v62 ^ 0xD9) + v25) ^ v62 ^ 0xD9)) ^ *(v50 + 4 * (((v68 ^ 0x2305) >> 8) ^ 0x70u));
  v74 = v71 >> 8;
  v75 = *(v46 + 4 * (HIBYTE(v71) ^ 0x42)) ^ BYTE1(v72) ^ *(v47 + 4 * (BYTE2(v73) ^ 0x11u)) ^ *(v50 + 4 * (BYTE1(v72) ^ 0x36u)) ^ (*(v49 + 4 * (v67 ^ 0x3Du)) - (((v67 ^ 0xB5) + v25) ^ v67 ^ 0xB5));
  v76 = *(v49 + 4 * (v39 ^ 0xF4u)) - (((v39 ^ 0x7C) + v25) ^ v39 ^ 0x7C);
  v77 = (BYTE1(v73) | 0xC4BB8E00) ^ *(v46 + 4 * (BYTE3(v30) ^ 0x64)) ^ *(v47 + 4 * (BYTE2(v71) ^ 0xBu)) ^ *(v50 + 4 * (BYTE1(v73) ^ 0xB9u)) ^ (v76 - ((2 * v76) & 0xD0348BCA) - 400931355);
  v78 = *(v50 + 4 * (BYTE1(v71) ^ 0x4Cu));
  v79 = *(v47 + 4 * (BYTE2(v30) ^ 0xAAu)) ^ *(v46 + 4 * (HIBYTE(v72) ^ 0xAB));
  v80 = v30 >> 8;
  v81 = v77 ^ 0x2CA1CB2C;
  v82 = (-v78 ^ 0x23FC8884 ^ (v78 + 603752580 - ((2 * v78) & 0x47F91108)) ^ ((v79 ^ 0x71DB5A23) - ((((v78 ^ v79) & 0x24AA6DED ^ 0x55A2C6DF) & ((v78 ^ v79) & 0xDB559212 ^ 0x2EEBEDFD) | (v78 ^ v79) & 0x8A551000) ^ 0x75799EFE))) + (v79 ^ 0x71DB5A23);
  v83 = BYTE2(v72) ^ 0xA9;
  v84 = v82 ^ (*(v49 + 4 * ((v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x11u)) - ((((v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x99) + v25) ^ (v73 ^ ((v68 ^ 0x2305) >> 8)) ^ 0x99));
  v77 ^= 0xFF920EA4;
  LODWORD(v30) = *(v47 + 4 * v83) ^ *(v46 + 4 * (HIBYTE(v73) ^ 0x4E)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0xFu)) ^ (*(v49 + 4 * (v64 ^ 0xF6u)) - (((v64 ^ 0x7E) + v25) ^ v64 ^ 0x7E));
  LOBYTE(v83) = v30 ^ v80;
  v85 = *(v47 + 4 * (BYTE2(v30) ^ 0x22u)) ^ *(v46 + 4 * ((v75 ^ 0x517CE293u) >> 24)) ^ (*(v49 + 4 * v81) - ((v77 + v25) ^ v77)) ^ BYTE1(v84) ^ *(v50 + 4 * (BYTE1(v84) ^ 0x95u));
  v86 = *(v47 + 4 * ((v75 ^ 0x517CE293u) >> 16)) ^ *(v50 + 4 * (BYTE1(v30) ^ 0x79u)) ^ *(v46 + 4 * HIBYTE(v77)) ^ (*(v49 + 4 * ((v84 ^ v74) ^ 0x1Du)) - ((((v84 ^ v74) ^ 0x95) + v25) ^ (v84 ^ v74) ^ 0x95));
  v87 = ((v75 ^ 0xE293) >> 8);
  LOBYTE(v80) = v86 ^ BYTE1(v30);
  v88 = *(v47 + 4 * (BYTE2(v81) ^ 0x3Bu)) ^ *(v50 + 4 * (v87 ^ 0x70u)) ^ (*(v49 + 4 * (v83 ^ 0xFDu)) - (((v83 ^ 0x75) + v25) ^ v83 ^ 0x75)) ^ *(v46 + 4 * (HIBYTE(v84) ^ 0x4B));
  LOBYTE(v84) = *(v47 + 4 * (BYTE2(v81) ^ 0x3Bu)) ^ *(v50 + 4 * (v87 ^ 0x70u)) ^ (*(v49 + 4 * (v83 ^ 0xFDu)) - (((v83 ^ 0x75) + v25) ^ v83 ^ 0x75)) ^ *(v46 + 4 * (HIBYTE(v84) ^ 0x4B)) ^ v87;
  v89 = BYTE1(v77);
  LODWORD(v30) = (*(v49 + 4 * (v75 ^ 0x1Bu)) - (((v75 ^ 0x93) + v25) ^ v75 ^ 0x93)) ^ *(v46 + 4 * (BYTE3(v30) ^ 0x10)) ^ *(v50 + 4 * (v89 ^ 0x70u)) ^ *(v47 + 4 * (BYTE2(v84) ^ 0x42u));
  HIDWORD(v90) = v30 ^ v89;
  LODWORD(v90) = v30;
  HIDWORD(v90) = (v90 >> 14) ^ 0x3DEA050;
  LODWORD(v90) = HIDWORD(v90);
  v91 = ((v90 >> 18) & 0x2000 | 0x2ACB8535) ^ (v90 >> 18) & 0xFFFFDFFF;
  v92 = *(v47 + 4 * ((v91 ^ 0x5DFEB5ADu) >> 16)) ^ *(v46 + 4 * ((v85 ^ 0xF27376AB) >> 24)) ^ *(v50 + 4 * (BYTE1(v88) ^ 0x8Cu)) ^ (*(v49 + 4 * (v80 ^ 0x33u)) - (((v80 ^ 0xBB) + v25) ^ v80 ^ 0xBB));
  LOWORD(v30) = v92 ^ BYTE1(v88);
  v93 = *(v47 + 4 * ((v85 ^ 0xF27376AB) >> 16)) ^ *(v46 + 4 * (HIBYTE(v86) ^ 0x77)) ^ (*(v49 + 4 * (v84 ^ 0x65u)) - (((v84 ^ 0xED) + v25) ^ v84 ^ 0xED)) ^ *(v50 + 4 * (((v91 ^ 0xB5AD) >> 8) ^ 0x70u));
  v94 = *(v46 + 4 * (((v88 ^ v87 ^ 0x5630FCEDu) >> ((v88 ^ v87) & 0x18 ^ 8) >> ((v88 ^ v87) & 0x18 ^ 0x10)) ^ 0x4Au)) ^ __ROR4__(__ROR4__(((v85 ^ 0x76AB) >> 8) ^ 0xF89F8D2B, 2) ^ 0x53A11C91, 30) ^ *(v47 + 4 * (BYTE2(v86) ^ 0xDDu)) ^ *(v50 + 4 * (((v85 ^ 0x76AB) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * ((v90 >> 18) ^ 0x10u)) - ((((v90 >> 18) ^ 0x98) + v25) ^ (v90 >> 18) ^ 0x98));
  v95 = v85 ^ 0xAB;
  BYTE1(v74) = BYTE1(v93) ^ 0x51;
  v96 = *(v46 + 4 * ((v91 ^ 0x5DFEB5ADu) >> 24)) ^ BYTE1(v86) ^ *(v47 + 4 * (BYTE2(v88) ^ 0x38u)) ^ *(v50 + 4 * (BYTE1(v86) ^ 0xD1u)) ^ (*(v49 + 4 * (((v95 - (v85 ^ 0x23)) ^ 0xFFFFFFF0) + v95)) - ((v95 + v25) ^ v95));
  v97 = v93 ^ 0x13 ^ ((v91 ^ 0xB5AD) >> 8);
  v98 = ((v94 ^ 0x24DE) >> 8);
  v99 = *(v47 + 4 * ((v96 ^ 0x7C834ACCu) >> 16)) ^ *(v46 + 4 * (HIBYTE(v92) ^ 0x19)) ^ *(v50 + 4 * (v98 ^ 0x70u)) ^ (*(v49 + 4 * ((((v97 ^ 0xB902AA44) - (v97 ^ 0x88)) ^ 0xFFFFFFF8) + (v97 ^ 0xB902AA44))) - ((v97 + v25) ^ v97));
  v100 = v99 ^ v98;
  v101 = *(v47 + 4 * (BYTE2(v92) ^ 0xC5u)) ^ ((v96 ^ 0x4ACC) >> 8) ^ *(v46 + 4 * (HIBYTE(v93) ^ 0x70)) ^ *(v50 + 4 * (((v96 ^ 0x4ACC) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v94 ^ 0x56u)) - (((v94 ^ 0xDE) + v25) ^ v94 ^ 0xDE));
  v102 = *(v46 + 4 * ((v94 ^ 0x286424DEu) >> 24)) ^ ((v30 ^ 0x9C84) >> 8) ^ *(v47 + 4 * (BYTE2(v93) ^ 0x34u)) ^ *(v50 + 4 * (((v30 ^ 0x9C84) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v96 ^ 0x44u)) - (((v96 ^ 0xCC) + v25) ^ v96 ^ 0xCC));
  v103 = BYTE1(v74);
  v104 = *(v50 + 4 * (BYTE1(v74) ^ 0x70u));
  v105 = v101 ^ 0xD66B4B84;
  v106 = BYTE1(v100) ^ 0xB5;
  HIDWORD(v90) = v103 ^ *(v46 + 4 * (((v96 ^ 0x7C834ACCu) >> 24) ^ 0x4A)) ^ *(v47 + 4 * ((v94 ^ 0x286424DEu) >> 16)) ^ v104 ^ (*(v49 + 4 * (v30 ^ 0xCu)) - (((v30 ^ 0x84) + v25) ^ v30 ^ 0x84)) ^ 0x76BB28F7;
  LODWORD(v90) = HIDWORD(v90);
  LODWORD(v30) = v90 >> 4;
  BYTE2(v91) = BYTE2(v102) ^ 0xD9;
  HIDWORD(v90) = v30 ^ 0x3279B1F6;
  LODWORD(v90) = v30 ^ 0x3279B1F6;
  v107 = (v90 >> 28) & 0xFFFF7FFF ^ ((((v30 >> 11) & 1) << 15) | 0x464E20A6);
  v108 = ((v102 ^ 0xC4C) >> 8);
  v109 = *(v47 + 4 * (BYTE2(v107) ^ 8u)) ^ *(v46 + 4 * (HIBYTE(v99) ^ 0x40)) ^ *(v50 + 4 * (v108 ^ 0x70u)) ^ (*(v49 + 4 * (v101 ^ 0xCu)) - (((v101 ^ 0x84) + v25) ^ v101 ^ 0x84));
  v110 = *(v47 + 4 * ((v100 ^ 0xA52B5D5u) >> 16)) ^ *(v46 + 4 * (HIBYTE(v101) ^ 0x9C)) ^ (*(v49 + 4 * (v102 ^ 0xC4u)) - (((v102 ^ 0x4C) + v25) ^ v102 ^ 0x4C)) ^ BYTE1(v107) ^ *(v50 + 4 * (BYTE1(v107) ^ 0x70u));
  v111 = *(v47 + 4 * BYTE2(v105)) ^ *(v46 + 4 * ((v102 ^ 0x1BD90C4Cu) >> 24)) ^ *(v50 + 4 * (((v100 ^ 0xB5D5) >> 8) ^ 0x70u)) ^ (*(v49 + 4 * (v107 ^ 0x88u)) - ((v107 + v25) ^ v107));
  v112 = BYTE1(v105);
  v113 = *(v50 + 4 * (v112 ^ 0x70u));
  v114 = *(v47 + 4 * (BYTE2(v91) ^ 8u)) ^ *(v46 + 4 * (HIBYTE(v107) ^ 0x4A));
  v115 = v114 ^ 0x71DB5A23;
  if ((v113 & 0x40 & v114) != 0)
  {
    v116 = -(v113 & 0x40);
  }

  else
  {
    v116 = v113 & 0x40;
  }

  v117 = v116 + v115;
  v118 = v110 ^ 0xD18E8A5E;
  v119 = v112 ^ v113 & 0xFFFFFFBF ^ (*(v49 + 4 * (v100 ^ 0x5Du)) - (((v100 ^ 0xD5) + v25) ^ v100 ^ 0xD5)) ^ 0x3ADB3575 ^ v117;
  v120 = *(v23 + 8 * (v26 ^ 0xACB)) - 4;
  v121 = *(v120 + 4 * (HIBYTE(v109) ^ 0xC6)) ^ 0xAF93E01D;
  v122 = *(v23 + 8 * (v26 ^ 0xB9D)) - 4;
  v123 = -1731498383 * *(v122 + 4 * BYTE2(v119));
  v124 = *(v23 + 8 * (v26 - 2699)) - 8;
  HIDWORD(v126) = *(v124 + 4 * (BYTE1(v111) ^ 0x33u));
  LODWORD(v126) = HIDWORD(v126);
  v125 = v126 >> 19;
  v127 = *(v23 + 8 * (v26 ^ 0xB22));
  v128 = (v123 >> 3) & 0x1DF94769 ^ (32 * v121) ^ *(v127 + 4 * (v110 ^ 0x79u)) ^ (16 * v125 - 676508976);
  HIDWORD(v126) = *(v124 + 4 * BYTE1(v119));
  LODWORD(v126) = HIDWORD(v126);
  v129 = v126 >> 19;
  v130 = *(v120 + 4 * (HIBYTE(v111) ^ 0x8A)) ^ 0xAF93E01D;
  v131 = -1731498383 * *(v122 + 4 * ((v110 ^ 0xD18E8A5E) >> 16));
  v132 = v130 ^ (32 * v130) ^ v131 ^ (v131 >> 3) & 0x1DF94769;
  v133 = v108 ^ 0xD5E51CAA ^ v109;
  HIDWORD(v126) = *(v124 + 4 * (BYTE1(v109) ^ 0x69u));
  LODWORD(v126) = HIDWORD(v126);
  v134 = (16 * (v126 >> 19) - 676508976) ^ (v126 >> 19);
  v135 = v132 & 0x8000000;
  if ((v132 & 0x8000000 & v134) != 0)
  {
    v135 = -v135;
  }

  v136 = v135 + v134;
  v137 = *(v120 + 4 * HIBYTE(v118));
  v138 = *(v120 + 4 * HIBYTE(v119));
  v139 = *(v122 + 4 * BYTE2(v133));
  v140 = v111 ^ v106;
  v141 = *(v122 + 4 * (BYTE2(v111) ^ 0xDu));
  v142 = *(v124 + 4 * BYTE1(v118));
  v143 = *(v127 + 4 * (v140 ^ 0xE0u));
  v144 = v132 & 0xF7FFFFFF ^ *(v127 + 4 * v119) ^ v136;
  HIDWORD(v146) = v142;
  LODWORD(v146) = v142;
  v145 = v146 >> 19;
  v147 = *(v127 + 4 * v133);
  v148 = v147 ^ (32 * (v138 ^ 0xAF93E01D)) ^ (16 * v145 - 676508976);
  v149 = v128 - ((2 * v128) & 0x2B08AE74);
  v150 = v121 ^ v173 ^ v125;
  v151 = v148 + 1240434955 - 2 * (v148 & 0x49EF890F ^ v147 & 4);
  v152 = v138 ^ 0xAF93E01D ^ a19 ^ 0x757A455F ^ (-1731498383 * v141) ^ v145 ^ ((-1731498383 * v141) >> 3) & 0x1DF94769;
  v153 = v137 ^ 0xAF93E01D ^ a21 ^ 0xBA1B044 ^ (32 * (v137 ^ 0xAF93E01D)) ^ (-1731498383 * v139) ^ v143 ^ v129 ^ ((-1731498383 * v139) >> 3) & 0x1DF94769 ^ (16 * (((2 * v129) & 0xAF5A95A) + (v129 ^ 0xD7AD4AD)));
  v154 = (v144 - ((2 * v144) & 0x978FCBFA) - 876091907) ^ a22 ^ 0xE2C953AE;
  v155 = *(v23 + 8 * (v26 - 2785)) - 4;
  v156 = *(v155 + (HIBYTE(v153) ^ 0x41));
  v27[4] = v156 ^ (v156 >> 4) ^ 0x5F;
  v157 = *(v155 + (HIBYTE(v154) ^ 0xE3));
  v158 = v152 ^ v151;
  v27[8] = v157 ^ (v157 >> 4) ^ 0x23;
  v159 = *(v23 + 8 * (v26 - 2555)) - 12;
  LOBYTE(v151) = *(v159 + ((v152 ^ v151) ^ 0x48));
  v160 = v150 ^ v123;
  v27[15] = v151 ^ 0x78;
  v161 = *(v23 + 8 * (v26 - 2845)) - 4;
  v162 = *(v161 + (BYTE1(v153) ^ 0x3D) - ((2 * (BYTE1(v153) ^ 0x3D)) & 0x18u) + 12);
  v27[6] = ((v162 >> 3) | (32 * v162)) ^ 0x90 ^ (((v162 >> 3) | (32 * v162)) >> 3) & 0x15;
  v163 = *(v23 + 8 * (v26 ^ 0xA66)) - 12;
  v27[9] = (*(v163 + (BYTE2(v154) ^ 0x57)) - 54) ^ 0x7B;
  v164 = *(v161 + (BYTE1(v158) ^ 0x81));
  v27[14] = ((v164 >> 3) | (32 * v164)) ^ 0x1A ^ (((v164 >> 3) | (32 * v164)) >> 3) & 0x15;
  v165 = *(v155 + (HIBYTE(v158) ^ 0x52));
  v27[12] = v165 ^ (v165 >> 4) ^ 0x23;
  v27[7] = *(v159 + (v153 ^ 0xE5)) ^ 0x35;
  v166 = v160 ^ (v149 - 1786489030);
  v27[13] = (*(v163 + (BYTE2(v158) ^ 0xAELL)) - 54) ^ 0x71;
  v167 = *(v161 + (BYTE1(v154) ^ 0xA6));
  v27[10] = ((v167 >> 3) | (32 * v167)) ^ 9 ^ (((v167 >> 3) | (32 * v167)) >> 3) & 0x15;
  v27[3] = *(v159 + (v166 ^ 0x5CLL)) ^ 0xA6;
  LODWORD(v155) = *(v155 + (HIBYTE(v166) ^ 0xB3));
  *v27 = v155 ^ (v155 >> 4) ^ 0x7D;
  v27[11] = *(v159 + (v154 ^ 0x3ELL)) ^ 7;
  v168 = *(v161 + (BYTE1(v166) ^ 0xD9));
  v27[2] = ((v168 >> 3) | (32 * v168)) ^ 0x9D ^ (((v168 >> 3) | (32 * v168)) >> 3) & 0x15;
  v27[1] = (*(v163 + (BYTE2(v166) ^ 0x7ELL)) - 54) ^ 0xA8;
  v27[5] = (*(v163 + (BYTE2(v153) ^ 0x44)) - 54) ^ 0x5B;
  v169 = v174 - 1198095588 < *(v24 - 116);
  if (v172 != v174 - 1198095588 < 0xB896830C)
  {
    v169 = v172;
  }

  return (*(a17 + 8 * ((4698 * v169) ^ v26)))(9, 166, 35, v174, 21, 1240434955, v137, v138, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1969B3848@<X0>(uint64_t a1@<X5>, _DWORD *a2@<X8>)
{
  v4 = (2 * (v2 ^ 0x1AE3) + 3053) | 0x654;
  *(v3 + 80) = 1;
  v5 = (v4 - 447670590) & 0x1AAED7FF;
  v6 = v4 - 914;
  *(v3 + 84) = *a2;
  v7 = STACK[0x568];
  STACK[0x4F0] = &STACK[0x9A0] + STACK[0x568];
  STACK[0x568] = v7 + ((v4 - 376592027) & 0x1672487F ^ 0x862);
  v8 = STACK[0x7B0];
  STACK[0x500] = STACK[0x7B0];
  STACK[0x6A8] = 0;
  STACK[0x698] = 0;
  STACK[0x790] = 0;
  LODWORD(STACK[0x51C]) = 0;
  STACK[0x760] = 0;
  STACK[0x418] = 0;
  v9 = (*(a1 + 8 * (v4 ^ 0xCB2)))();
  if (v8)
  {
    v10 = LODWORD(STACK[0x448]) == v5 - 1311;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(STACK[0x370] + 8 * ((25 * v11) ^ v6)))(v9);
}

uint64_t sub_1969B3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v9 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = -v9;
  }

  v13 = v8 + v7;
  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  return (*(v11 + 8 * ((((v10 ^ 0xDF3) - 4251 + 37 * (v10 ^ 0xDF3)) * (v12 > v14)) ^ v10)))(a1, (v10 ^ 0xDF3u) + 4032, 37 * (v10 ^ 0xDF3u), a4, a5, a6, a7);
}

void sub_1969B38C0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v25 = ((2 * ((v24 - 144) & 0x4FECF0F0) - (v24 - 144) - 1340928246) ^ 0x65FDEE9B) * v23;
  *(v24 - 144) = v20 - v25 + 2750;
  *(v24 - 120) = v25 + v21 + 568546849 + ((v20 - 2361) | 0x818);
  *(v24 - 136) = &a20;
  *(v24 - 128) = a1;
  (*(v22 + 8 * (v20 ^ 0x13C4)))(v24 - 144);
  JUMPOUT(0x1969B3944);
}

uint64_t sub_1969B3F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a20 = a14;
  a19 = v20 + 5463 - 1790939281 * (((&a19 | 0x58E553A2) - &a19 + (&a19 & 0xA71AAC58)) ^ 0xA03973E3);
  (*(v23 + 8 * (v20 + 6189)))(&a19);
  a19 = v20 + 5463 - 1790939281 * ((&a19 + 1960594741 - 2 * (&a19 & 0x74DC4D35)) ^ 0x8C006D74);
  a20 = a16;
  v24 = (*(v23 + 8 * (v20 + 6189)))(&a19);
  return (*(v23 + 8 * (((v21 == v22) * (((v20 - 88179327) & 0x9D6BBA7D) + 1742068269)) ^ v20)))(v24);
}

uint64_t sub_1969B4068(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v89 = v78 - 16;
  *&v90 = v76 + v89 + 11;
  *(&v90 + 1) = v76 + v89 + 10;
  *&STACK[0x330] = v90;
  *&v90 = v76 + v89 + 13;
  *(&v90 + 1) = v76 + v89 + 12;
  *&STACK[0x320] = v90;
  v91.i64[0] = v76 + v89 + 21;
  v91.i64[1] = v76 + v89 + 20;
  v92.i64[0] = v76 + v89 + 23;
  v92.i64[1] = v76 + v89 + 22;
  v93.i64[0] = v76 + v89 + 25;
  v93.i64[1] = v76 + v89 + 24;
  v94.i64[0] = v76 + v89 + v80 + 16;
  v94.i64[1] = v76 + v89 + 18;
  v95 = *&STACK[0x2F0];
  v96 = vandq_s8(v94, *&STACK[0x2F0]);
  v97 = vandq_s8(v93, *&STACK[0x2F0]);
  v98 = vandq_s8(v92, *&STACK[0x2F0]);
  v99 = vandq_s8(v91, *&STACK[0x2F0]);
  v100 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v104 = *&STACK[0x2D0];
  v105 = vbslq_s8(v83, vsubq_s64(*&STACK[0x2D0], v100), vaddq_s64(v100, *&STACK[0x350]));
  v106 = vbslq_s8(v83, vsubq_s64(*&STACK[0x2D0], v101), vaddq_s64(v101, *&STACK[0x350]));
  v107 = vbslq_s8(v83, vsubq_s64(*&STACK[0x2D0], v102), vaddq_s64(v102, *&STACK[0x350]));
  v108 = vbslq_s8(v83, vsubq_s64(*&STACK[0x2D0], v103), vaddq_s64(v103, *&STACK[0x350]));
  v109 = veorq_s8(v106, v87);
  v110 = veorq_s8(v105, v87);
  v111 = veorq_s8(v105, a6);
  v112 = veorq_s8(v106, a6);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), a7);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v112), a7);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, a8), vorrq_s8(v117, a76)), a76), v82);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, a8), vorrq_s8(v118, a76)), a76), v82);
  v121 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v123 = veorq_s8(v119, v121);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v123);
  v126 = vaddq_s64(v124, v122);
  v128 = *&STACK[0x240];
  v127 = *&STACK[0x250];
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), v84)), *&STACK[0x250]), *&STACK[0x240]);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v125, vandq_s8(vaddq_s64(v125, v125), v84)), *&STACK[0x250]), *&STACK[0x240]);
  v131 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v132 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v133 = veorq_s8(v129, v131);
  v134 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v133);
  v136 = vaddq_s64(v134, v132);
  v137 = *&STACK[0x340];
  v138 = *&STACK[0x220];
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), a5), v136), *&STACK[0x340]), *&STACK[0x220]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), a5), v135), *&STACK[0x340]), *&STACK[0x220]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v142 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v143 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v142);
  v145 = veorq_s8(vaddq_s64(v143, v141), v86);
  v146 = veorq_s8(v144, v86);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v149 = veorq_s8(v145, v147);
  v150 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v149);
  v152 = veorq_s8(vaddq_s64(v150, v148), v88);
  v153 = veorq_s8(v151, v88);
  v154.i64[0] = v76 + v89 + 15;
  v154.i64[1] = v76 + v89 + 14;
  v155 = *&STACK[0x2E0];
  v245.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), *&STACK[0x2E0])));
  v245.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), *&STACK[0x2E0])));
  v156 = veorq_s8(v107, v87);
  v157 = veorq_s8(v107, a6);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), a7);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, a8), vorrq_s8(v160, a76)), a76), v82);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(v163, vandq_s8(vaddq_s64(v163, v163), v84)), *&STACK[0x250]), *&STACK[0x240]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), a5), v166), *&STACK[0x340]), *&STACK[0x220]);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v86);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v88);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v171.i64[0] = v76 + v89 + 17;
  v171.i64[1] = v76 + v89 + 16;
  *&STACK[0x310] = v171;
  v174 = vaddq_s64(v173, v172);
  v175 = vandq_s8(v171, v95);
  v245.val[0] = vshlq_u64(veorq_s8(v174, v85), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v155)));
  v176 = veorq_s8(v108, v87);
  v177 = veorq_s8(v108, a6);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), a7);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180, a8), vorrq_s8(v180, a76)), a76), v82);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), v84)), v127), v128);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), a5), v186), v137), v138);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v86);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v88);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v194 = vandq_s8(v154, v95);
  v195 = vaddq_s64(v193, v192);
  v196 = vandq_s8(*&STACK[0x320], v95);
  v245.val[3] = vshlq_u64(veorq_s8(v195, v85), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v155)));
  v197 = vandq_s8(*&STACK[0x330], v95);
  v198 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v202 = vbslq_s8(v83, vsubq_s64(v104, v198), vaddq_s64(v198, *&STACK[0x350]));
  v203 = vbslq_s8(v83, vsubq_s64(v104, v199), vaddq_s64(v199, *&STACK[0x350]));
  v204 = vbslq_s8(v83, vsubq_s64(v104, v200), vaddq_s64(v200, *&STACK[0x350]));
  v205 = vbslq_s8(v83, vsubq_s64(v104, v201), vaddq_s64(v201, *&STACK[0x350]));
  v199.i64[0] = vqtbl4q_s8(v245, *&STACK[0x300]).u64[0];
  v245.val[2] = veorq_s8(v203, v87);
  v245.val[3] = veorq_s8(v202, v87);
  v245.val[0] = veorq_s8(v202, a6);
  v206 = veorq_s8(v203, a6);
  v245.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v245.val[0]), a7);
  v245.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL), v206), a7);
  v207 = veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v245.val[0] = veorq_s8(v245.val[3], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL));
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL);
  v245.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v245.val[0]);
  v245.val[3] = vaddq_s64(v245.val[1], v207);
  v245.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v245.val[2], a8), vorrq_s8(v245.val[2], a76)), a76), v82);
  v245.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v245.val[3], a8), vorrq_s8(v245.val[3], a76)), a76), v82);
  v208 = veorq_s8(v245.val[3], vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v245.val[0] = veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL));
  v245.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL), v245.val[0]);
  v245.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v208);
  v245.val[3] = veorq_s8(vaddq_s64(vsubq_s64(v245.val[3], vandq_s8(vaddq_s64(v245.val[3], v245.val[3]), v84)), v127), v128);
  v245.val[2] = veorq_s8(vaddq_s64(vsubq_s64(v245.val[2], vandq_s8(vaddq_s64(v245.val[2], v245.val[2]), v84)), v127), v128);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v209 = veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL));
  v245.val[0] = veorq_s8(v245.val[3], v245.val[1]);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL);
  v245.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v245.val[0]);
  v245.val[3] = vaddq_s64(v245.val[1], v209);
  v245.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v245.val[3], v245.val[3]), a5), v245.val[3]), *&STACK[0x340]), v138);
  v245.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v245.val[2], v245.val[2]), a5), v245.val[2]), *&STACK[0x340]), v138);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v210 = veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL));
  v245.val[0] = veorq_s8(v245.val[3], v245.val[1]);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL);
  v245.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v245.val[0]);
  v245.val[3] = veorq_s8(vaddq_s64(v245.val[1], v210), v86);
  v245.val[2] = veorq_s8(v245.val[2], v86);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v211 = veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL));
  v245.val[0] = veorq_s8(v245.val[3], v245.val[1]);
  v245.val[1] = vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL);
  v245.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), v245.val[0]);
  v245.val[3] = veorq_s8(vaddq_s64(v245.val[1], v211), v88);
  v245.val[2] = veorq_s8(v245.val[2], v88);
  v245.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[3], 0x38uLL), v245.val[3], 8uLL), veorq_s8(v245.val[3], vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v155)));
  v245.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245.val[2], 0x38uLL), v245.val[2], 8uLL), veorq_s8(v245.val[2], vsraq_n_u64(vshlq_n_s64(v245.val[0], 3uLL), v245.val[0], 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v155)));
  v212 = veorq_s8(v204, v87);
  v213 = veorq_s8(v204, a6);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), a7);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v216, a8), vorrq_s8(v216, a76)), a76), v82);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(v219, vandq_s8(vaddq_s64(v219, v219), v84)), v127), v128);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), a5), v222), *&STACK[0x340]), v138);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v86);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v88);
  v245.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), v155)));
  v228 = veorq_s8(v205, v87);
  v229 = veorq_s8(v205, a6);
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), a7);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231);
  v233 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v232, a8), vorrq_s8(v232, a76)), a76), v82);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v235 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234);
  v236 = veorq_s8(vaddq_s64(vsubq_s64(v235, vandq_s8(vaddq_s64(v235, v235), v84)), v127), v128);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v238, v238), a5), v238), *&STACK[0x340]), v138);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v86);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242), v88);
  v245.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL))), v85), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v155)));
  v199.i64[1] = vqtbl4q_s8(v245, *&STACK[0x300]).u64[0];
  v245.val[2] = vrev64q_s8(*(v77 + v89));
  v245.val[3].i64[0] = 0xECECECECECECECECLL;
  v245.val[3].i64[1] = 0xECECECECECECECECLL;
  v245.val[2] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v245.val[2], v245.val[2], 8uLL), v245.val[3]), v199));
  *(v76 + v89 + 10) = vextq_s8(v245.val[2], v245.val[2], 8uLL);
  return (*(STACK[0x370] + 8 * (((a15 != v89) * v81) ^ v79)))();
}

uint64_t sub_1969B4070(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v13 + 4 * v10);
  v15 = v9 & 0x80000000;
  v16 = v10 + 1;
  v17 = *(v13 + 4 * v16);
  v18 = v14[397] ^ ((v17 & 0x7FFFFFFE | v15) >> 1);
  *v14 = (v18 + a1 - (a5 & (2 * v18))) ^ *(v11 + 4 * (v17 & ((v8 - v12 - 1694) ^ (a3 - 1))));
  return (*(a2 + 8 * (((v16 == 227) * a8) ^ v8)))();
}

uint64_t sub_1969B4150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a11;
  a17 = 1498 - 1825732043 * ((((2 * &a15) | 0x429361C2) - &a15 - 558477537) ^ 0x21DFE3D6);
  v19 = (*(v17 + 53584))(&a15);
  return (*(v17 + 8 * ((2185 * (a15 == ((v18 + 3045) ^ 0x142D))) ^ 0x11AFu)))(v19);
}

uint64_t sub_1969B4210()
{
  *(v6 - 184) = v4;
  *(v6 - 180) = 340188880;
  v7 = ((v6 - 176 + v1 - 2 * ((v6 - 176) & v1)) ^ 0xCC6C6B9920596851) * v3;
  v8 = v6 - 176;
  *(v8 + 24) = **(v5 + 8 * (v0 - 1839)) + v7;
  *(v8 + 32) = v7;
  v9 = v0 + 813653830 + v7;
  *(v6 - 168) = v9;
  *(v6 - 164) = v9 + 1;
  *(v6 - 160) = v0 - v7 - 1918690463;
  *(v6 - 176) = ((v0 + 813653830) ^ 0x1ED) + v7;
  *(v6 - 172) = v7;
  v10 = (*(v2 + 8 * (v0 + 4703)))(v6 - 176);
  return (*(v2 + 8 * *(v6 - 136)))(v10);
}

uint64_t sub_1969B42E8()
{
  *(v3 + 4) = v0;
  *(v5 - 144) = (v1 + 457) ^ (((v5 - 144) ^ 0x2CD47D9C) * v2);
  *(v5 - 136) = &v7;
  *(v5 - 128) = v3;
  return (*(v4 + 8 * ((v1 - 2604) ^ 0x1E0D)))(v5 - 144);
}

uint64_t sub_1969B42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, int a17, int a18, int *a19, unsigned int a20, unsigned int a21)
{
  v29 = (((&a16 | 0x9313FFF) - &a16 + (&a16 & 0xF6CEC000)) ^ 0x9A76CC8) * v24;
  a16 = v28;
  a17 = v25 + v29 + 12;
  a18 = (v23 + 1630) ^ v29;
  (*(v22 + 8 * (v23 + 2838)))(&a16);
  v30 = 489239129 * (((&a16 | 0xF08EC506) - (&a16 & 0xF08EC506)) ^ 0x49A6E630);
  a19 = v28;
  a20 = v30 + 426488402;
  a21 = v30 ^ 0x99603FFC;
  a16 = &a12;
  a17 = v30 + v23 + 171;
  (*(v22 + 8 * (v23 + 2854)))(&a16);
  v31 = *(v21 + 4);
  *v21 += a12;
  *(v21 + 4) = v31 + a13;
  v32 = *(v21 + 12);
  *(v21 + 8) += a14;
  *(v21 + 12) = v32 + a15;
  a16 = v28;
  a17 = v27 + (&a16 ^ 0xD5EEE191) * v26 + v23 - 2588;
  a19 = v21;
  v33 = (*(v22 + 8 * (v23 + 2826)))(&a16);
  *(v21 + 24) = 0u;
  return (*(v22 + 8 * v23))(v33);
}

uint64_t sub_1969B4494@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8, int a9, char a10)
{
  v15 = (((~&a5 | 0xFD214666) + (&a5 | 0x2DEB999)) ^ 0x248EAAF) * a2;
  a5 = v12 + 12;
  a8 = v13 - v15 - 2039;
  a6 = (v10 ^ 0x7D) - v15 + ((v10 << (((v13 - 123) | 0x89) + (v13 ^ 0xC3))) ^ 4) + 87;
  a10 = 123 - v15;
  a7 = v14;
  (*(v11 + 8 * (v13 + 954)))(&a5);
  return (*(v11 + 8 * ((4009 * (a9 == 1906281716)) ^ v13)))(a1);
}

uint64_t sub_1969B4568@<X0>(int a1@<W8>)
{
  v3 = (a1 + 1440410743) & 0xFBFF3FDD;
  *v1 = v10;
  v1[1] = v9;
  v1[2] = v8;
  v1[3] = v6;
  v11 = v3 - 1373251396 - 1790939281 * (((&v11 | 0x89E2072) - &v11 + (&v11 & 0xF761DF88)) ^ 0xF0420033);
  v12 = v7;
  (*(v2 + 8 * (v3 - 1373250670)))(&v11);
  v12 = v5;
  v11 = -1373251396 - 1790939281 * (((&v11 | 0xF09A84C1) + (~&v11 | 0xF657B3E)) ^ 0x846A481) + v3;
  (*(v2 + 8 * (v3 ^ 0x51DA25B2)))(&v11);
  return 0;
}

uint64_t sub_1969B46B8@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2342)))();
  *(v1 + 24) = 0;
  return sub_19698E278();
}

uint64_t sub_1969B4748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = v16 - 8;
  v25 = v24 + ((v14 + 1148935222) & 0xBB84A5EF ^ 0xFFFFFFFFFFFFFB31);
  v26.i64[0] = v23 + v24 - 3;
  v26.i64[1] = v23 + v25;
  v27.i64[0] = v23 + v24 - 1;
  v27.i64[1] = v23 + v24 - 2;
  v28.i64[0] = v23 + v24 - 5;
  v28.i64[1] = v23 + v24 - 6;
  v29.i64[0] = v23 + v24 - 7;
  v29.i64[1] = v23 + v24 - 8;
  v30.i64[0] = v22 + v24;
  v30.i64[1] = v17 + v24;
  v31.i64[0] = a8 + v24;
  v31.i64[1] = a7 + v24;
  v32.i64[0] = v18 + v24;
  v33.i64[0] = a6 + v24;
  v32.i64[1] = STACK[0x3F0] + v24;
  v33.i64[1] = v15 + v25;
  v34 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v35 = vandq_s8(v29, v34);
  v36 = vandq_s8(v28, v34);
  v37 = vandq_s8(v27, v34);
  v38 = vandq_s8(v26, v34);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vdupq_n_s64(0x38uLL);
  v44 = vdupq_n_s64(v20);
  v45 = vaddq_s64(v42, v44);
  v46 = vaddq_s64(v41, v44);
  v47 = vaddq_s64(v40, v44);
  v48 = vaddq_s64(v39, v44);
  v49 = vdupq_n_s64(0xAAF773659F930324);
  v50 = vdupq_n_s64(v13);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(v48, v49), vorrq_s8(v48, v50)), v50);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(v47, v49), vorrq_s8(v47, v50)), v50);
  v53 = vaddq_s64(vsubq_s64(vorrq_s8(v46, v49), vorrq_s8(v46, v50)), v50);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v49), vorrq_s8(v45, v50)), v50);
  v55 = vdupq_n_s64(v8);
  v56 = veorq_s8(v54, v55);
  v57 = veorq_s8(v53, v55);
  v58 = veorq_s8(v52, v55);
  v59 = veorq_s8(v51, v55);
  v60 = vdupq_n_s64(a4);
  v61 = veorq_s8(v51, v60);
  v62 = veorq_s8(v52, v60);
  v63 = veorq_s8(v53, v60);
  v64 = veorq_s8(v54, v60);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v67 = vaddq_s64(v65, v61);
  v68 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v69 = veorq_s8(v67, v68);
  v70 = veorq_s8(v66, v68);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v63), v68);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v64), v68);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v74 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v75 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v76 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v76);
  v81 = vaddq_s64(v77, v73);
  v82 = vdupq_n_s64(a1);
  v83 = veorq_s8(v81, v82);
  v84 = veorq_s8(vaddq_s64(v78, v74), v82);
  v85 = veorq_s8(vaddq_s64(v79, v75), v82);
  v86 = veorq_s8(v80, v82);
  v87 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v90 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v91 = veorq_s8(v85, v89);
  v92 = veorq_s8(v84, v88);
  v93 = veorq_s8(v83, v87);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v93);
  v98 = vaddq_s64(v96, v92);
  v99 = vaddq_s64(v95, v91);
  v100 = vaddq_s64(v94, v90);
  v101 = vdupq_n_s64(v9);
  v102 = vdupq_n_s64(a2);
  v103 = vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(v97, v97), v101)), v102);
  v104 = vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v101)), v102);
  v105 = vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v101)), v102);
  v106 = vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v101)), v102);
  v107 = vdupq_n_s64(v10);
  v108 = veorq_s8(v106, v107);
  v109 = veorq_s8(v105, v107);
  v110 = veorq_s8(v104, v107);
  v111 = veorq_s8(v103, v107);
  v112 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v115 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v116 = veorq_s8(v110, v114);
  v117 = veorq_s8(v109, v113);
  v118 = veorq_s8(v108, v112);
  v119 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v118);
  v123 = vaddq_s64(v119, v115);
  v124 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v125 = veorq_s8(v123, v124);
  v126 = veorq_s8(vaddq_s64(v120, v116), v124);
  v127 = veorq_s8(vaddq_s64(v121, v117), v124);
  v128 = veorq_s8(v122, v124);
  v129 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v133 = veorq_s8(v127, v131);
  v134 = veorq_s8(v126, v130);
  v135 = veorq_s8(v125, v129);
  v136 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v135);
  v140 = vaddq_s64(v138, v134);
  v141 = vaddq_s64(v137, v133);
  v142 = vaddq_s64(v136, v132);
  v143 = vdupq_n_s64(v21);
  v144 = vdupq_n_s64(v11);
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v142, v143), vorrq_s8(v142, v144)), v144);
  v146 = vaddq_s64(vsubq_s64(vorrq_s8(v141, v143), vorrq_s8(v141, v144)), v144);
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v143), vorrq_s8(v140, v144)), v144);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v139, v143), vorrq_s8(v139, v144)), v144);
  v149 = vdupq_n_s64(a3);
  v150 = veorq_s8(v148, v149);
  v151 = veorq_s8(v147, v149);
  v152 = veorq_s8(v146, v149);
  v153 = veorq_s8(v145, v149);
  v154 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v159);
  v164 = vaddq_s64(v162, v158);
  v165 = vaddq_s64(v161, v157);
  v166 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v167 = veorq_s8(v165, v166);
  v168 = veorq_s8(v164, v166);
  v169 = veorq_s8(v163, v166);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160), v166);
  v171 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v174 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, v171));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, v172));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v174);
  v179 = vdupq_n_s64(0xBE1EC949B5D0EDD2);
  v180 = vdupq_n_s64(0xA0F09B5B25178916);
  v181 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v179), v175), v180);
  v182 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v179), v176), v180);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v179), v177), v180);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v179), v178), v180);
  v185 = vdupq_n_s64(0xBC0D9890D90D557uLL);
  v186 = vshlq_u64(veorq_s8(v181, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v43)));
  v187 = vshlq_u64(veorq_s8(v182, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v43)));
  v188 = vshlq_u64(veorq_s8(v183, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v43)));
  v189 = vshlq_u64(veorq_s8(v184, v185), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v43)));
  v190 = vandq_s8(v33, v34);
  v191 = vandq_s8(v31, v34);
  v192 = vandq_s8(v30, v34);
  v193 = vandq_s8(v32, v34);
  v194 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v198 = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  v199 = vaddq_s64(v197, v198);
  v200 = vaddq_s64(v196, v198);
  v201 = vaddq_s64(v195, v198);
  v202 = vaddq_s64(v194, v198);
  v203 = vdupq_n_s64(0x2DC8F1952FF42167uLL);
  v204 = vdupq_n_s64(v12);
  v205 = vaddq_s64(vsubq_s64(vorrq_s8(v202, v203), vorrq_s8(v202, v204)), v204);
  v206 = vaddq_s64(vsubq_s64(vorrq_s8(v201, v203), vorrq_s8(v201, v204)), v204);
  v207 = vaddq_s64(vsubq_s64(vorrq_s8(v200, v203), vorrq_s8(v200, v204)), v204);
  v208 = vaddq_s64(vsubq_s64(vorrq_s8(v199, v203), vorrq_s8(v199, v204)), v204);
  v209 = vdupq_n_s64(0xA6A29A9251BD41F6);
  v210 = veorq_s8(v208, v209);
  v211 = veorq_s8(v207, v209);
  v212 = veorq_s8(v206, v209);
  v213 = veorq_s8(v205, v209);
  v214 = vdupq_n_s64(0xCA402CA53D54B087);
  v215 = veorq_s8(v205, v214);
  v216 = veorq_s8(v206, v214);
  v217 = veorq_s8(v207, v214);
  v218 = veorq_s8(v208, v214);
  v219 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v216);
  v221 = vaddq_s64(v219, v215);
  v222 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v217), v222);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v218), v222);
  v227 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v229 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v230 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v231 = veorq_s8(v224, v228);
  v232 = veorq_s8(v223, v227);
  v233 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v232);
  v237 = vaddq_s64(v235, v231);
  v238 = vaddq_s64(v234, v230);
  v239 = vaddq_s64(v233, v229);
  v240 = vdupq_n_s64(0x5104AEDE8DC1A9F6uLL);
  v241 = vdupq_n_s64(0xA882576F46E0D4FBLL);
  v242 = vaddq_s64(vsubq_s64(v236, vandq_s8(vaddq_s64(v236, v236), v240)), v241);
  v243 = vaddq_s64(vsubq_s64(v237, vandq_s8(vaddq_s64(v237, v237), v240)), v241);
  v244 = vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), v240)), v241);
  v245 = vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), v240)), v241);
  v246 = vdupq_n_s64(0x150D2B9258E743E0uLL);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v254 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v255 = veorq_s8(v249, v253);
  v256 = veorq_s8(v248, v252);
  v257 = veorq_s8(v247, v251);
  v258 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v257);
  v262 = vaddq_s64(v260, v256);
  v263 = vaddq_s64(v259, v255);
  v264 = vaddq_s64(v258, v254);
  v265 = vdupq_n_s64(0x961131FD6C4BA1E6);
  v266 = vdupq_n_s64(0xB4F7670149DA2F0CLL);
  v267 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261, v261), v265), v261), v266);
  v268 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v262, v262), v265), v262), v266);
  v269 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v263, v263), v265), v263), v266);
  v270 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v264, v264), v265), v264), v266);
  v271 = vdupq_n_s64(0x497C343F90B06C38uLL);
  v272 = veorq_s8(v270, v271);
  v273 = veorq_s8(v269, v271);
  v274 = veorq_s8(v268, v271);
  v275 = veorq_s8(v267, v271);
  v276 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v279 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v280 = veorq_s8(v274, v278);
  v281 = veorq_s8(v273, v277);
  v282 = veorq_s8(v272, v276);
  v283 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v282);
  v287 = vaddq_s64(v285, v281);
  v288 = vaddq_s64(v284, v280);
  v289 = vaddq_s64(v283, v279);
  v290 = vdupq_n_s64(0x4EE1F510E21A30FAuLL);
  v291 = vdupq_n_s64(0x588F05778EF2E782uLL);
  v292 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286, v286), v290), v286), v291);
  v293 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), v290), v287), v291);
  v294 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), v290), v288), v291);
  v295 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v289, v289), v290), v289), v291);
  v296 = vdupq_n_s64(0x5248DF72EA336409uLL);
  v297 = veorq_s8(v295, v296);
  v298 = veorq_s8(v294, v296);
  v299 = veorq_s8(v293, v296);
  v300 = veorq_s8(v292, v296);
  v301 = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  v302 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v303 = vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL);
  v304 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v282, 3uLL), v282, 0x3DuLL));
  v305 = veorq_s8(v299, v303);
  v306 = veorq_s8(v298, v302);
  v307 = veorq_s8(v297, v301);
  v308 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v310 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v311 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v307);
  v312 = vaddq_s64(v308, v304);
  v313 = vdupq_n_s64(0x6190A7627E7D0B79uLL);
  v314 = veorq_s8(v312, v313);
  v315 = veorq_s8(vaddq_s64(v309, v305), v313);
  v316 = veorq_s8(vaddq_s64(v310, v306), v313);
  v317 = veorq_s8(v311, v313);
  v318 = vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v306, 3uLL), v306, 0x3DuLL);
  v321 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL));
  v322 = veorq_s8(v316, v320);
  v323 = veorq_s8(v315, v319);
  v324 = veorq_s8(v314, v318);
  v325 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL);
  v327 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v328 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v324);
  v329 = vaddq_s64(v327, v323);
  v330 = vaddq_s64(v326, v322);
  v331 = vaddq_s64(v325, v321);
  v332 = vdupq_n_s64(0x87548A189F8CC3D8);
  v333 = vdupq_n_s64(0x3C55BAF3B0399E14uLL);
  v334 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v328, v328), v332), v328), v333);
  v335 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v329, v329), v332), v329), v333);
  v336 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v330, v330), v332), v330), v333);
  v337 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v331, v331), v332), v331), v333);
  v338 = vdupq_n_s64(0x4DE72BC67BFB46B2uLL);
  v339 = veorq_s8(v337, v338);
  v340 = veorq_s8(v336, v338);
  v341 = veorq_s8(v335, v338);
  v342 = veorq_s8(v334, v338);
  v343 = vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL);
  v346 = veorq_s8(v342, vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL));
  v347 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), veorq_s8(v339, v343));
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), veorq_s8(v340, v344));
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), veorq_s8(v341, v345));
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v342, 0x38uLL), v342, 8uLL), v346);
  v351 = vdupq_n_s64(0xEB1F931E35D5B2D0);
  v352 = vdupq_n_s64(0x758FC98F1AEAD968uLL);
  v353 = vaddq_s64(vsubq_s64(v347, vandq_s8(vaddq_s64(v347, v347), v351)), v352);
  v354 = vaddq_s64(vsubq_s64(v348, vandq_s8(vaddq_s64(v348, v348), v351)), v352);
  v355 = vaddq_s64(vsubq_s64(v349, vandq_s8(vaddq_s64(v349, v349), v351)), v352);
  v356 = vaddq_s64(vsubq_s64(v350, vandq_s8(vaddq_s64(v350, v350), v351)), v352);
  v357 = vdupq_n_s64(0x243488FEB5071F40uLL);
  v358 = vshlq_u64(veorq_s8(v354, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v43)));
  v360.val[3] = veorq_s8(vshlq_u64(veorq_s8(v356, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v43))), v189);
  v360.val[2] = veorq_s8(vshlq_u64(veorq_s8(v355, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v43))), v188);
  v360.val[0] = veorq_s8(v358, v187);
  v360.val[1] = veorq_s8(vshlq_u64(veorq_s8(v353, v357), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v43))), v186);
  *v32.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v360, xmmword_196EBFAE0)), *(v23 + v24 - 8));
  return (*(STACK[0x248] + 8 * ((5394 * (v19 == v24)) ^ v14)))();
}

uint64_t sub_1969B4750@<X0>(uint64_t a1@<X8>)
{
  *&v13 = v2 + v1 - 15;
  *(&v13 + 1) = v2 + v1 - 16;
  *&STACK[0x3B0] = v13;
  *&v13 = v2 + v1 - 13;
  *(&v13 + 1) = v2 + v1 - 14;
  *&STACK[0x3A0] = v13;
  v14.i64[0] = v2 + v1 - 5;
  v14.i64[1] = v2 + v1 - 6;
  v15.i64[0] = v2 + v1 - 3;
  v15.i64[1] = v2 + v1 - 4;
  v16.i64[0] = v1 + v2 - 1;
  v16.i64[1] = v2 + v1 - 2;
  v17.i64[0] = v2 + v1 - 7;
  v17.i64[1] = v2 + v1 + ((3 * (v5 ^ 0x87Au)) ^ v3);
  v18 = *&STACK[0x370];
  v19 = vandq_s8(v17, *&STACK[0x370]);
  v20 = vandq_s8(v16, *&STACK[0x370]);
  v21 = vandq_s8(v15, *&STACK[0x370]);
  v22 = vandq_s8(v14, *&STACK[0x370]);
  v23 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v24 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v25 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v26 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v27 = vaddq_s64(v26, *&STACK[0x410]);
  v28 = vaddq_s64(v25, *&STACK[0x410]);
  v29 = vaddq_s64(v24, *&STACK[0x410]);
  v30 = *&STACK[0x350];
  v31 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v26), *&STACK[0x400]), v27), vandq_s8(v27, *&STACK[0x3F0]));
  v32 = vaddq_s64(v23, *&STACK[0x410]);
  v33 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v25), *&STACK[0x400]), v28), vandq_s8(v28, *&STACK[0x3F0]));
  v34 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v24), *&STACK[0x400]), v29), vandq_s8(v29, *&STACK[0x3F0]));
  v35 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x350], v23), *&STACK[0x400]), v32), vandq_s8(v32, *&STACK[0x3F0]));
  v36 = veorq_s8(v35, *&STACK[0x340]);
  v37 = veorq_s8(v34, *&STACK[0x340]);
  v38 = *&STACK[0x340];
  v39 = veorq_s8(v34, v7);
  v40 = veorq_s8(v35, v7);
  v41 = *&STACK[0x320];
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v39), *&STACK[0x320]);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v40), *&STACK[0x320]);
  v44 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v45 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v48 = veorq_s8(vaddq_s64(v46, v44), *&STACK[0x3E0]);
  v49 = veorq_s8(v47, *&STACK[0x3E0]);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v53 = *&STACK[0x300];
  v52 = *&STACK[0x310];
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), *&STACK[0x310]);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), *&STACK[0x310]);
  v56 = *&STACK[0x270];
  v57 = *&STACK[0x2E0];
  v58 = *&STACK[0x2F0];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, *&STACK[0x300]), vorrq_s8(v54, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x2F0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, *&STACK[0x300]), vorrq_s8(v55, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x2F0]);
  v61 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v62);
  v66 = *&STACK[0x3C0];
  v67 = *&STACK[0x3D0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), *&STACK[0x2E0]), v65), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), *&STACK[0x2E0]), v64), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v9), v75), v10), v11);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v9), v74), v10), v11);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), v12);
  v83 = veorq_s8(v81, v12);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v86.i64[0] = v2 + v1 - 11;
  v86.i64[1] = v2 + v1 - 12;
  *&STACK[0x380] = v86;
  v187.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), veorq_s8(v82, v84)), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v6)));
  v187.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v85), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v6)));
  v87 = veorq_s8(v33, v38);
  v88 = veorq_s8(v33, v7);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), v41);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = *&STACK[0x3E0];
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x3E0]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v52);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v53), vorrq_s8(v94, v56)), v56), v58);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = v57;
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v57), v97), v67), v66);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v9), v101), v10), v11);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v12);
  v57.i64[0] = v2 + v1 - 9;
  v57.i64[1] = v2 + v1 - 10;
  *&STACK[0x390] = v57;
  v105 = vandq_s8(v57, v18);
  v187.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v6)));
  v106 = veorq_s8(v31, v38);
  v107 = veorq_s8(v31, v7);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v41);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v91);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v52);
  v113 = v52;
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v53), vorrq_s8(v112, v56)), v56), v58);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v98), v116), v67), v66);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), v9), v119), v10), v11);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v12);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = vandq_s8(v86, v18);
  v126 = vaddq_s64(v124, v123);
  v127 = vandq_s8(*&STACK[0x3A0], v18);
  v187.val[3] = vshlq_u64(veorq_s8(v126, v8), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v6)));
  v128 = vandq_s8(*&STACK[0x3B0], v18);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v133 = vaddq_s64(v132, *&STACK[0x410]);
  v134 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v132), *&STACK[0x400]), v133), vandq_s8(v133, *&STACK[0x3F0]));
  v135 = vaddq_s64(v131, *&STACK[0x410]);
  v136 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v131), *&STACK[0x400]), v135), vandq_s8(v135, *&STACK[0x3F0]));
  v137 = vaddq_s64(v130, *&STACK[0x410]);
  v138 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v130), *&STACK[0x400]), v137), vandq_s8(v137, *&STACK[0x3F0]));
  v139 = vaddq_s64(v129, *&STACK[0x410]);
  v140 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v30, v129), *&STACK[0x400]), v139), vandq_s8(v139, *&STACK[0x3F0]));
  v139.i64[0] = vqtbl4q_s8(v187, *&STACK[0x280]).u64[0];
  v187.val[1] = veorq_s8(v140, v38);
  v187.val[2] = veorq_s8(v138, v38);
  v187.val[3] = veorq_s8(v138, v7);
  v187.val[0] = veorq_s8(v140, v7);
  v187.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[3]), v41);
  v187.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL), v187.val[0]), v41);
  v141 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v142, v187.val[3]), v91);
  v187.val[1] = veorq_s8(v187.val[1], v91);
  v143 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v143);
  v144 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v144, v187.val[3]), v113);
  v187.val[1] = veorq_s8(v187.val[1], v113);
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187.val[2], v53), vorrq_s8(v187.val[2], v56)), v56), v58);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187.val[1], v53), vorrq_s8(v187.val[1], v56)), v56), v58);
  v145 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v145);
  v146 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = vaddq_s64(v146, v187.val[3]);
  v147 = v98;
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187.val[2], v187.val[2]), v98), v187.val[2]), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187.val[1], v187.val[1]), v98), v187.val[1]), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v148 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = vaddq_s64(v149, v187.val[3]);
  v187.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187.val[2], v187.val[2]), v9), v187.val[2]), v10), v11);
  v187.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187.val[1], v187.val[1]), v9), v187.val[1]), v10), v11);
  v150 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL);
  v187.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]);
  v187.val[2] = veorq_s8(vaddq_s64(v151, v187.val[3]), v12);
  v187.val[1] = veorq_s8(v187.val[1], v12);
  v152 = vsraq_n_u64(vshlq_n_s64(v187.val[3], 3uLL), v187.val[3], 0x3DuLL);
  v187.val[3] = veorq_s8(v187.val[1], vsraq_n_u64(vshlq_n_s64(v187.val[0], 3uLL), v187.val[0], 0x3DuLL));
  v187.val[0] = veorq_s8(v187.val[2], v152);
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[1], 0x38uLL), v187.val[1], 8uLL), v187.val[3]), v8);
  v187.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187.val[2], 0x38uLL), v187.val[2], 8uLL), v187.val[0]), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v6)));
  v187.val[2] = vshlq_u64(v153, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v6)));
  v154 = veorq_s8(v136, v38);
  v155 = veorq_s8(v136, v7);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v41);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v91);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v113);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v53), vorrq_s8(v160, v56)), v56), v58);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v98), v163), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), v9), v166), v10), v11);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v12);
  v187.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v6)));
  v170 = veorq_s8(v134, v38);
  v171 = veorq_s8(v134, v7);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v41);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v91);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v113);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v53), vorrq_s8(v176, v56)), v56), v58);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v147), v179), *&STACK[0x3D0]), *&STACK[0x3C0]);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), v9), v182), v10), v11);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v12);
  v187.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL))), v8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v6)));
  v139.i64[1] = vqtbl4q_s8(v187, *&STACK[0x280]).u64[0];
  v187.val[1] = vrev64q_s8(*(v1 + v2 - 1 - 15));
  v187.val[2].i64[0] = 0xECECECECECECECECLL;
  v187.val[2].i64[1] = 0xECECECECECECECECLL;
  v187.val[1] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v187.val[1], v187.val[1], 8uLL), v187.val[2]), v139));
  *(a1 - 15 + v2 - 1) = vextq_s8(v187.val[1], v187.val[1], 8uLL);
  return (*(STACK[0x248] + 8 * (((v2 == 16) * v4) ^ v5)))();
}

uint64_t sub_1969B5220()
{
  *&STACK[0x330] = vdupq_n_s64(0x7B0E7BDAC39050F6uLL);
  *&STACK[0x340] = vdupq_n_s64(v0);
  *&STACK[0x320] = vdupq_n_s64(0xE81C96B255F67EuLL);
  *&STACK[0x240] = vdupq_n_s64(0xFF17E3694DAA0981);
  *&STACK[0x2A0] = vdupq_n_s64(0x9A49C0E087253006);
  *&STACK[0x2B0] = vdupq_n_s64(0x320F25771ED3415AuLL);
  *&STACK[0x280] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x290] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(0x495277C57CB43DB7uLL);
  *&STACK[0x270] = vdupq_n_s64(0x1031C100296D42A8uLL);
  *&STACK[0x220] = vdupq_n_s64(0x7E3B4F6C9B27BABFuLL);
  *&STACK[0x230] = vdupq_n_s64(0xEFCE3EFFD692BD57);
  *&STACK[0x300] = vdupq_n_s64(0xE0812DB994C761B7);
  *&STACK[0x310] = vdupq_n_s64(0x81C4B09364D84540);
  *&STACK[0x2E0] = vdupq_n_s64(0x2284C6370AD74C78uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x4647DA357A539214uLL);
  *&STACK[0x250] = vdupq_n_s64(0x93D6231FC69D7080);
  *&STACK[0x200] = vdupq_n_s64(0x3614EE701CB147BFuLL);
  *&STACK[0x210] = vdupq_n_s64(0xB9B825CA85AC6DEBLL);
  return sub_19692C074(0x93D6231FC69D7080, -1658681108);
}

uint64_t sub_1969B549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = a5 - 1;
  v24 = (a7 + v23);
  v25 = a1 + v23 + a6;
  v26 = __ROR8__((a7 + v23) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + v19) | a3) - ((v26 + v19) | v13) + v13;
  v28 = v27 ^ 0xE31E315EF085E4F6;
  v27 ^= 0x4B58D4C9697395AAuLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ v16;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v18;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - (a2 & (2 * (v33 + v32))) + v10) ^ 0xC3B707E0F6E3CF25;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x61459D2AF01F24F7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8) + v37;
  v39 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((v39 + v20) | 0x2DC8F1952FF42167) - ((v39 + v20) | v12) + v12;
  v41 = v40 ^ 0xA6A29A9251BD41F6;
  v40 ^= 0xCA402CA53D54B087;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v11 - (v38 | v11) + (v38 | 0x2A5B041CB8105979)) ^ 0x4E98181EC8948715;
  v46 = v45 ^ __ROR8__(v37, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = (v44 + v43 - ((2 * (v44 + v43)) & 0x5104AEDE8DC1A9F6) - 0x577DA890B91F2B05) ^ 0x150D2B9258E743E0;
  v49 = v48 ^ __ROR8__(v43, 61);
  v50 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v51 = __ROR8__(v48, 8);
  v52 = (((2 * (v51 + v49)) & 0x961131FD6C4BA1E6) - (v51 + v49) - 0x4B0898FEB625D0F4) ^ 0x497C343F90B06C38;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) & 0x4EE1F510E21A30FALL) - (v54 + v53) + 0x588F05778EF2E782) ^ v22;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x6190A7627E7D0B79;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = ((v21 | (2 * (v59 + v58))) - (v59 + v58) + v14) ^ v15;
  v61 = __ROR8__(v60, 8);
  v62 = __ROR8__(v58, 61);
  v63 = ((v61 + (v60 ^ v62) - (a4 & (2 * (v61 + (v60 ^ v62)))) + a8) ^ v9) >> (8 * (v25 & 7u));
  v64 = STACK[0x410];
  *v25 = v63 ^ (((((2 * v50) & 0xBE1EC949B5D0EDD2) - v50 - 0x5F0F64A4DAE876EALL) ^ 0xBC0D9890D90D557) >> (8 * (v24 & 7u))) ^ *v24;
  return (*(v17 + 8 * ((v23 != 0) ^ (a9 - 2814))))(v64);
}

uint64_t sub_1969B5858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  v40 = (v35 - 123404896) & 0x75B0DBB;
  v41 = v35;
  *(v39 - 112) = (v35 + 5034) ^ (998242381 * ((v39 - 144) ^ 0xAA6F98D6));
  *(v39 - 128) = &a35;
  *(v39 - 144) = a28;
  *(v39 - 120) = v36 + 12;
  (*(v37 + 8 * (v35 ^ 0x1B08)))(v39 - 144);
  return (*(v37 + 8 * ((2716 * (*(v39 - 136) == (v40 ^ (v38 - 2821)))) ^ v41)))(a32);
}

void sub_1969B5904(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3, uint64_t a4)
{
  a4 = a1;
  a3 = (753662761 * (((&a3 | 0x6292C9CB) - (&a3 & 0x6292C9CB)) ^ 0x7883280)) ^ 0x73E;
  (*(a2 + 55824))(&a3);
  JUMPOUT(0x1969B5970);
}

uint64_t sub_1969B59C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (v9 + a8 + 16);
  v13 = v10[1];
  *(v12 - 1) = *v10;
  *v12 = v13;
  return (*(v11 + 8 * ((((a2 & 0x60) == 32) * ((v8 + 3255) ^ 0x3D3)) ^ v8)))();
}

uint64_t sub_1969B6190@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q3>)
{
  v10 = (v7 + (a3 + v5));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + a3);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a5)), a4);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a4);
  return (*(v8 + 8 * ((56 * (a3 + 32 != (v6 - a2 + 115) - 51)) ^ (v9 + v6 + 649))))();
}

uint64_t sub_1969B61FC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v3 - 1;
  *(v9 + v10) = *(v7 + (v10 & 0xF)) ^ *(v4 + v10) ^ *(v5 + (v10 & 0xF) + 2) ^ ((v10 & 0xF) * ((a3 + 40) ^ 0xD1)) ^ *(v6 + (v10 & 0xF) + 2);
  return (*(v8 + 8 * ((44 * (v10 == 0)) ^ (a3 + 2466))))();
}

uint64_t sub_1969B62AC@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v15 = (a5 + 4 * v14);
  v16 = (a3 ^ HIDWORD(v13) ^ a4) + (*v15 ^ a7) + a2 * (*(v8 + 4 * v14) ^ a7);
  *(v15 - 1) = (v16 + v10 - (v9 & (2 * v16))) ^ a6;
  return (*(v12 + 8 * (((v14 + 1 == v7) * v11) ^ a1)))();
}

uint64_t sub_1969B63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v9 = v7 + a1;
  v10 = vaddq_s8(vsubq_s8(*(v6 + v9 + 16), vandq_s8(vaddq_s8(*(v6 + v9 + 16), *(v6 + v9 + 16)), a4)), a5);
  v11 = (a2 + v9);
  *v11 = vaddq_s8(vsubq_s8(*(v6 + v9), vandq_s8(vaddq_s8(*(v6 + v9), *(v6 + v9)), a4)), a5);
  v11[1] = v10;
  return (*(v5 + 8 * (((8 * (v8 == v9)) | ((v8 == v9) << 6)) ^ (a3 + 2345))))();
}

uint64_t sub_1969B6FF4@<X0>(int a1@<W8>)
{
  v8 = v1 - 2;
  v9 = v2 + 2;
  *(v8 + 91) = (v9 ^ v5) * (v9 + 17);
  *(v8 + v4) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ (a1 + 636))))();
}

uint64_t sub_1969B7004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char a14, int a15, int a16, char a17, uint64_t a18, char *a19, char *a20, char *a21)
{
  a21 = a13;
  a19 = &a14;
  LODWORD(a20) = (v21 + 2479) ^ (1825732043 * ((&a19 & 0x554DCF21 | ~(&a19 | 0x554DCF21)) ^ 0xAA2463E9));
  (*(v23 + 8 * (v21 + 6102)))(&a19);
  a20 = a13;
  a21 = &a17;
  LODWORD(a19) = v21 - 1575331711 * (((&a19 | 0x7778312B) - &a19 + (&a19 & 0x8887CED0)) ^ 0x1B23A429) + 1486;
  (*(v23 + 8 * (v21 + 6075)))(&a19);
  a19 = a13;
  HIDWORD(a20) = v21 - 489239129 * (&a19 ^ 0xB9282336) + 150;
  v24 = (*(v23 + 8 * (v21 ^ 0x1843)))(&a19);
  return (*(v23 + 8 * ((495 * ((((v21 ^ 0xC7) + 1) ^ (a20 == v22 + v21 + 41 - 796)) & 1)) ^ v21)))(v24);
}

uint64_t sub_1969B72F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>)
{
  v9 = v7[5];
  v10 = v7[6] + 75;
  v11 = (v7[4] ^ 0x3F) + 2 * (v7[4] & 0x3F) - 7;
  v12 = v10 & 0xA0 | 0x1D;
  v13 = 654144011 * ((v8 - 144) ^ 0x2CD47D9C);
  *(v8 - 128) = a3;
  *(v8 - 136) = v11 ^ (11 * ((v8 + 112) ^ 0x9C));
  *(v8 - 144) = a2;
  *(v8 - 135) = 11 * ((v8 + 112) ^ 0x9C) + v9 - (((a4 - 87) & 0xB6 ^ 0xF4) & (2 * v9)) - 77;
  *(v8 - 116) = (v6 ^ ((v6 ^ 0x3044DC7A) - 1104892046) ^ ((v6 ^ 0x12860442) - 1662617782) ^ ((v6 ^ 0xA8A2AB31) + 650303547) ^ ((v6 ^ 0xFBFFFFFD) + 1973390583) ^ 0xE6B4FC2E) + v13;
  *(v8 - 112) = (a4 + 4319) ^ v13;
  *(v8 - 120) = (11 * ((v8 + 112) ^ 0x9C)) ^ v10 ^ (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & (2 * ((v10 ^ 0x36) & 0x16 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0xED;
  (*(v5 + 8 * (a4 + 6119)))(v8 - 144);
  result = a1;
  *v4 = -1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1969B7518@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = (a1 + v3);
  *&v6 = 0xECECECECECECECECLL;
  *(&v6 + 1) = 0xECECECECECECECECLL;
  *v5 = v6;
  v5[1] = v6;
  return (*(v4 + 8 * ((8015 * (((v2 - 1905527053) & 0x71941FDF ^ 0x17F7) == (a2 & 0xFFFFFFFFFFFFFFE0))) ^ (v2 + 2851))))();
}

uint64_t sub_1969B75D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + v9 + 16);
  v13 = (a5 + v8 + 16);
  *(v13 - 1) = *(a7 + v9);
  *v13 = v12;
  return (*(v11 + 8 * ((4579 * ((v7 & 0xFFFFFFFFFFFFFFE0) - (a1 - 317) == -2166)) ^ v10)))();
}

void sub_1969B762C()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((((v5 + 1136671068) & 0xBC3FD5FD) - 3201) | 0xA14) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969B779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 136) = v16 + 1283153057 * ((-853122155 - ((v18 - 144) | 0xCD266395) + ((v18 - 144) | 0x32D99C6A)) ^ 0x7D019F5D) + 2333;
  *(v18 - 112) = &a13;
  *(v18 - 104) = v14;
  *(v18 - 128) = v13;
  *(v18 - 120) = &a11;
  *(v18 - 144) = &a11;
  v19 = (*(v17 + 8 * (v16 + 4988)))(v18 - 144);
  return (*(v17 + 8 * ((97 * (((269 * (v16 ^ 0x71E) - 1694) ^ 0xA599B6CF) + v15 < 0x7FFFFFFF)) ^ (269 * (v16 ^ 0x71E)))))(v19);
}

uint64_t sub_1969B7C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v28 = *(v25 + 40);
  v29 = *(v25 + 8);
  *(v26 - 196) = (v23 + 4782) ^ 0x189C;
  v30 = veorq_s8(*v28, xmmword_196EBFA80);
  *(v26 - 128) = veorq_s8(*v29, xmmword_196EBFA90);
  *(v26 - 112) = v30;
  v31 = *(v24 + 8 * (v23 ^ (35 * (v27 == 0))));
  *(v26 - 200) = -42900;
  return v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1969B7D44@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = ((((v2 ^ 0x656A) - 25962) ^ ((v2 ^ 0x9DFA) + 25094) ^ (v1 - 9641 + (v2 ^ (6 * (v1 ^ 0x67B)) ^ 0x1965))) + 22649);
  v5 = v4 < 0x71AE;
  v6 = v4 > (a1 + 29102);
  if (a1 > 0x8E51u != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((2278 * v6) ^ v1)))();
}

uint64_t sub_1969B7E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = v73 - 16;
  v80.i64[0] = v76 + v79 - 7;
  v80.i64[1] = v76 + v79 - 8;
  *&STACK[0x330] = v80;
  v80.i64[0] = v76 + v79 - 5;
  v80.i64[1] = v76 + v79 - 6;
  *&STACK[0x3E0] = v80;
  v81.i64[0] = v76 + v79 + 3;
  v81.i64[1] = v76 + v79 + 2;
  v82.i64[0] = v76 + v79 + 5;
  v82.i64[1] = v76 + v79 + 4;
  v83.i64[0] = v76 + v79 + 7;
  v83.i64[1] = v76 + v79 + 6;
  *&STACK[0x300] = v83;
  v80.i64[0] = v76 + v79 + ((v74 + 1217) ^ v72) + 8;
  v80.i64[1] = v76 + v79;
  *&STACK[0x320] = v80;
  v84 = vandq_s8(v80, *&STACK[0x3C0]);
  v85 = vandq_s8(v83, *&STACK[0x3C0]);
  v86 = vandq_s8(v82, *&STACK[0x3C0]);
  v87 = vandq_s8(v81, *&STACK[0x3C0]);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  *&STACK[0x310] = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = *&STACK[0x2C0];
  v90 = *&STACK[0x2D0];
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), *&STACK[0x2D0]);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), *&STACK[0x2D0]);
  v93 = veorq_s8(v92, *&STACK[0x410]);
  v94 = veorq_s8(v91, *&STACK[0x410]);
  v95 = veorq_s8(v91, *&STACK[0x400]);
  v96 = veorq_s8(v92, *&STACK[0x400]);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x2C0]), vorrq_s8(v97, a71)), a71), *&STACK[0x2B0]);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v98, *&STACK[0x2C0]), vorrq_s8(v98, a71)), a71), *&STACK[0x2B0]);
  v101 = *&STACK[0x2B0];
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v103 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = *&STACK[0x290];
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v102), *&STACK[0x2A0]);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103), *&STACK[0x2A0]);
  v107 = *&STACK[0x2A0];
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v109 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v110 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = vaddq_s64(v110, v108);
  v113 = *&STACK[0x280];
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), *&STACK[0x290]), v112), *&STACK[0x3F0]), *&STACK[0x280]);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), *&STACK[0x290]), v111), *&STACK[0x3F0]), *&STACK[0x280]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v117 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v118 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v122 = *&STACK[0x390];
  v121 = *&STACK[0x3A0];
  v123 = *&STACK[0x340];
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, *&STACK[0x3A0]), vorrq_s8(v119, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, *&STACK[0x3A0]), vorrq_s8(v120, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v77);
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v127), v77);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v131);
  v134 = vaddq_s64(v132, v130);
  v135 = *&STACK[0x370];
  v136 = *&STACK[0x380];
  v137 = *&STACK[0x360];
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x380]), v134), *&STACK[0x370]), *&STACK[0x360]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x380]), v133), *&STACK[0x370]), *&STACK[0x360]);
  v140 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v141 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v131.i64[0] = v76 + v79 - 3;
  v131.i64[1] = v76 + v79 - 4;
  *&STACK[0x3D0] = v131;
  v143 = vaddq_s64(v88, v90);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, v140));
  v145 = vaddq_s64(v142, v141);
  v147 = *&STACK[0x250];
  v146 = *&STACK[0x260];
  v148 = *&STACK[0x230];
  v131.i64[0] = -1;
  v131.i64[1] = -1;
  v149 = *&STACK[0x200];
  v150 = *&STACK[0x3B0];
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v144, *&STACK[0x260]), *&STACK[0x250]), veorq_s8(vandq_s8(v144, *&STACK[0x230]), v78)), v131), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), *&STACK[0x3B0])));
  v260.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v145, *&STACK[0x260]), *&STACK[0x250]), veorq_s8(vandq_s8(v145, *&STACK[0x230]), v78)), v131), *&STACK[0x200]), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), *&STACK[0x3B0])));
  v151 = *&STACK[0x410];
  v152 = veorq_s8(v143, *&STACK[0x410]);
  v153 = *&STACK[0x400];
  v154 = veorq_s8(v143, *&STACK[0x400]);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v89), vorrq_s8(v155, a71)), a71), v101);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v107);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = *&STACK[0x3F0];
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), v104), v160), *&STACK[0x3F0]), v113);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v121), vorrq_s8(v164, v123)), v123), v122);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v77);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = v136;
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v136), v169), v135), v137);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v168.i64[0] = v76 + v79 - 1;
  v168.i64[1] = v76 + v79 - 2;
  *&STACK[0x2F0] = v168;
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = vaddq_s64(veorq_s8(vandq_s8(v173, v146), v147), veorq_s8(vandq_s8(v173, v148), v78));
  v175 = *&STACK[0x3C0];
  *&STACK[0x2E0] = vandq_s8(v168, *&STACK[0x3C0]);
  v176 = v90;
  v177 = vaddq_s64(*&STACK[0x310], v90);
  v90.i64[0] = -1;
  v90.i64[1] = -1;
  v178 = vaddq_s64(v174, v90);
  v179 = v149;
  v260.val[0] = vshlq_u64(veorq_s8(v178, v149), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v150)));
  v180 = veorq_s8(v177, v151);
  v181 = veorq_s8(v177, v153);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v89), vorrq_s8(v182, a71)), a71), v101);
  v184 = v101;
  v185 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v185), v107);
  v187 = v107;
  v188 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v104), v189), v161), v113);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v121), vorrq_s8(v192, v123)), v123), v122);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v77);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v170), v197), v135), v137);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v201 = vandq_s8(*&STACK[0x3D0], v175);
  v202 = vaddq_s64(v200, v199);
  v203 = vandq_s8(*&STACK[0x3E0], v175);
  v161.i64[0] = -1;
  v161.i64[1] = -1;
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v202, v146), v147), veorq_s8(vandq_s8(v202, v148), v78)), v161), v179), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v150)));
  v204 = *&STACK[0x330];
  v205 = vandq_s8(*&STACK[0x330], v175);
  v206 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(*&STACK[0x2E0], 0x38uLL), *&STACK[0x2E0], 8uLL);
  v210 = vaddq_s64(v207, v176);
  v211 = vaddq_s64(v206, v176);
  *&STACK[0x320] = vqtbl4q_s8(v260, *&STACK[0x350]);
  v260.val[0] = veorq_s8(v211, v151);
  v260.val[1] = veorq_s8(v210, v151);
  v260.val[2] = veorq_s8(v210, v153);
  v260.val[3] = veorq_s8(v211, v153);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[2]);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[0], v89), vorrq_s8(v260.val[0], a71)), a71), v184);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[1], v89), vorrq_s8(v260.val[1], a71)), a71), v184);
  v260.val[2] = veorq_s8(v260.val[1], vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[2]), v187);
  v260.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[3]), v187);
  v212 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v212);
  v213 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v213, v260.val[2]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[1], v260.val[1]), v104), v260.val[1]), *&STACK[0x3F0]), v113);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260.val[0], v260.val[0]), v104), v260.val[0]), *&STACK[0x3F0]), v113);
  v214 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v214);
  v215 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v215, v260.val[2]);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[0], *&STACK[0x3A0]), vorrq_s8(v260.val[0], *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v260.val[1], *&STACK[0x3A0]), vorrq_s8(v260.val[1], *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v260.val[2] = veorq_s8(v260.val[1], vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[2]), v77);
  v260.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL), v260.val[3]), v77);
  v216 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v216);
  v217 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v217, v260.val[2]);
  v260.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v260.val[1], v260.val[1]), *&STACK[0x380]), v260.val[1]), *&STACK[0x370]), *&STACK[0x360]);
  v260.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v260.val[0], v260.val[0]), *&STACK[0x380]), v260.val[0]), *&STACK[0x370]), *&STACK[0x360]);
  v218 = vsraq_n_u64(vshlq_n_s64(v260.val[2], 3uLL), v260.val[2], 0x3DuLL);
  v260.val[2] = veorq_s8(v260.val[0], vsraq_n_u64(vshlq_n_s64(v260.val[3], 3uLL), v260.val[3], 0x3DuLL));
  v260.val[3] = veorq_s8(v260.val[1], v218);
  v219 = vsraq_n_u64(vshlq_n_s64(v260.val[0], 0x38uLL), v260.val[0], 8uLL);
  v220 = vaddq_s64(v208, v176);
  v260.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260.val[1], 0x38uLL), v260.val[1], 8uLL), v260.val[3]);
  v260.val[1] = vaddq_s64(v219, v260.val[2]);
  v260.val[2].i64[0] = -1;
  v260.val[2].i64[1] = -1;
  v208.i64[0] = -1;
  v208.i64[1] = -1;
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v260.val[0], v146), v147), veorq_s8(vandq_s8(v260.val[0], v148), v78)), v260.val[2]), v179), vnegq_s64(vandq_s8(vshlq_n_s64(v204, 3uLL), *&STACK[0x3B0])));
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v260.val[1], v146), v147), veorq_s8(vandq_s8(v260.val[1], v148), v78)), v260.val[2]), v179), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), *&STACK[0x3B0])));
  v221 = veorq_s8(v220, *&STACK[0x410]);
  v222 = veorq_s8(v220, *&STACK[0x400]);
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v223, v89), vorrq_s8(v223, a71)), a71), v184);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v187);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228, v228), v104), v228), *&STACK[0x3F0]), v113);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v231, *&STACK[0x3A0]), vorrq_s8(v231, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v77);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), *&STACK[0x380]), v236), *&STACK[0x370]), *&STACK[0x360]);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL)));
  v239 = vaddq_s64(v209, v176);
  v260.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v238, v146), v147), veorq_s8(vandq_s8(v238, v148), v78)), v208), v179), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), *&STACK[0x3B0])));
  v240 = veorq_s8(v239, *&STACK[0x410]);
  v241 = veorq_s8(v239, *&STACK[0x400]);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v242, v89), vorrq_s8(v242, a71)), a71), v184);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), v187);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v247, v247), v104), v247), *&STACK[0x3F0]), v113);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v250, *&STACK[0x3A0]), vorrq_s8(v250, *&STACK[0x340])), *&STACK[0x340]), *&STACK[0x390]);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), v77);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v255, v255), *&STACK[0x380]), v255), *&STACK[0x370]), *&STACK[0x360]);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL)));
  v260.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v257, v146), v147), veorq_s8(vandq_s8(v257, v148), v78)), v208), v179), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2F0], 3uLL), *&STACK[0x3B0])));
  v257.i64[0] = vqtbl4q_s8(v260, *&STACK[0x350]).u64[0];
  v260.val[0] = *&STACK[0x320];
  v260.val[0].i64[1] = v257.i64[0];
  v258 = vrev64q_s8(v260.val[0]);
  *(v76 + v79 - 8) = vextq_s8(v258, v258, 8uLL);
  return (*(STACK[0x248] + 8 * (((v75 == v79) * v71) ^ v74)))();
}

uint64_t sub_1969B7E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, unsigned int a39)
{
  v44 = v43[396] ^ ((*v43 & 0x7FFFFFFE | v43[623] & 0x80000000) >> 1);
  v43[623] = (v44 + (v39 ^ v40 ^ 0xF3CC13A2) - ((v44 << (((v39 - 107) | 0x15) ^ v42)) & a5)) ^ *(v41 + 4 * (*v43 & 1));
  return (*(a2 + 8 * ((1978 * (a39 > 0x26F)) ^ v39)))();
}

uint64_t sub_1969B8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4715) - 4;
  v22 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0x131Bu)) - 12;
  v23 = v22[*(v19 - 111) ^ 0x40] - 78;
  v24 = v23 & 0xA8 ^ 0xE8;
  v25 = v23 ^ (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * ((v23 ^ 0x58) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24));
  v26 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4172) - 8;
  v27 = (v26[*(v19 - 100) ^ 0xC7] ^ 0xB7) << 24;
  v28 = v26[*(v19 - 108) ^ 0xFLL];
  v29 = v28 - (((v28 ^ 0x53) + 103) ^ ((v28 ^ 0xFFFFFFDC) - 22) ^ ((v28 ^ 0x32) + 8));
  v30 = v29 - 32;
  v31 = v29 & 0x13;
  v32 = v30 ^ (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * ((v30 ^ 0x28) & (2 * (((2 * v31) ^ 0x3A) & (v30 ^ 0x28) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75)) ^ v31 ^ 0x75));
  v33 = v28 + (((v32 ^ 0x5C) - 59) ^ ((v32 ^ 0x38) - 95) ^ ((v32 ^ 0xFFFFFF89) + 18)) - 49;
  v34 = v33 & 0x41 ^ 0xFFFFFFC7;
  v35 = (((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * ((v33 ^ 0x3A) & (2 * (((2 * v33) & 0x76 ^ 0x7A) & (v33 ^ 0x3A) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34) << 25) ^ (v33 << 24);
  LOBYTE(v32) = v22[*(v19 - 103) ^ 0xB9] - 85;
  LOBYTE(v34) = v32 & 0x35 ^ 0xBF;
  LOBYTE(v32) = v32 ^ (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * ((v32 ^ 0x5E) & (2 * (((2 * (v32 & 0x1F)) ^ 0x6A) & (v32 ^ 0x5E) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  LOBYTE(v34) = v22[*(v19 - 99) ^ 0x51] - 19;
  v36 = v34 & 0x2F ^ 0x49;
  LOBYTE(v34) = v34 ^ (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * ((v34 ^ 0x1C) & (2 * (((2 * v34) & 0x3A ^ 0x32) & v34 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  v37 = v22[*(v19 - 107) ^ 0xFCLL] - 80;
  v38 = v37 & 0x6A ^ 0x48;
  v39 = v25 << 16;
  v40 = ((v32 << 16) ^ 0x8F88FF8F) & (((v21[*(v19 - 102) ^ 0x9ELL] ^ *(v19 - 102)) << (v17 ^ 0xA9)) ^ 0x8F98688F) | (v32 << 16) & 0x670000;
  v41 = (v35 ^ 0x3FFFFFFC) & (((v37 ^ (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * ((v37 ^ 0x58) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) << 16) ^ 0x688E9D3C) | v35 & 0x97000000;
  v42 = (v39 | 0xFF00FFFF) & ((v26[*(v19 - 112) ^ 0xBDLL] << 24) ^ 0x48935AB4) | v39 & 0x6C0000;
  v251 = v26;
  v43 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 4340) - 12;
  v44 = v43[*(v19 - 97) ^ 0xD8];
  v45 = ((2 * ((v44 >> 1) | (v44 << 7))) & 0xFFFFFF9F) + (((v44 >> 1) | (v44 << 7)) ^ 0xFFFFFFCF);
  v46 = v45 & 0x3C ^ 0xAE;
  LOBYTE(v45) = v45 + 64;
  v47 = v46 ^ v45 & 0xF1;
  LOBYTE(v45) = v45 ^ (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * ((v45 ^ 0x70) & (2 * (v45 & 0xF1)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  v48 = (v45 ^ 0xFFFFFF30) & ((v34 << 16) & 0x650000 ^ 0x5F54034D ^ ((v34 << 16) ^ 0xFFB1FF30) & (((((v21[*(v19 - 98) ^ 0xFCLL] ^ *(v19 - 98)) << 8) ^ 0x73273754) & (v27 ^ 0x60E7FFFC) | v27 & 0x8C000000) ^ 0x56BD0864));
  v49 = v43[*(v19 - 105) ^ 0xAALL];
  v50 = (((v49 >> 1) | (v49 << 7)) ^ 0xFFFFFFFB) + ((2 * ((v49 >> 1) | (v49 << 7))) & 0xFFFFFFF7) + 104;
  LOBYTE(v39) = v50 & 0x81 | 0x12;
  LOBYTE(v50) = v50 ^ (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * ((v50 ^ 0x1C) & (2 * (v50 & 0x81)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v51 = v43[*(v19 - 101) ^ 0x75];
  v52 = ((2 * ((v51 >> 1) | (v51 << 7))) & 0xFF9C) + (((v51 >> 1) | (v51 << 7)) ^ 0x4E);
  v250 = v43;
  v53 = (v43[*(v19 - 109) ^ 0x56] >> 1) | (v43[*(v19 - 109) ^ 0x56] << 7);
  LOBYTE(v53) = ((2 * v53) & 0xBA) + (v53 ^ 0xDD);
  LOBYTE(v39) = v52 & 0xC6 ^ 0x8A;
  LOBYTE(v52) = v52 ^ (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * ((v52 ^ 0x30) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  v54 = (v52 & 0xFE ^ 0xFFFFFF38) & (v40 & 0x223DB02 ^ 0x8F55766C ^ (v40 ^ 0x70002450) & ((v26[*(v19 - 104) ^ 0xE7] << 24) ^ 0xA9DC24DC));
  LOBYTE(v34) = v53 & 0x6F ^ 0xE6;
  LOBYTE(v34) = v53 ^ (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 0x22) & (2 * ((v53 ^ 2) & (2 * v53) & 0x46 ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v55 = (v34 | 0xFFFFFF00) & (((v42 ^ 0x4A20A540) & (((v21[*(v19 - 110) ^ 9] ^ *(v19 - 110)) << 8) ^ 0xCE20A2E4) | v42 & 0x31DF0000) ^ 0x12B56166);
  v252 = v21;
  v56 = (v50 & 0x79 | (v41 ^ 0x507801BA) & (v50 ^ 0xFFFFBF2E)) ^ 0x8DEB3EE;
  v57 = (v21[*(v19 - 106) ^ 0xE3] ^ *(v19 - 106)) << 8;
  *(v19 - 124) = v57 & 0xD000 ^ 0xF7F3BBAC ^ v56 & (v57 ^ 0xFFFFECFF);
  *(v19 - 128) = v52 & 0x4D ^ 0x798EEAE7 ^ v54;
  v257 = v34 & 0x7D ^ 0xD6E01527 ^ v55;
  *(v19 - 132) = (v45 & 0x82 | v48) ^ 0x24F7C9BD;
  HIDWORD(a11) = (((v18 ^ 0x8559D43D) + 460920127) ^ ((v18 ^ 0x883394B4) + 370365880) ^ ((v18 ^ 0x7B29576) - 1718463370)) + 2108363480;
  v58 = v17 ^ 0x1EA6;
  v253 = v20;
  *(v19 - 120) = 0;
  v59 = v20;
  v60 = v43[v20[7] ^ 0x71];
  v61 = v22[v20[9] ^ 7] + 3;
  LOBYTE(v57) = v61 & 0x91 ^ 0x8D;
  LOBYTE(v57) = v61 ^ (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * ((v61 ^ 6) & (2 * (((2 * (v61 & 7)) ^ 0x16) & (v61 ^ 6) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v256 = (19 * (v58 ^ 0xCFC)) ^ 0x12AA;
  v62 = v43[v20[v256] ^ 0xB1];
  v63 = (v62 >> 1) | (v62 << 7);
  v64 = v43[v20[15] ^ 0xFALL];
  v65 = (((v64 >> 1) | (v64 << 7)) ^ 0xFFFFFFAF) + (v64 & 0x5E) + 116;
  v66 = v65 & 0xFFFFFFB3 ^ 0x7B;
  v67 = v65 ^ (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * ((v65 ^ 0x5C) & (2 * (((2 * v65) & 0x3A ^ 0x6E) & (v65 ^ 0x5C) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v68 = v26[*v20 ^ 0x21];
  v69 = ((v60 >> 1) | (v60 << 7)) - (v60 & 0x4A) + 37;
  v70 = ((v57 << 16) ^ 0xF83FFFFF) & (((v21[v59[10] ^ 0x37] ^ v59[10]) << 8) ^ 0x28424B98) | (v57 << 16) & 0xBD0000;
  v255 = v63 - ((2 * v63) & 0xE4);
  v71 = (v67 & 0xFE ^ 0xFFFFFFFD) & (((v21[v59[14] ^ 0x2BLL] ^ v59[14]) << 8) ^ 0xB68F3946) | v67 & 0xB9;
  v72 = v26[v20[8] ^ 0xAELL] << 24;
  v73 = v70 ^ 0x429BF210;
  v74 = (v70 ^ 0x429BF210) & (v72 ^ 0xFDFFFF9D) ^ v72 & 0x95000000;
  LOBYTE(v70) = v22[v59[1] ^ 0xF0] - 69;
  LOBYTE(v55) = v70 & 0x25 ^ 0xBF;
  LOBYTE(v21) = v70 ^ (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * ((v70 ^ 0x4E) & (2 * (((2 * (v70 & 0xF)) ^ 0x6A) & (v70 ^ 0x4E) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  *(v19 - 116) = v252[v59[6] ^ 0x9ELL] ^ v59[6];
  v75 = v59[4] - ((2 * v59[4]) & 0xCC) + 312473190;
  v76 = 270468338 - (((v75 ^ 0xDEFE686E) + 1445074801) ^ ((v75 ^ 0x4E1D3B84) - 960412517) ^ ((v75 ^ 0x827CA5EA) + 178313973));
  v77 = ((2 * (v76 & 0x8A248493)) & 0x4400920 | v76 & 0x8A248493) ^ (2 * (v76 & 0x8A248493)) & (v76 ^ 0x8E76ABAA);
  v78 = ((2 * (v76 ^ 0x8E76ABAA)) ^ 0x8A45E72) & (v76 ^ 0x8E76ABAA) ^ (2 * (v76 ^ 0x8E76ABAA)) & 0x4522F38;
  v79 = v78 ^ 0x4522109;
  v80 = (v78 ^ 0x4400711) & (4 * v77) ^ v77;
  v81 = ((4 * v79) ^ 0x1148BCE4) & v79 ^ (4 * v79) & 0x4522F38;
  v82 = (v81 ^ 0x402C29) & (16 * v80) ^ v80;
  v83 = ((16 * (v81 ^ 0x4120319)) ^ 0x4522F390) & (v81 ^ 0x4120319) ^ (16 * (v81 ^ 0x4120319)) & 0x4522F30;
  v84 = v82 ^ 0x4522F39 ^ (v83 ^ 0x4022300) & (v82 << 8);
  v85 = 1358650696 - (((v75 ^ 0x3EAAB436) - 1051374646) ^ ((v75 ^ 0xF04EA5DA) + 263281190) ^ ((v75 ^ 0xDC7BE78A) + 595859574));
  v86 = (v85 ^ 0x1B660A59) & (2 * (v85 & 0x9C64AC52)) ^ v85 & 0x9C64AC52;
  v87 = ((2 * (v85 ^ 0x23661AFD)) ^ 0x7E056D5E) & (v85 ^ 0x23661AFD) ^ (2 * (v85 ^ 0x23661AFD)) & 0xBF02B6AE;
  v88 = v87 ^ 0x810292A1;
  v89 = (v87 ^ 0x32002008) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0xFC0ADABC) & v88 ^ (4 * v88) & 0xBF02B6AC;
  v91 = (v90 ^ 0xBC0292A0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0x3002403)) ^ 0xF02B6AF0) & (v90 ^ 0x3002403) ^ (16 * (v90 ^ 0x3002403)) & 0xBF02B6A0;
  v93 = v91 ^ 0xBF02B6AF ^ (v92 ^ 0xB0022200) & (v91 << 8);
  v94 = v85 ^ v75 ^ v76 ^ (2 * (v93 ^ v84 ^ (v84 << 16) & 0x4520000 ^ (v93 << 16) & 0x3F020000 ^ ((v93 << 16) ^ 0x36AF0000) & (((v92 ^ 0xF00940F) << 8) & 0xBF020000 ^ 0x3D000000 ^ (((v92 ^ 0xF00940F) << 8) ^ 0x2B60000) & (v92 ^ 0xF00940F)) ^ ((v84 << 16) ^ 0x2F390000) & (((v83 ^ 0x500C29) << 8) & 0x4520000 ^ 0x4500000 ^ (((v83 ^ 0x500C29) << 8) ^ 0x522F0000) & (v83 ^ 0x500C29))));
  v95 = (((v94 ^ 0x939534AD) + 499388165) ^ ((v94 ^ 0x5B269046) - 713577488) ^ ((v94 ^ 0xDEE94960) + 1354265290)) - 1303577940;
  v96 = (v95 ^ 0x35270F06) & (2 * (v95 & 0xB5A72F97)) ^ v95 & 0xB5A72F97;
  v97 = ((2 * (v95 ^ 0x762D132E)) ^ 0x87147972) & (v95 ^ 0x762D132E) ^ (2 * (v95 ^ 0x762D132E)) & 0xC38A3CB8;
  v98 = v97 ^ 0x408A0489;
  v99 = (v97 ^ 0x83003830) & (4 * v96) ^ v96;
  v100 = ((4 * v98) ^ 0xE28F2E4) & v98 ^ (4 * v98) & 0xC38A3CB8;
  v101 = (v100 ^ 0x20830A0) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0xC1820C19)) ^ 0x38A3CB90) & (v100 ^ 0xC1820C19) ^ (16 * (v100 ^ 0xC1820C19)) & 0xC38A3CB0;
  v103 = v101 ^ 0xC38A3CB9 ^ (v102 ^ 0x820800) & (v101 << 8);
  v104 = v26[v95 ^ (2 * ((v103 << 16) & 0x438A0000 ^ v103 ^ ((v103 << 16) ^ 0x3CB90000) & (((v102 ^ 0xC3083429) << 8) & 0x438A0000 ^ 0x41820000 ^ (((v102 ^ 0xC3083429) << 8) ^ 0xA3C0000) & (v102 ^ 0xC3083429)))) ^ 0x33A3562D];
  LOBYTE(v95) = v22[v59[5] ^ 0xFLL] - 82;
  v105 = v95 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v95 ^ 0x1C)) | 0x24) & (v95 ^ 0x1C))) | 0x24) & (v95 ^ 0x1C))) ^ 0x24) & (v95 ^ 0x1C))) ^ 0x64) & (v95 ^ 0x5C)));
  LOBYTE(v103) = v22[v59[13] ^ 0x1ELL] - 17;
  LOBYTE(v102) = v103 & 0x47 ^ 0x76;
  v106 = (v26[v59[12] ^ 0xA2] ^ 0xBD) << 24;
  v254 = (((((v103 ^ (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * ((v103 ^ 0x1A) & (2 * v103) & 0x36 ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102)) ^ v102))) << 16) ^ 0x788CA6E2) & (v106 ^ 0x68FFEEEA) | v106 & 0x87FFFFFF) ^ 0xA1A24A6E) & (v71 ^ 0x4970FF09) ^ v71 & 0xA0001373;
  v107 = (v250[v59[3] ^ 0xB8] >> 1) | (v250[v59[3] ^ 0xB8] << 7);
  LOBYTE(v92) = v107 - ((2 * v107) & 0xA0);
  v108 = v59[2];
  LOBYTE(v103) = ((v108 ^ 0x54) + 50) ^ ((v108 ^ 0xF8) - 98) ^ ((v108 ^ 0x88) - 18);
  v109 = v108 ^ 0xB3;
  LOBYTE(v108) = v103 - (((v108 ^ 0x92) + 41) ^ ((v108 ^ 0x32) - 119) ^ ((v108 ^ 0x37) - 114));
  LOBYTE(v98) = v108 + 70;
  LOBYTE(v108) = (v108 - 58) & 0xA6 | (v108 + 70) & 0x10 | 8;
  LOBYTE(v108) = v98 ^ (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * ((v98 ^ 0x24) & (2 * v108) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108));
  LOBYTE(v108) = v103 + (((v108 ^ 0x3B) + 35) ^ ((v108 ^ 0x5B) + 67) ^ ((v108 ^ 0x28) + 50)) - 101;
  LOBYTE(v103) = v108 & 0x6F ^ 0xCF;
  v110 = __PAIR64__(v67, v254 ^ 0x383835A0) >> 5;
  LOBYTE(v98) = v108 ^ v252[v109] ^ (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * ((v108 ^ 0x50) & (2 * (((2 * v108) & 0x22 ^ 0x3E) & v108 ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103));
  LODWORD(v108) = v110 >> 27;
  v111 = (v110 ^ 0x824DCED9) << ((v98 & 1) == 0) << (~v98 & 4) << (v98 & 5);
  v112 = (((v108 ^ 0x86905D1C) + 1214104474) ^ ((v108 ^ 0x817B5103) + 1337380743) ^ ((v108 ^ 0x7EB0C0F) - 920218997)) - 359940300 + (((v111 ^ 0x500C3FD3) - 712773582) ^ ((v111 ^ 0xB71BD19F) + 848567934) ^ ((v111 ^ 0xE717EE4C) + 1654137263));
  v113 = ((v112 ^ 0x23DC21CA) - 490015847) ^ v112 ^ ((v112 ^ 0x161CECE3) - 687194446) ^ ((v112 ^ 0xB4F69F5B) + 1977634058) ^ ((v112 ^ 0xBFDF7FDF) + 2127146382);
  v114 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xE08)) - 4;
  v115 = *&v114[4 * (v68 ^ 0x72)];
  v116 = ((((2 * v68) ^ 0x1C08C290) - 1086930822) ^ (((2 * v68) ^ 0x5A98C0EF) - 106511865) ^ (((2 * v68) ^ 0x469002CB) - 441581533)) - 1066262138;
  v117 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xCB3)) - 4;
  HIDWORD(v118) = *&v117[4 * (v69 ^ 0x14)];
  LODWORD(v118) = HIDWORD(v118);
  v119 = (v116 ^ 0x1FFFDFDF) - 610067115;
  LODWORD(v108) = ((v116 ^ 0x990F8A54) + 1565739232) ^ v116;
  LODWORD(v109) = ((v116 ^ 0xE03324A1) + 611313195) ^ ((v116 ^ 0x5D604C5E) - 1724084522);
  v120 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xD1C)) - 8;
  v121 = *&v120[4 * (BYTE2(v113) ^ 0x59)] ^ 0x792BF8D4;
  LODWORD(v108) = v108 ^ v109;
  v122 = v119 ^ v115;
  v123 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDF8));
  LODWORD(v109) = -1644244649 * *(v123 + 4 * (BYTE1(v73) ^ 0x7Fu)) + 603614807;
  LODWORD(v108) = v108 ^ v122 ^ v121 ^ (16 * v121) ^ v109 ^ ((v109 ^ 0x4226AB1D) - 1641858378) ^ ((v109 ^ 0x66F6A19E) - 1158467529) ^ ((v109 ^ 0x7AD59A2B) - 1496315004) ^ ((v109 ^ 0x7DFFFEFF) - 1577423016) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0xE2B19A94) - 245838518);
  v124 = ((((2 * v104) ^ 0xB620DF79) + 1898138452) ^ (((2 * v104) ^ 0x5730556F) - 1875656378) ^ (((2 * v104) ^ 0xE1108AEA) + 638787265)) - 1224804366;
  v125 = (v124 ^ 0xA94959A7) & (2 * (v124 & 0xAA0A59A7)) ^ v124 & 0xAA0A59A7;
  LODWORD(v109) = ((2 * (v124 ^ 0xBD5DFAE7)) ^ 0x2EAF4680) & (v124 ^ 0xBD5DFAE7) ^ (2 * (v124 ^ 0xBD5DFAE7)) & 0x1757A340;
  v126 = v109 ^ 0x1150A140;
  LODWORD(v109) = (v109 ^ 0x30200) & (4 * v125) ^ v125;
  v127 = ((4 * v126) ^ 0x5D5E8D00) & v126 ^ (4 * v126) & 0x1757A340;
  LODWORD(v109) = v109 ^ 0x1757A340 ^ (v127 ^ 0x15568100) & (16 * v109);
  v128 = (16 * (v127 ^ 0x2012240)) & 0x1757A340 ^ 0x2058340 ^ ((16 * (v127 ^ 0x2012240)) ^ 0x757A3400) & (v127 ^ 0x2012240);
  LODWORD(v109) = (v109 << 8) & 0x1757A300 ^ v109 ^ ((v109 << 8) ^ 0x57A34000) & v128;
  LODWORD(v109) = (v109 << 16) & 0x17570000 ^ v109 ^ ((v109 << 16) ^ 0x23400000) & ((v128 << 8) & 0x17570000 ^ 0x540000 ^ ((v128 << 8) ^ 0x57A30000) & v128);
  v129 = -1644244649 * *(v123 + 4 * (BYTE1(v113) ^ 0x4Cu)) - 1992518157;
  v130 = (v129 ^ 0x6692496C) & (2 * (v129 & 0x76C36A0D)) ^ v129 & 0x76C36A0D;
  LODWORD(v26) = ((2 * (v129 ^ 0xCB961974)) ^ 0x7AAAE6F2) & (v129 ^ 0xCB961974) ^ (2 * (v129 ^ 0xCB961974)) & 0xBD557378;
  v131 = (v26 ^ 0x38406170) & (4 * v130) ^ v130;
  LODWORD(v26) = ((4 * (v26 ^ 0x85551109)) ^ 0xF555CDE4) & (v26 ^ 0x85551109) ^ (4 * (v26 ^ 0x85551109)) & 0xBD557378;
  v132 = (v26 ^ 0xB5554160) & (16 * v131) ^ v131;
  LODWORD(v26) = ((16 * (v26 ^ 0x8003219)) ^ 0xD5573790) & (v26 ^ 0x8003219) ^ (16 * (v26 ^ 0x8003219)) & 0xBD557370;
  v133 = v132 ^ 0xBD557379 ^ (v26 ^ 0x95553300) & (v132 << 8);
  HIDWORD(v118) = *&v117[4 * ((v255 - 14) ^ 0x16)];
  LODWORD(v118) = HIDWORD(v118);
  v134 = *&v120[4 * (v21 ^ 0x2D)] ^ 0xDEF608A0;
  v135 = *&v114[4 * (v104 ^ 0x56)] ^ v124 ^ v134 ^ (16 * v134) ^ v129 ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x2010D8E4) - 1878496142) ^ (2 * (v109 ^ (v133 << 16) & 0x3D550000 ^ v133 ^ ((v133 << 16) ^ 0x73790000) & (((v26 ^ 0x28004069) << 8) & 0xBD550000 ^ 0x28040000 ^ (((v26 ^ 0x28004069) << 8) ^ 0x55730000) & (v26 ^ 0x28004069))));
  v136 = ((((2 * HIBYTE(v74)) ^ 0x315AB14A) - 412221241) ^ (((2 * HIBYTE(v74)) ^ 0xE3EC6969) + 903403750) ^ (((2 * HIBYTE(v74)) ^ 0xD2B6D829) + 75655590)) + 1548221274;
  v137 = v136 ^ *&v114[4 * (HIBYTE(v74) ^ 0x2D)] ^ ((v136 ^ 0x875B0CD) - 35288764) ^ ((v136 ^ 0x6984436A) - 1676379419) ^ ((v136 ^ 0x9C61EB29) + 1777455784) ^ ((v136 ^ 0xF7FFDEFF) + 40888178);
  LODWORD(v109) = *&v120[4 * (v105 ^ 0xEA)] ^ 0x8EAE9C72;
  LODWORD(v26) = v109 ^ (16 * v109);
  LODWORD(v109) = v26 ^ 0xA5289BC3;
  v138 = (((v137 ^ 0xB13D5DC4) + 1677184735) ^ ((v137 ^ 0x5A8C53C) - 681421273) ^ ((v137 ^ 0xBEFA5E89) + 1815137684)) - (((v137 ^ v26 ^ 0xA5289BC3 ^ 0xC069CE4C) + 312696151) ^ ((v137 ^ v26 ^ 0xA5289BC3 ^ 0xD319C10E) + 30626325) ^ ((v137 ^ v26 ^ 0xA5289BC3 ^ 0x261369A0) - 187041093));
  v139 = 432067733 - (((v26 ^ 0x6C15FC5) + 1544961018) ^ ((v26 ^ 0x6D6AED70) + 935168333) ^ ((v26 ^ 0xF18F89E5) - 1420235302));
  LODWORD(v26) = (v139 ^ 0x27288892) & (2 * (v139 & 0xA7328AD8)) ^ v139 & 0xA7328AD8;
  v140 = ((2 * (v139 ^ 0x65498D22)) ^ 0x84F60FF4) & (v139 ^ 0x65498D22) ^ (2 * (v139 ^ 0x65498D22)) & 0xC27B07FA;
  LODWORD(v26) = (v140 ^ 0x805207E0) & (4 * v26) ^ v26;
  v141 = ((4 * (v140 ^ 0x4209000A)) ^ 0x9EC1FE8) & (v140 ^ 0x4209000A) ^ (4 * (v140 ^ 0x4209000A)) & 0xC27B07F8;
  LODWORD(v26) = (v141 ^ 0x6807E0) & (16 * v26) ^ v26;
  v142 = ((16 * (v141 ^ 0xC2130012)) ^ 0x27B07FA0) & (v141 ^ 0xC2130012) ^ (16 * (v141 ^ 0xC2130012)) & 0xC27B07F0;
  LODWORD(v26) = v26 ^ 0xC27B07FA ^ (v142 ^ 0x2300700) & (v26 << 8);
  LODWORD(v109) = v139 ^ v109 ^ (v138 - 2099736679) ^ (((v138 - 2099736679) ^ 0x60E9ACC5) - 322585545) ^ (((v138 - 2099736679) ^ 0x1A727131) - 1772199485) ^ (((v138 - 2099736679) ^ 0xD2B74947) + 1587239349) ^ (((v138 - 2099736679) ^ 0xDBFF7BBF) + 1473473357) ^ (2 * ((v26 << 16) & 0x427B0000 ^ v26 ^ ((v26 << 16) ^ 0x7FA0000) & (((v142 ^ 0xC04B005A) << 8) & 0xC27B0000 ^ (((v142 ^ 0xC04B005A) << 8) ^ 0x7B070000) & (v142 ^ 0xC04B005A) ^ 0x780000)));
  LODWORD(v109) = (((v137 ^ 0x5DB66717) - 1887636466) ^ ((v137 ^ 0x5356A89) - 671090284) ^ ((v137 ^ 0x52ECCBEF) - 2144970506)) - 587238440 + (((v109 ^ 0xA7BAD974) + 1398854607) ^ ((v109 ^ 0x72DF66F8) - 2046464957) ^ ((v109 ^ 0xBE8A753F) + 1246789510));
  HIDWORD(v118) = *&v117[4 * (v113 ^ 0xB3)];
  LODWORD(v118) = HIDWORD(v118);
  v143 = -1644244649 * *(v123 + 4 * (v98 ^ 0x77u)) - 1537963774;
  v144 = ((v143 ^ 0x3BD6B4A7) + 1618854491) ^ v143 ^ ((v143 ^ 0xC90A09D2) - 1834909904) ^ ((v143 ^ 0xA973CD8A) - 220677256) ^ ((v143 ^ 0xFFFBF9FD) - 1538224383) ^ v109 ^ ((v109 ^ 0xB52F9723) + 504029587) ^ ((v109 ^ 0x6C095725) - 953409131) ^ ((v109 ^ 0x7023BAB7) - 620311545);
  v145 = HIBYTE(v113);
  v146 = v144 ^ ((v109 ^ 0xFDDFF3FF) + 1459258703) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x61DC0326) + 820904339);
  v147 = (((2 * v145) ^ 0xAF25B7E) - 1105378231) ^ (((2 * v145) ^ 0x436AF1FE) - 142217527) ^ (((2 * v145) ^ 0x4998AA18) - 42486481);
  LODWORD(v109) = (((v135 ^ 0xF99A7189) + 1306839200) ^ ((v135 ^ 0x83513643) + 925863766) ^ ((v135 ^ 0xE7DE5AC2) + 1403053013)) - ((((2 * v135) & 0x862D0F64 ^ 0xA3ADBF72) + 391506244) ^ (((2 * v135) & 0x862D0F64 ^ 0x5DE3483C) - 384098802) ^ (((2 * v135) & 0x862D0F64 ^ 0xFC66FD4E) + 1218358144)) - 1540738485;
  v148 = (v109 ^ 0xAB0D4C7A) & (2 * (v109 & 0xAC510D7A)) ^ v109 & 0xAC510D7A;
  v149 = ((2 * (v109 ^ 0xFB8F445A)) ^ 0xAFBC9240) & (v109 ^ 0xFB8F445A) ^ (2 * (v109 ^ 0xFB8F445A)) & 0x57DE4920;
  v150 = (v149 ^ 0x38C0000) & (4 * v148) ^ v148;
  v151 = ((4 * (v149 ^ 0x50424920)) ^ 0x5F792480) & (v149 ^ 0x50424920) ^ (4 * (v149 ^ 0x50424920)) & 0x57DE4920;
  v152 = v150 ^ 0x57DE4920 ^ (v151 ^ 0x57580000) & (16 * v150);
  v153 = (16 * (v151 ^ 0x864920)) & 0x57DE4920 ^ 0x21A4920 ^ ((16 * (v151 ^ 0x864920)) ^ 0x7DE49200) & (v151 ^ 0x864920);
  v154 = (v152 << 8) & 0x57DE4900 ^ v152 ^ ((v152 << 8) ^ 0xDE492000) & v153;
  LODWORD(v109) = v109 ^ (2 * ((v154 << 16) & 0x57DE0000 ^ v154 ^ ((v154 << 16) ^ 0x49200000) & ((v153 << 8) & 0x57DE0000 ^ 0x1960000 ^ ((v153 << 8) ^ 0xDE490000) & v153)));
  HIDWORD(v118) = *&v117[4 * ((v92 + 80) ^ 0x2D)];
  LODWORD(v118) = HIDWORD(v118);
  v155 = *&v120[4 * (BYTE2(v73) ^ 0x3C)] ^ 0x7333A229;
  v156 = v155 ^ *&v114[4 * (v145 ^ 0x64)] ^ (16 * v155);
  v157 = -1644244649 * *(v123 + 4 * (*(v19 - 116) ^ 0x5Eu)) + 651649481;
  v147 -= 450178144;
  v158 = v156 ^ v157 ^ ((v157 ^ 0x9B4C1DB9) + 1113883536) ^ ((v157 ^ 0xEF6BF2C8) + 910388479) ^ ((v157 ^ 0x6D07315F) - 1271943318) ^ ((v157 ^ 0x3FF7BFE7) - 421584430) ^ ((v118 >> 1) - ((2 * (v118 >> 1)) & 0x98627336) + 1278294427) ^ v147 ^ ((v147 ^ 0x6E8CB8E9) - 478262326) ^ ((v147 ^ 0xC49DE794) + 1232016565) ^ ((v147 ^ 0xAFE3E49D) + 571545534) ^ ((v147 ^ 0x77FFB73F) - 99793888);
  v159 = *&v120[4 * (BYTE2(v108) ^ 0xA5)] ^ 0x8E2D6529;
  v160 = v159 ^ *&v114[4 * (BYTE3(v109) ^ 5)] ^ (16 * v159) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v158) ^ 0x42u))) ^ __ROR4__(*&v117[4 * (v146 ^ 0x14)], 1) ^ (((2 * BYTE3(v109)) ^ 0x5A) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v109) ^ 0x8A)] ^ 0x8B5C84CE;
  v161 = v26 ^ *&v114[4 * (HIBYTE(v146) ^ 0xC1)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 4u))) ^ __ROR4__(*&v117[4 * (v158 ^ 5)], 1) ^ (((2 * HIBYTE(v146)) ^ 0x1D2) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v158) ^ 0x1E)] ^ 0xBAA010EF;
  v162 = ((((2 * BYTE3(v108)) ^ 0xA448E2DE) + 1710598861) ^ (((2 * BYTE3(v108)) ^ 0x6D35EE1E) - 1400330739) ^ (((2 * BYTE3(v108)) ^ 0xC97D0CEA) + 146818297)) - 1163125564;
  v163 = *&v114[4 * (BYTE3(v108) ^ 0x3D)] ^ v26 ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v146) ^ 0x4Cu))) ^ __ROR4__(*&v117[4 * (v109 ^ 0xB5)], 1) ^ v162 ^ ((v162 ^ 0x2B28303F) - 2138328754) ^ ((v162 ^ 0xCB961AEA) + 1614125977) ^ ((v162 ^ 0x5B59ABA7) - 252040490) ^ ((v162 ^ 0xEFBBFFFF) + 1142455950) ^ 0x74574972;
  v164 = *&v120[4 * (BYTE2(v146) ^ 0xF4)] ^ 0x9928880A;
  LODWORD(v109) = v164 ^ *&v114[4 * (HIBYTE(v158) ^ 0xDE)] ^ (16 * v164) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x81u))) ^ __ROR4__(*&v117[4 * (v108 ^ 0x40)], 1) ^ (((2 * HIBYTE(v158)) ^ 0x1EC) + 671934064);
  v165 = *&v120[4 * (BYTE2(v109) ^ 0x5D)] ^ 0x64B55FE1;
  LODWORD(v108) = (2 * HIBYTE(v163) + 671934064) ^ *&v114[4 * (HIBYTE(v163) ^ 0x28)] ^ v165 ^ (16 * v165) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v161) ^ 0x6Fu))) ^ __ROR4__(*&v117[4 * (v160 ^ 4)], 1);
  v166 = *&v120[4 * BYTE2(v163)] ^ 0x128F94BD;
  v167 = v166 ^ *&v114[4 * (HIBYTE(v160) ^ 0x85)] ^ (16 * v166) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0xC0u))) ^ __ROR4__(*&v117[4 * (v161 ^ 0xE7)], 1) ^ (((2 * HIBYTE(v160)) ^ 0x15A) + 671934064);
  v168 = *&v120[4 * (BYTE2(v160) ^ 0xBF)] ^ 0xE3F9C856;
  v169 = v168 ^ *&v114[4 * (HIBYTE(v161) ^ 0x17)] ^ (16 * v168) ^ (-1644244649 * *(v123 + 4 * BYTE1(v163))) ^ __ROR4__(*&v117[4 * (v109 ^ 0x6D)], 1) ^ (((2 * HIBYTE(v161)) ^ 0x7E) + 671934064);
  v170 = *&v120[4 * (BYTE2(v161) ^ 0x17)] ^ 0x88733E4C;
  v171 = *&v117[4 * v163];
  v172 = v170 ^ *&v114[4 * (BYTE3(v109) ^ 0xB1)] ^ (16 * v170) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v160) ^ 0x52u))) ^ (v171 >> 1) & 0x32E946CC ^ (((2 * BYTE3(v109)) ^ 0x132) + 671934064) ^ ((v171 << ((16 * v170) & 0x10) << ((16 * v170) & 0x10 ^ 0x14) << 11) ^ 0xCD16B933) & ((v171 >> 1) ^ 0xFFFFFBBF);
  v173 = *&v120[4 * (BYTE2(v172) ^ 0xDE)];
  LODWORD(v109) = *&v114[4 * (BYTE3(v108) ^ 0xA6)] ^ ((BYTE3(v108) ^ 0x8E) + (BYTE3(v108) ^ 0x280CE6FE) + ((v108 >> 23) & 0xE0)) ^ (16 * v173) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v169) ^ 0xFCu))) ^ __ROR4__(*&v117[4 * (v167 ^ 0xF)], 1);
  v174 = (v109 ^ 0xF1742220) + 2054395500 - 2 * ((v109 ^ 0xF1742220) & 0x7A73966F ^ v109 & 3);
  LODWORD(v26) = *&v120[4 * (BYTE2(v108) ^ 0xCA)] ^ 0xF174222;
  LODWORD(v109) = v26 ^ *&v114[4 * (HIBYTE(v167) ^ 8)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v172) ^ 0x7Fu))) ^ __ROR4__(*&v117[4 * (v169 ^ 0x7D)], 1) ^ (((2 * HIBYTE(v167)) ^ 0x40) + 671934064);
  v175 = *&v120[4 * (BYTE2(v167) ^ 0x6E)] ^ 0xF174222;
  v176 = v175 ^ *&v114[4 * (HIBYTE(v169) ^ 0xDF)] ^ (16 * v175) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 0xD5u))) ^ (((2 * HIBYTE(v169)) ^ 0x1EE) + 671934064);
  v172 ^= 0xBA29618E;
  HIDWORD(v118) = *&v117[4 * v172];
  LODWORD(v118) = HIDWORD(v118);
  LODWORD(v26) = v118 >> 1;
  v177 = v176 + v26;
  v178 = v176 & v26;
  LODWORD(v26) = HIBYTE(v172);
  v179 = *&v114[4 * (HIBYTE(v172) ^ 0x28)];
  v180 = v177 - 2 * v178;
  v181 = *&v120[4 * (BYTE2(v169) ^ 0x54)] ^ 0xF174222;
  v182 = v181 ^ v179 ^ (16 * v181) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v167) ^ 0xE0u))) ^ __ROR4__(*&v117[4 * (v108 ^ 0x3D)], 1) ^ (2 * v26 + 671934064);
  v183 = v173 ^ 0x21EAD72A ^ v174;
  v184 = *&v120[4 * (BYTE2(v182) ^ 0x2C)] ^ 0xF174222;
  v185 = *&v114[4 * (HIBYTE(v183) ^ 0x28)] ^ (2 * HIBYTE(v183) + 671934064) ^ v184 ^ (16 * v184) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v180) ^ 0x9Du))) ^ __ROR4__(*&v117[4 * (v109 ^ 0x93)], 1);
  v186 = *&v120[4 * BYTE2(v183)] ^ 0xF174222;
  LODWORD(v108) = v186 ^ *&v114[4 * (((v109 ^ 0xAEA74693) >> 24) ^ 0x28)] ^ (16 * v186) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v182) ^ 0xBEu))) ^ __ROR4__(*&v117[4 * (v180 ^ 0x14)], 1) ^ (2 * ((v109 ^ 0xAEA74693) >> 24) + 671934064);
  v187 = *&v120[4 * ((v109 ^ 0xAEA74693) >> 16)] ^ 0xF174222;
  v188 = v187 ^ *&v114[4 * (HIBYTE(v180) ^ 0xC)] ^ (-1644244649 * *(v123 + 4 * (((BYTE1(v183) - (BYTE1(v183) ^ 0x1E)) ^ 0xFFFFFFFC) + BYTE1(v183)))) ^ (16 * v187) ^ __ROR4__(*&v117[4 * (v182 ^ 0x47)], 1) ^ (((2 * HIBYTE(v180)) ^ 0x48) + 671934064);
  v189 = (((2 * HIBYTE(v182)) ^ 0x8C) + 671934064) ^ *&v114[4 * (HIBYTE(v182) ^ 0x6E)];
  v190 = *&v120[4 * (BYTE2(v180) ^ 0xBC)] ^ 0xF174222;
  v191 = (v189 ^ -v189 ^ ((v190 ^ (16 * v190)) - (v189 ^ v190 ^ (16 * v190)))) + (v190 ^ (16 * v190));
  LOWORD(v190) = v185 ^ 0xE175;
  v192 = (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x58u))) ^ __ROR4__(*&v117[4 * v183], 1) ^ v191;
  v193 = *&v120[4 * (BYTE2(v192) ^ 5)] ^ 0xF174222;
  LODWORD(v109) = *&v114[4 * (((v185 ^ 0x8D6BE175) >> 24) - ((2 * ((v185 ^ 0x8D6BE175) >> 24)) & 0x50)) + 160] ^ (2 * ((v185 ^ 0x8D6BE175) >> 24) + 671934064) ^ v193 ^ (16 * v193) ^ (-1644244649 * *(v123 + 4 * ((v188 ^ 0xD635) >> 8))) ^ __ROR4__(*&v117[4 * (v108 ^ 0xCA)], 1);
  v194 = *&v120[4 * (BYTE2(v185) ^ 0x9C)] ^ 0xF174222;
  v192 ^= 0x77F22E6Eu;
  v195 = v194 ^ *&v114[4 * (BYTE3(v108) ^ 0xC7)] ^ (16 * v194) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v192) ^ 0x1Eu))) ^ __ROR4__(*&v117[4 * (v188 ^ 0xBA)], 1) ^ (((2 * BYTE3(v108)) ^ 0x1DE) + 671934064);
  LODWORD(v26) = *&v120[4 * (BYTE2(v108) ^ 0xBC)] ^ 0xF174222;
  v196 = *&v120[4 * (BYTE2(v188) ^ 0x8E)];
  v197 = (2 * ((v188 ^ 0x9F8ED635) >> 24) + 671934064) ^ v26 ^ *&v114[4 * (((v188 ^ 0x9F8ED635) >> 24) ^ 0x28)] ^ (16 * v26) ^ (-1644244649 * *(v123 + 4 * BYTE1(v190))) ^ __ROR4__(*&v117[4 * v192], 1);
  v198 = v109 ^ 0x2A4104EA;
  v199 = v196 ^ 0xF174222 ^ *&v114[4 * (HIBYTE(v192) ^ 0x28)] ^ (16 * (v196 ^ 0xF174222)) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v108) ^ 0x56u))) ^ __ROR4__(*&v117[4 * v190], 1) ^ (2 * HIBYTE(v192) + 671934064);
  HIDWORD(v118) = *&v120[4 * ((v109 ^ 0x2A4104EA) >> 16)] ^ 0xF174222;
  LODWORD(v118) = HIDWORD(v118);
  LODWORD(v108) = (-1644244649 * *(v123 + 4 * (BYTE1(v199) ^ 0xF5u))) ^ *&v114[4 * (((v195 ^ 0x7742BA0D) >> 24) ^ 0x28)] ^ __ROR4__(*&v117[4 * (v197 ^ 0x4D)], 1) ^ (2 * ((v195 ^ 0x7742BA0D) >> 24) + 671934064) ^ __ROR4__((v118 >> 22) & 0xFFFFFC3F ^ __ROR4__(HIDWORD(v118), 26) ^ 0x133A6B71, 6);
  v200 = *&v120[4 * ((((v195 ^ 0x7742BA0D) >> 16) - (((v195 ^ 0x7742BA0D) >> 16) ^ 0xF7)) ^ 0xFFFFFFFE) + 4 * ((v195 ^ 0x7742BA0D) >> 16)] ^ 0xF174222;
  LODWORD(v109) = *&v114[4 * (HIBYTE(v197) ^ 0x4D)] ^ (((2 * HIBYTE(v197)) ^ 0xCA) + 671934064) ^ v200 ^ (16 * v200) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v109) ^ 0x1Au))) ^ __ROR4__(*&v117[4 * (v199 ^ 0xE9)], 1);
  v201 = *&v120[4 * (BYTE2(v199) ^ 0x1E)] ^ 0xF174222;
  v202 = (2 * HIBYTE(v198) + 671934064) ^ *&v114[4 * (HIBYTE(v198) ^ 0x28)] ^ v201 ^ (16 * v201) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v197) ^ 0x93u))) ^ __ROR4__(*&v117[4 * (v195 ^ 0x82)], 1);
  v203 = *&v120[4 * (BYTE2(v197) ^ 0xA7)] ^ 0xF174222;
  v204 = *&v114[4 * (HIBYTE(v199) ^ 0xD5)] ^ v203 ^ (16 * v203) ^ (-1644244649 * *(v123 + 4 * (BYTE1(v195) ^ 0xA4u))) ^ __ROR4__(*&v117[4 * v198], 1) ^ (((2 * HIBYTE(v199)) ^ 0x1FA) + 671934064) ^ 0x8DDB7599;
  v205 = v109 ^ 0x787247D;
  v206 = *&v120[4 * (BYTE2(v204) - ((v204 >> 15) & 0x1EE)) + 988] ^ 0xF174222;
  v207 = *&v114[4 * (((v202 ^ 0xE792864A) >> 24) ^ 0x28)] ^ (2 * ((v202 ^ 0xE792864A) >> 24) + 671934064) ^ v206 ^ (16 * v206) ^ (-1644244649 * *(v123 + 4 * ((v109 ^ 0x247D) >> 8))) ^ __ROR4__(*&v117[4 * (v108 ^ 0xF8)], 1);
  v208 = (v108 ^ 0x8CDA44F7) >> 24;
  v209 = *&v120[4 * (BYTE2(v202) ^ 0x65)] ^ 0xF174222;
  v210 = (((v208 + 671934064) ^ v208) + 2 * ((v208 + 671934064) & v208)) ^ v209 ^ *&v114[4 * (v208 ^ 0x28)] ^ (16 * v209) ^ (-1644244649 * *(v123 + 4 * BYTE1(v204))) ^ __ROR4__(*&v117[4 * (v109 ^ 0xF2)], 1);
  LODWORD(v109) = *&v120[4 * ((v109 ^ 0x787247D) >> 16)] ^ 0xF174222;
  LODWORD(v109) = v109 ^ *&v114[4 * (HIBYTE(v204) ^ 0x28)] ^ (16 * v109) ^ (-1644244649 * *(v123 + 4 * ((v108 ^ 0x44F7) >> 8))) ^ __ROR4__(*&v117[4 * (v202 ^ 0x4A)], 1) ^ (2 * HIBYTE(v204) + 671934064);
  LODWORD(v108) = *&v120[4 * (BYTE2(v108) ^ 0x2D)] ^ 0xF174222;
  LOBYTE(v199) = v207 ^ 0x1B;
  v211 = (2 * HIBYTE(v205) + 671934064) ^ *&v114[4 * (HIBYTE(v205) ^ 0x28)] ^ v108 ^ (16 * v108) ^ (-1644244649 * *(v123 + 4 * ((v202 ^ 0x864A) >> 8))) ^ __ROR4__(*&v117[4 * v204], 1);
  v212 = (v207 ^ 0xD78B9A1B) >> 24;
  v213 = ((2 * ((v212 + 671934064) & v212)) ^ (v212 + 671934064) ^ v212) + 2 * ((2 * ((v212 + 671934064) & v212)) & ((v212 + 671934064) ^ v212));
  LODWORD(v108) = v210 ^ 0xBA913822;
  v214 = (v210 ^ 0xBA913822) >> 24;
  v215 = ((v214 + 671934064) ^ v214) + 2 * ((v214 + 671934064) & v214);
  v211 ^= 0x5A739A9Au;
  v216 = *&v120[4 * BYTE2(v108)] ^ 0xF174222;
  LODWORD(v26) = *&v114[4 * (HIBYTE(v211) ^ 0x28)] ^ (2 * HIBYTE(v211) + 671934064) ^ v216 ^ (16 * v216);
  v217 = *&v114[4 * (v212 ^ 0x28)];
  v218 = *&v114[4 * (v214 ^ 0x28)];
  LODWORD(v26) = v26 ^ (-1644244649 * *(v123 + 4 * ((v207 ^ 0x9A1B) >> 8)));
  v219 = v109 ^ 0x9FC95C56;
  v220 = *&v114[4 * (((v109 ^ 0x9FC95C56) >> 24) ^ 0x28)];
  LODWORD(v114) = *&v120[4 * (BYTE2(v109) ^ 0x3E)];
  LODWORD(v43) = *&v120[4 * (BYTE2(v207) ^ 0x7C)];
  v221 = *(v123 + 4 * BYTE1(v211));
  LODWORD(v109) = *(v123 + 4 * (BYTE1(v109) ^ 0x42u));
  LODWORD(v123) = *(v123 + 4 * BYTE1(v108));
  v222 = v26 ^ __ROR4__(*&v117[4 * v219], 1);
  LODWORD(v108) = v213 ^ v217 ^ v114 ^ 0xF174222 ^ (-1644244649 * v221) ^ (16 * (v114 ^ 0xF174222)) ^ __ROR4__(*&v117[4 * v108], 1);
  v223 = *&v117[4 * v199];
  v224 = v215 ^ v43 ^ 0xF174222 ^ v218;
  v225 = *&v120[4 * BYTE2(v211)] ^ 0xF174222;
  LODWORD(v120) = v108 ^ 0x7D72E1E0;
  v226 = v224 ^ (16 * (v43 ^ 0xF174222));
  v227 = (v108 ^ 0x7D72E1E0) >> 24;
  v228 = v226 ^ (-1644244649 * v109) ^ __ROR4__(*&v117[4 * v211], 1);
  v229 = v222 ^ 0xDEB175C3;
  LODWORD(v109) = v220 ^ (2 * HIBYTE(v219) + 671934064) ^ v225 ^ (16 * v225) ^ (-1644244649 * v123) ^ __ROR4__(v223, 1);
  LODWORD(v108) = v109 ^ 0xFB1E1DB7;
  v230 = ((v109 ^ 0xFB1E1DB7) >> 16);
  v231 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xC10)) - 12;
  v232 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2866);
  LODWORD(v123) = *(v232 + 4 * (v227 ^ 0xDB)) ^ ((v227 ^ 0x475EEC5F) + v227) ^ *&v231[4 * (v230 ^ 0x1C)];
  v233 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDD7));
  LODWORD(v114) = v228 ^ 0x53BE754F;
  v234 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xDDC));
  LODWORD(v123) = v123 ^ __ROR4__(*(v233 + 4 * ((v222 ^ 0x75C3) >> 8)), 3) ^ (*(v234 + 4 * (v228 ^ 0x4Fu)) - 1485941076) ^ (v230 - 716732276);
  v235 = (BYTE2(v120) - 716732276) ^ BYTE2(v120) ^ (((v114 >> 24) ^ 0x475EEC5F) + (v114 >> 24)) ^ *(v232 + 4 * ((v114 >> 24) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v120) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * (BYTE1(v109) ^ 0xFu)), 3) ^ (*(v234 + 4 * (v222 ^ 0xCEu)) - 1485941076);
  LODWORD(v109) = (BYTE2(v114) - 716732276) ^ BYTE2(v114) ^ (((v229 >> 23) & 0x140) + 1197403231) ^ *(v232 + 4 * (HIBYTE(v229) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v114) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * BYTE1(v120)), 3) ^ (*(v234 + 4 * (v109 ^ 0xBAu)) - 1485941076);
  v236 = (BYTE2(v229) - 716732276) ^ BYTE2(v229) ^ (((BYTE3(v108) - (BYTE3(v108) ^ 0x475EEC5F)) ^ 0xFFFFFFFE) + 2 * BYTE3(v108)) ^ *(v232 + 4 * (BYTE3(v108) ^ 0xDB)) ^ *&v231[4 * (BYTE2(v229) ^ 0x1C)] ^ __ROR4__(*(v233 + 4 * ((v228 ^ 0x754F) >> 8)), 3) ^ (*(v234 + 4 * v120) - 1485941076);
  LODWORD(v120) = (v123 - ((2 * v123) & 0x77557950) + 1001045160) ^ v257;
  LOBYTE(v231) = (v123 - ((2 * v123) & 0x50) - 88) ^ v257 ^ BYTE2(v108);
  v237 = (v235 - ((2 * v235) & 0x8C3D095C) - 971078482) ^ *(v19 - 124);
  LODWORD(v109) = (v109 - 651822535 + (~(2 * v109) | 0x4DB40B8F)) ^ *(v19 - 128);
  LODWORD(v108) = (v236 - ((2 * v236) & 0xBCFA962A) + 1585269525) ^ *(v19 - 132);
  v238 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2701);
  v253[v256] = *(v238 + (v109 ^ 0xA3)) ^ ((*(v238 + (v109 ^ 0xA3)) ^ 0xB7) >> 4) ^ ((*(v238 + (v109 ^ 0xA3)) ^ 0xB7) >> 3) ^ 0x14;
  v59[3] = *(v238 + (v231 ^ 0xBFLL)) ^ ((*(v238 + (v231 ^ 0xBFLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v231 ^ 0xBFLL)) ^ 0xB7) >> 3) ^ 6;
  v239 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xE4C)) - 8;
  v59[6] = (119 * v239[BYTE1(v237) ^ 0xD0]) ^ 0xB;
  v59[14] = (119 * v239[BYTE1(v108) ^ 0x97]) ^ 0x16;
  v59[7] = *(v238 + (v237 ^ 0x5FLL)) ^ ((*(v238 + (v237 ^ 0x5FLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v237 ^ 0x5FLL)) ^ 0xB7) >> 3) ^ 0x34;
  v240 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v58 ^ 0xC0B));
  v241 = -19 * *(v240 + (BYTE2(v109) ^ 0xB3));
  v59[9] = v241 ^ 0xC9 ^ (v241 >> 3) & 6;
  v59[2] = (119 * v239[(((v123 - ((2 * v123) & 0x7950) - 17240) ^ v257) >> 8) ^ 0xACLL]) ^ 0x49;
  v242 = -19 * *(v240 + ((((v108 ^ 0x2254426B) >> 16) - (((v108 ^ 0x2254426B) >> 15) & 0x194) + 202) ^ 0x15));
  v59[13] = v242 ^ 0xBC ^ (v242 >> 3) & 6;
  v243 = -19 * *(v240 + (BYTE2(v237) ^ 0x15));
  v59[5] = ((v243 >> 3) & 6) + (v243 ^ 0x3E) - 2 * ((v243 >> 3) & 6 & (v243 ^ 0x3E));
  v244 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v58 - 2670) - 4;
  v245 = BYTE3(v109) ^ 0x2A ^ v244[BYTE3(v109) ^ 0x86];
  v59[8] = (((((v245 >> 3) | (32 * v245)) ^ 0x53) >> 5) | (8 * (((v245 >> 3) | (32 * v245)) ^ 0x53))) ^ 0xA0;
  v59[4] = HIBYTE(v237) ^ v244[HIBYTE(v237) ^ 0x19] ^ 0xE0;
  *v59 = BYTE3(v120) ^ v244[(v120 >> 24) ^ 0x7FLL] ^ 0xF3;
  v59[10] = (119 * v239[BYTE1(v109) ^ 0xB2]) ^ 0x42;
  LOBYTE(v237) = v244[((v108 ^ 0x2254426B) >> 24) ^ 0x77];
  v246 = *(v19 - 120);
  v59[12] = ((v108 ^ 0x2254426B) >> 24) ^ v237 ^ 0x7E;
  v247 = -19 * *(v240 + (BYTE2(v120) ^ 0xEELL));
  v59[1] = v247 ^ 0xE6 ^ (v247 >> 3) & 6;
  v59[15] = *(v238 + (v108 ^ 0xECLL)) ^ ((*(v238 + (v108 ^ 0xECLL)) ^ 0xB7) >> 4) ^ ((*(v238 + (v108 ^ 0xECLL)) ^ 0xB7) >> 3) ^ 0x18;
  v248 = (v246 + 312682469) < HIDWORD(a11);
  if (HIDWORD(a11) < 0x12A327D5 != (v246 + 312682469) < 0x12A327D5)
  {
    v248 = HIDWORD(a11) < 0x12A327D5;
  }

  return (*(a17 + 8 * ((26 * !v248) ^ v58)))(119, 4294967277, v240, 2650722647, 160, v246, 66, 183, a9, a10, a11, v250, v251, v22, v252, v253, a17);
}

uint64_t sub_1969BB5C4(uint64_t a1, signed int a2, int a3)
{
  v6 = v4 - a3;
  if (a2 > v6)
  {
    v6 = a2;
  }

  return (*(v5 + 8 * ((((8 * (((v3 - 1736) | 0x40) ^ 0x1248)) ^ 0x1060) * (v6 < 0x7FFFFFFF)) | v3)))();
}

uint64_t sub_1969BB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x778] + 24);
  STACK[0x3B0] = v7;
  return (*(a6 + 8 * (((4 * (((v7 == 0) ^ (113 * (((v6 - 17) | 0x58) ^ 0x76))) & 1)) & 0xF7 | (8 * (((v7 == 0) ^ (113 * (((v6 - 529) | 0x58) ^ 0x1676))) & 1))) ^ v6)))();
}

void sub_1969BB808()
{
  ++LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x598]) += 2;
  JUMPOUT(0x19696C0A0);
}

uint64_t sub_1969BB8B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v19 = &a16 + v17 + 16;
  *&v20 = 0xECECECECECECECECLL;
  *(&v20 + 1) = 0xECECECECECECECECLL;
  *(v19 - 1) = v20;
  *v19 = v20;
  return (*(v18 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (v16 + 735)) ^ (v16 - 2625))))();
}

uint64_t sub_1969BB974()
{
  v9 = *(v0 + 16);
  v10 = 1621291457 * (((v6 | 0xFED77BF959A4AF21) - v6 + (v6 & 0x1288406A65B50D8)) ^ 0x83A121146FB32EB8);
  *(v8 - 128) = v7 ^ v10;
  *(v8 - 120) = v5;
  *(v8 - 104) = v10 + v4 + v9 - ((2 * v9) & 0x8889B80CB23BF32ELL);
  v11 = (*(v1 + 8 * (v2 + 5665)))(v8 - 128);
  return (*(v1 + 8 * ((5128 * (*(v8 - 112) == v3)) ^ v2)))(v11);
}

void sub_1969BBA34(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1969BBA54);
}

uint64_t sub_1969BBA64@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(a1 + 24);
  *a2 = 0;
  return (*(v2 + 8 * (((*(v4 + 17) == 1) * (((v3 - 1245289977) & 0x4A399DDB) - 2777)) ^ v3)))();
}

uint64_t sub_1969BBBB0(void *a1)
{
  if (a1[2])
  {
    v3 = (a1[6] | a1[3]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((56 * ((((v1 ^ 0xD9) + 22 + (v1 ^ 0xD9) + 1) ^ v4) & 1)) ^ v1)))();
}

uint64_t sub_1969BBC04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v22 = v11 - 1;
  v23 = STACK[0x340] + v22;
  v24 = STACK[0x350] + v22 + STACK[0x330];
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v25 + v19) ^ 0xE1AFA7ACF6E0968ELL;
  v27 = (__ROR8__((v25 + v19) ^ 0x49E9423B6F16E7D2, 8) + v26) ^ 0xE49D77DF873DBF7ELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a6 - ((v29 + v28) | a6) + ((v29 + v28) | 0xD3E2C6F73124A4A2)) ^ 0x2640374E84F416ABLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v14;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35) | 0x96E1782549DF8832;
  v38 = (v36 + v35) | a4;
  v39 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (v39 + v8) ^ 0x85215C3045409F44;
  v41 = __ROR8__((v39 + v8) ^ a1, 8);
  v42 = a4 - v38 + v37;
  v43 = __ROR8__((((2 * (v41 + v40)) & 0x387A58471D908FDELL) - (v41 + v40) - 0x1C3D2C238EC847F0) ^ a2, 8);
  v44 = (((2 * (v41 + v40)) & 0x387A58471D908FDELL) - (v41 + v40) - 0x1C3D2C238EC847F0) ^ a2 ^ __ROR8__(v40, 61);
  v42 ^= 0xF2226427395B565ELL;
  v45 = (a3 - ((v43 + v44) | a3) + ((v43 + v44) | v15)) ^ 0xD46C6E1ABEDC938;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = v42 ^ __ROR8__(v35, 61);
  v49 = __ROR8__(v42, 8);
  v50 = ((a7 | (2 * (v47 + v46))) - (v47 + v46) + v16) ^ v9;
  v51 = v50 ^ __ROR8__(v46, 61);
  v52 = __ROR8__(v50, 8);
  v53 = ((v21 | (2 * (v49 + v48))) - (v49 + v48) - 0x12FEC19037624E61) ^ 0x8D42A747531E162;
  v54 = __ROR8__(v53, 8) + (v53 ^ __ROR8__(v48, 61));
  v55 = (v10 - ((v52 + v51) | v10) + ((v52 + v51) | v12)) ^ v20;
  v56 = v55 ^ __ROR8__(v51, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xB9BEF0CD865D21FDLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = ((a5 & (2 * (v59 + v58))) - (v59 + v58) + v18) ^ v17;
  *v24 = (((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v58, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v24 & 7u))) ^ ((v54 ^ 0xAB3042D228875C41) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v13 + 8 * ((35 * (v22 == 0)) ^ (a8 - 3454))))();
}

uint64_t sub_1969BCDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14)
{
  v18 = 1068996913 * (((&a11 | 0x93BC6BA0) - &a11 + (&a11 & 0x6C439458)) ^ 0x46528A31);
  a13 = 1706097493 - v18;
  a14 = v15 - v18 - 845;
  a11 = v17;
  v19 = (*(v14 + 8 * (v15 + 5376)))(&a11);
  return (*(v14 + 8 * (((a12 == v16) * (v15 ^ 0x78E)) ^ v15)))(v19);
}

void sub_1969BCF50()
{
  *&STACK[0x310] = vdupq_n_s64(0x4DE9423B6F16E7D2uLL);
  *&STACK[0x320] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  *&STACK[0x300] = vdupq_n_s64(0xE5AFA7ACF6E0968ELL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE2E635010CECF8FFLL);
  *&STACK[0x2E0] = vdupq_n_s64(v1);
  *&STACK[0x2B0] = vdupq_n_s64(0x812B53C3B544D6B9);
  *&STACK[0x2C0] = vdupq_n_s64(0x256A7876A89AD72uLL);
  *&STACK[0x290] = vdupq_n_s64(0x31F3CBC2A36B396CuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x7489A27A009464B0uLL);
  *&STACK[0x270] = vdupq_n_s64(0xBF58159D2FFB2386);
  *&STACK[0x280] = vdupq_n_s64(0x50B656E853741D9BuLL);
  *&STACK[0x250] = vdupq_n_s64(0xBB6F16CCE7794FAFLL);
  *&STACK[0x260] = vdupq_n_s64(0x2053F53168026E3DuLL);
  *&STACK[0x230] = vdupq_n_s64(0xFAA19CB27FF500D8);
  *&STACK[0x240] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(0xA99F7374E88223D2);
  *&STACK[0x220] = vdupq_n_s64(0x2AF31A6C0057F93uLL);
  *&STACK[0x200] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  JUMPOUT(0x1969BD200);
}

uint64_t sub_1969BDD1C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x590] = 0;
  v2 = *(STACK[0x738] + 8);
  STACK[0x490] = 0;
  LODWORD(STACK[0x578]) = 0;
  LODWORD(STACK[0x724]) = -1720256293;
  return (*(a1 + 8 * (((v2 == 0) * (((a2 - 2682) | 0x1029) ^ (a2 + 1642))) ^ a2)))();
}

uint64_t sub_1969BDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x390] - (a5 & 0xFFFFFFF8) + 8;
  v73 = a7 + a5 - STACK[0x390];
  v74 = (a47 + a65 + a69 + a5 - STACK[0x390]);
  STACK[0x390] = *(v73 - 8);
  v75.i64[0] = v73 - 3;
  v75.i64[1] = v73 + (((v69 - 955) | 0xB00u) ^ 0xFFFFFFFFFFFFF43CLL);
  v76.i64[0] = v73 - 1;
  v76.i64[1] = v73 - 2;
  v77.i64[0] = v73 - 5;
  v77.i64[1] = v73 - 6;
  v78.i64[0] = v73 - 7;
  v78.i64[1] = v73 - 8;
  v79 = vandq_s8(v78, v70);
  v80 = vandq_s8(v77, v70);
  v81 = vandq_s8(v76, v70);
  v82 = vandq_s8(v75, v70);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), *&STACK[0x400]), *&STACK[0x3F0]);
  v87 = vsubq_s64(vorrq_s8(v83, *&STACK[0x3E0]), vorrq_s8(v83, *&STACK[0x300]));
  v88 = vsubq_s64(vorrq_s8(v84, *&STACK[0x3E0]), vorrq_s8(v84, *&STACK[0x300]));
  v89 = vaddq_s64(vsubq_s64(vorrq_s8(v86, *&STACK[0x3E0]), vorrq_s8(v86, *&STACK[0x300])), *&STACK[0x300]);
  v90 = vaddq_s64(vsubq_s64(vorrq_s8(v85, *&STACK[0x3E0]), vorrq_s8(v85, *&STACK[0x300])), *&STACK[0x300]);
  v91 = veorq_s8(v90, *&STACK[0x370]);
  v92 = veorq_s8(v89, *&STACK[0x370]);
  v93 = veorq_s8(v89, *&STACK[0x360]);
  v94 = veorq_s8(v90, *&STACK[0x360]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), *&STACK[0x350]);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94), *&STACK[0x350]);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), *&STACK[0x340]);
  v103 = veorq_s8(v101, *&STACK[0x340]);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = vaddq_s64(v107, v105);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x330]), vorrq_s8(v108, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, *&STACK[0x330]), vorrq_s8(v109, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v113 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v113);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v114, *&STACK[0x3D0]), vorrq_s8(v114, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, *&STACK[0x3D0]), vorrq_s8(v115, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v119);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, *&STACK[0x3B0]), vorrq_s8(v120, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, *&STACK[0x3B0]), vorrq_s8(v121, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x310]), v127), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x310]), v126), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v130 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v131 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v132 = veorq_s8(v128, v130);
  v133 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v135 = vaddq_s64(v88, *&STACK[0x300]);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v134, v132), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v71)));
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v133, v131), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v71)));
  v136 = veorq_s8(v135, *&STACK[0x370]);
  v137 = veorq_s8(v135, *&STACK[0x360]);
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), *&STACK[0x350]);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), *&STACK[0x340]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, *&STACK[0x330]), vorrq_s8(v142, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, *&STACK[0x3D0]), vorrq_s8(v145, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v148, *&STACK[0x3B0]), vorrq_s8(v148, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v151, v151), *&STACK[0x310]), v151), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL)));
  v154 = vaddq_s64(v87, *&STACK[0x300]);
  v173.val[0] = vshlq_u64(veorq_s8(v153, *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v71)));
  v155 = veorq_s8(v154, *&STACK[0x370]);
  v156 = veorq_s8(v154, *&STACK[0x360]);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x350]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x340]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v161, *&STACK[0x330]), vorrq_s8(v161, *&STACK[0x2F0])), *&STACK[0x2F0]), *&STACK[0x320]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x3D0]), vorrq_s8(v164, *&STACK[0x2E0])), *&STACK[0x2E0]), *&STACK[0x3C0]);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x3B0]), vorrq_s8(v167, *&STACK[0x2D0])), *&STACK[0x2D0]), *&STACK[0x3A0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x310]), v170), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL))), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v71)));
  *v74 = veor_s8(vrev64_s8(*&vqtbl4q_s8(v173, *&STACK[0x230])), STACK[0x390]);
  return (*(STACK[0x248] + 8 * ((5363 * (v72 == 0)) ^ v69)))();
}

void sub_1969BE3CC()
{
  LODWORD(STACK[0xB24]) = 1906239693;
  STACK[0x958] = v0;
  LODWORD(STACK[0x58C]) = 1906239693;
  STACK[0x740] = *(v2 + 8 * (v1 - 1483));
  JUMPOUT(0x1969BE438);
}

uint64_t sub_1969BE480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  v39 = STACK[0x228] - 1679;
  LODWORD(STACK[0x9CC]) = v37;
  v40 = (v37 ^ a4) + STACK[0x310];
  STACK[0x9D0] = v40;
  return (*(v38 + 8 * (v39 ^ (76 * (v40 > a37)))))(a1, a2, a3, 0xAB3042D228875C41);
}

uint64_t sub_1969BE7D8()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * (((((v0 ^ 0x4CE) - 826) | 0xC08) - 3263) ^ 0x166)) ^ v0 ^ 0x4CE)))();
}

uint64_t sub_1969BE808@<X0>(int a1@<W8>)
{
  STACK[0xA38] = v1;
  v2 = STACK[0x498];
  STACK[0xA40] = STACK[0x498];
  return (*(STACK[0x248] + 8 * (((v1 - v2 > ((a1 - 852) | 0x122u) - 297) * ((1806 * (a1 ^ 0x366)) ^ 0x1D40)) ^ a1)))();
}

uint64_t sub_1969BE8C8()
{
  v1 = *(STACK[0x438] + 24);
  STACK[0x550] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * (((((v0 ^ 0x1EEC) - 4308) | 0xE00) ^ 0xFFFFFCDE) + (v0 ^ 0x1EEC) - 943)) ^ v0 ^ 0x1EEC)))();
}

void sub_1969BE9F0(int a1@<W8>)
{
  v6 = ((v2 ^ 0xB22) + 1073740604) | v1;
  v7 = *(v3 + 4) + a1;
  v8 = *v3;
  *(*v3 + v7) = (HIBYTE(v6) ^ 0x8C) - ((2 * (HIBYTE(v6) ^ 0x8C)) & 0xD8) - 20;
  *(v8 + v7 + 1) = (BYTE2(v6) ^ 0xE6) - ((2 * (BYTE2(v6) ^ 0xE6)) & 0xD8) - 20;
  *(v8 + v7 + 2) = (BYTE1(v6) ^ 0x1C) - 2 * ((BYTE1(v6) ^ 0x1C) & 0xEF ^ BYTE1(v6) & 3) - 20;
  *(v8 + v7 + 3) = v6 ^ 0xD1;
  v9 = *v3;
  v10 = ((v5 ^ 0xEF730D67) + 158548287) ^ v5 ^ ((v5 ^ 0x4AD6BEEB) - 1395199309) ^ ((v5 ^ 0x4BA5FF47) - 1381649633) ^ ((v5 ^ 0xF7FFFF6D) + 301970229);
  v11 = ((2 * (a1 + *(v3 + 4) + 4)) & 0x9F6CB67E) + ((a1 + *(v3 + 4) + 4) ^ 0x4FB65B3F) - 1337350975;
  *(*v3 + v11) = (HIBYTE(v10) ^ 0x19) - ((2 * (HIBYTE(v10) ^ 0x19)) & 0xD8) - 20;
  *(v9 + v11 + 1) = ((2 * (BYTE2(v10) & 0xEE ^ (~BYTE2(v10) | 0xFD))) ^ 0xD9) - BYTE2(v10) - 20;
  *(v9 + v11 + 2) = (BYTE1(v10) ^ 0xB3) - ((2 * (BYTE1(v10) ^ 0xB3)) & 0xD8) - 20;
  *(v9 + v11 + 3) = ((v5 ^ 0x67) + 63) ^ v5 ^ ((v5 ^ 0xEB) - 77) ^ ((v5 ^ 0x47) + 31) ^ ((v5 ^ 0x6D) + 53) ^ 0x4A;
  *(v3 + 4) = v4;
  JUMPOUT(0x1969BEB9CLL);
}

uint64_t sub_1969BEBE8()
{
  v2 = STACK[0x4B8];
  LODWORD(STACK[0x454]) = STACK[0x444];
  return (*(v1 + 8 * (((523 * ((v0 + 277198447) & 0xEF7A3B7D ^ 0xB70) - 2048) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1969BED00@<X0>(uint64_t a1@<X8>)
{
  v9 = 3 * (v6 ^ 0x2A5);
  v10 = *(v7 - 216);
  v14.val[1].i64[0] = (v4 + 13) & 0xF;
  v14.val[1].i64[1] = (v4 + 12) & 0xF;
  v14.val[2].i64[0] = (v4 + 11) & 0xF;
  v14.val[2].i64[1] = (v4 + 10) & 0xF;
  v14.val[3].i64[0] = (v4 + 9) & 0xF;
  v14.val[3].i64[1] = v5 & 0xF ^ 0xBLL;
  v15.val[0].i64[0] = (v4 + v9 + 116) & 0xF;
  v15.val[0].i64[1] = (v4 + 6) & 0xF;
  v15.val[1].i64[0] = (v4 + 5) & 0xF;
  v15.val[1].i64[1] = (v4 + 4) & 0xF;
  v15.val[2].i64[0] = (v4 + 3) & 0xF;
  v15.val[2].i64[1] = (v4 + 2) & 0xF;
  v15.val[3].i64[0] = (v4 + 1) & 0xF;
  v15.val[3].i64[1] = v4 & 0xF;
  v11 = vqtbl4q_s8(v15, xmmword_196EBFA60).u64[0];
  v12.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v12.i64[1] = 0xB0B0B0B0B0B0B0BLL;
  v14.val[0].i64[0] = (v4 - 17) & 0xF;
  v14.val[0].i64[1] = (v4 + 14) & 0xF;
  v15.val[2].i64[0] = vqtbl4q_s8(v14, xmmword_196EBFA60).u64[0];
  v15.val[2].i64[1] = v11;
  v15.val[0] = vrev64q_s8(vmulq_s8(v15.val[2], v12));
  *(v8 + v4 - 16) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v1 + v14.val[0].i64[0] - 15), *(a1 + v4 - 16)), *(v2 + v14.val[0].i64[0] - 15)), *(748 * (v9 ^ 0x391u) + v14.val[0].i64[0] + v3 - 1507)), vextq_s8(v15.val[0], v15.val[0], 8uLL));
  return (*(v10 + 8 * ((7 * ((v5 & 0x10) != 16)) ^ v9)))();
}

uint64_t sub_1969BEE6C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(a10 + 141) = (&a29 ^ 0xBA) * (&a29 + 17);
  *(a10 - 1284 + ((a1 - 1199) | 0x410)) = (&a29 ^ 0xBB) * (&a29 + 18);
  return (*(v29 + 8 * a1))();
}

uint64_t sub_1969BF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  *(v61 - 112) = (v59 + 5442) ^ (998242381 * ((((v61 - 144) | 0x72647B69) - (v61 - 144) + ((v61 - 144) & 0x8D9B8490)) ^ 0xD80BE3BF));
  *(v61 - 128) = &a38;
  *(v61 - 120) = v60 + 12;
  *(v61 - 144) = &a58;
  (*(v58 + 8 * (v59 + 6800)))(v61 - 144);
  return (*(v58 + 8 * (((*(v61 - 136) == ((606 * (v59 ^ 0x20)) ^ 0x719F9C66)) * ((v59 ^ 0x20) + 3286)) ^ v59)))(a1);
}

uint64_t sub_1969BF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 120) = v21 + a15 * v20 + 1298;
  *(v22 - 136) = &a18;
  *(v22 - 128) = v18;
  v23 = (*(v19 + 8 * (v21 ^ 0x1954)))(v22 - 136);
  return (*(v19 + 8 * ((((v21 ^ 0x607u) - 1478011821 + *(v22 - 116) - 1473 < 0xCD469F77) * ((v21 ^ 6) + 2637)) ^ v21)))(v23);
}

uint64_t sub_1969BF250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W5>, unsigned int a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v24 = a6 - 1;
  v25 = STACK[0x350] + v24;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 - 0x6AF7234D0CC131D5) ^ v17 | v18) - ((v26 - 0x6AF7234D0CC131D5) ^ v17 | ((v8 ^ a4) + v15)) + v12;
  v28 = __ROR8__(v27 ^ v11, 8);
  v27 ^= 0x9A49C0E087253006;
  v29 = (v28 + v27) ^ 0xE49D77DF873DBF7ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a5;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v9 - ((v33 + v32) | v9) + ((v33 + v32) | 0x1031C100296D42A8)) ^ v16, 8);
  v35 = (v9 - ((v33 + v32) | v9) + ((v33 + v32) | 0x1031C100296D42A8)) ^ v16 ^ __ROR8__(v32, 61);
  v36 = (v10 - ((v34 + v35) | v10) + ((v34 + v35) | v13)) ^ v23;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((v14 - ((v38 + v37) | v14) + ((v38 + v37) | a2)) ^ v7, 8);
  v40 = (v14 - ((v38 + v37) | v14) + ((v38 + v37) | a2)) ^ v7 ^ __ROR8__(v37, 61);
  v41 = ((v22 & (2 * (v39 + v40))) - (v39 + v40) + v19) ^ v20;
  *(a1 + v24 + v21) = (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ v6) >> (8 * (v25 & 7u))) ^ *v25;
  return (*(STACK[0x370] + 8 * (((v24 == 0) * a3) ^ v8)))();
}

void sub_1969BF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, int *a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = 4 * (v34 - v35);
  v38 = ((*(*a30 + (*a31 & 0xFFFFFFFFF6ED2EA4)) ^ (a33 + v37)) & 0x7FFFFFFF) * ((1607 * (v36 ^ (v36 - 2))) ^ 0xA34B11E5);
  v39 = v38 ^ HIWORD(v38);
  v40 = -1555358357 * v39;
  *(a34 + v37) ^= *(a33 + v37) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 181))) + HIBYTE(v40) - 3) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 326))) + HIBYTE(v40)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v36 ^ (v36 - 564))) + HIBYTE(v40) - 2) ^ (493551616 * v39) ^ v40 ^ (1071499755 * HIBYTE(v40));
  JUMPOUT(0x1969BF5F4);
}

uint64_t sub_1969BF71C(uint64_t a1)
{
  *(v2 + 1) = 5;
  *v1 = 0;
  return sub_1969BF760(a1, 1435);
}

uint64_t sub_1969BF760(uint64_t a1, int a2)
{
  v11 = v3 - v2 + v9;
  *(v11 - 1) = ((v2 + v5) ^ v6) * (v2 + v5 + 17);
  *(v11 - 2) = ((v2 + v5) ^ 0xBB) * (v2 + v5 + 18);
  return (*(v8 + 8 * (((v7 + v2 == v4) * a2) ^ v10)))();
}

uint64_t sub_1969BF800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * (((&a13 | 0xC56C3955) + (~&a13 | 0x3A93C6AA)) ^ 0xC5FA6A63);
  a14 = &a10;
  v18 = (*(v16 + 53584))(&a13);
  return (*(v16 + 8 * ((94 * (a13 == v15)) ^ v17)))(v18);
}

void sub_1969BFB04(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4)
{
  a3 = (v5 + 226) ^ (654144011 * (((&a3 | 0x5B10C7D9) - (&a3 & 0x5B10C7D9)) ^ 0x77C4BA45));
  a4 = a1;
  (*(v4 + 8 * (v5 + 2810)))(&a3);
  *(v6 + 4) = 1352679864 - *(v6 + 4);
  JUMPOUT(0x1968E8C10);
}

void sub_1969BFB78()
{
  v3 = v0 ^ 0x1796;
  v4 = v1;
  v5 = (*(v1 + 8 * ((v0 ^ 0x1796) + 2138)))(23);
  v6 = *(v2 + 8 * (v3 - 4190));
  *v6 = v5;
  (*(v4 + 8 * (v3 + 2255)))();
  *(v5 + 12) = 0;
  v7 = *(v2 + 8 * (v3 ^ 0x12A2));
  *(v7 - 4) = 0;
  v8 = *(v2 + 8 * (v3 - 4364));
  v9 = *v6;
  *(v8 + 34) = 117;
  *v7 = 47;
  **(v2 + 8 * (v3 - 4470)) = 1;
  *(v8 + 3) = 90;
  v9[8] = 79;
  **(v2 + 8 * (v3 ^ 0x1376)) = -2;
  *(v8 + 5) = 10;
  *(v7 + 3) = 96;
  v9[21] = 119;
  *(v7 - 10) = 80;
  *(v8 + 14) = 87;
  v9[2] = -22;
  v9[22] = 3;
  *(v7 + 6) = -122;
  **(v2 + 8 * (v3 ^ 0x1232)) = -127;
  *(v7 - 11) = 80;
  *(v7 - 9) = 83;
  *(v8 + 29) = -24;
  *(v8 + 27) = -42;
  v9[17] = -121;
  v9[3] = -34;
  *v9 = 54;
  *(v8 + 15) = 9;
  *(v7 - 8) = -77;
  *(v8 + 4) = -49;
  **(v2 + 8 * (v3 - 4334)) = 51;
  *(v8 + 28) = -57;
  *(v7 - 6) = -11;
  *(v8 + 38) = 112;
  *(v8 + 26) = 90;
  *(v8 + 16) = -30;
  v9[7] = -52;
  *(v7 - 5) = 17;
  *(v7 + 7) = 23;
  **(v2 + 8 * (v3 - 4285)) = -109;
  *(v7 - 12) = 34;
  *(v8 + 24) = -85;
  *(v8 + 35) = -93;
  *(v8 + 8) = -100;
  *(v8 + 6) = 40;
  v10 = *v6;
  v10[4] = 45;
  v10[9] = 36;
  *(v8 + 10) = 39;
  *(v7 - 7) = 31;
  *(v7 + 4) = -21647;
  *(v8 + 11) = -52;
  v10[16] = -87;
  *(v7 + 1) = -90;
  *(v8 + 23) = 28;
  *(v8 + 39) = 86;
  *(v7 + 2) = -39;
  *(v8 + 31) = 92;
  v10[1] = -39;
  *(v8 + 9) = -73;
  *(v8 + 25) = -31;
  *(v8 + 7) = 94;
  *(v10 + 19) = -3656;
  v10[6] = -16;
  *(v8 + 22) = 81;
  *(v8 + 30) = 91;
  *(v8 + 18) = 122;
  *(v8 + 12) = 51;
  v10[18] = -116;
  *(v8 + 19) = -124;
  *(v8 + 13) = -30;
  *(v8 + 21) = 49;
  *(v8 + 1) = 90;
  *(v8 + 32) = 27433;
  *(v8 + 36) = 7906;
  *(v10 + 5) = -24918;
  *v8 = -108;
  *(v8 + 20) = -102;
  v10[5] = -105;
  *(v8 + 17) = -4;
  *(v8 + 2) = 51;
  JUMPOUT(0x1969C2944);
}

void sub_1969C2E90(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = 455395931 * ((((2 * &a3) | 0xEC500034) - &a3 - 1982332954) ^ 0xD95ED6);
  a5 = v5;
  a3 = v8 + a1 + 2167;
  a4 = (1787679718 - v7 - ((((a1 + 909) ^ 0x77FF279D) - 2 * v7) & 0x5D1C71FA)) ^ v8;
  (*(v6 + 8 * (a1 ^ 0x1587)))(&a3);
  JUMPOUT(0x1969B3548);
}

uint64_t sub_1969C2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, char *a18, int a19)
{
  v24 = (&a14 ^ 0x84A988EC) * v21;
  a19 = v24 - 1795307754 + v23;
  a16 = v24 - 143680479;
  a14 = v24 ^ 0x80F33AA;
  a17 = a11;
  a18 = &a12;
  v25 = (*(v19 + 8 * (v23 + 2297)))(&a14);
  return (*(v19 + 8 * (((a15 == (v22 ^ (v20 - 2883))) * ((v23 - 3694) ^ 0x74A)) ^ v23)))(v25);
}

uint64_t sub_1969C30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x4F0];
  *v8 = 0u;
  v8[1] = 0u;
  v9 = *v6;
  STACK[0x750] = *(a6 + 8 * (v7 ^ 0x16D1));
  return (*(a6 + 8 * (((v9 != 0) * (((((v7 ^ 0x16D1) + 4895) ^ 0x5F6) - 5100) ^ 0x238)) ^ ((v7 ^ 0x16D1) + 4895))))();
}

uint64_t sub_1969C3160(uint64_t a1)
{
  LODWORD(STACK[0x7BC]) = v1;
  v3 = STACK[0x986];
  v4 = STACK[0x228];
  v5 = STACK[0x228] - 2574;
  STACK[0x5D0] = STACK[0x988];
  return (*(v2 + 8 * ((v3 == ((v4 - 2574) ^ 0xA679)) ^ v5)))(a1, 1906239355);
}

void sub_1969C31C8()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((v5 + 709) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

void sub_1969C3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = (*(a5 + 96) - ((2 * *(a5 + 96)) & 0x1C) - 112);
  if (v14 == 145)
  {
    v18 = *(a5 + 64);
    v17 = *(a5 + 68);
    *(a5 + 56) = (((v17 - ((2 * v17) & 0x1C) + 22) << ((a8 + 77) ^ 0x29)) - 64) ^ 0x9C;
    *(a5 + 57) = v13 ^ (v17 >> 5);
    *(a5 + 58) = v13 ^ (v17 >> 13);
    *(a5 + 59) = v13 ^ (v17 >> 21);
    *(a5 + 60) = ((__PAIR64__(v18, v17) >> 29) - 2 * ((__PAIR64__(v18, v17) >> 29) & 0x3F) - 65) ^ 0x53;
    *(a5 + 61) = v13 ^ (v18 >> 5);
    *(a5 + 62) = v13 ^ (v18 >> 13);
    v16 = (v18 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    if (v14 != 142)
    {
      goto LABEL_6;
    }

    v15 = *(a5 + 64);
    v16 = *(a5 + 68);
    *(a5 + 56) = v13 ^ (v15 >> 21);
    *(a5 + 57) = (v15 >> a13) ^ v13;
    *(a5 + 58) = v13 ^ (v15 >> 5);
    *(a5 + 59) = ((__PAIR64__(v15, v16) >> 29) - ((2 * (__PAIR64__(v15, v16) >> 29)) & 0x90) + 72) ^ 0xA4;
    *(a5 + 60) = v13 ^ (v16 >> 21);
    *(a5 + 61) = v13 ^ (v16 >> 13);
    *(a5 + 62) = v13 ^ (v16 >> 5);
    LOBYTE(v16) = (8 * (v16 - 2 * (v16 & 1)) - 120) ^ 0x64;
  }

  *(a5 + 63) = v16;
LABEL_6:
  JUMPOUT(0x1969B0D58);
}

void sub_1969C3368()
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v0;
  JUMPOUT(0x196996EE4);
}

uint64_t sub_1969C338C(uint64_t a1, int a2)
{
  v5 = ((a2 - 621014587) & 0x2503F7EB ^ 0x703A3322) + v2;
  v6 = v4 + 1616035832 > v5;
  if ((v4 + 1616035832) < 0xAE0F2F61 != v5 < ((a2 - 272) | 0x110u) - 1374739920)
  {
    v6 = (v4 + 1616035832) < 0xAE0F2F61;
  }

  return (*(v3 + 8 * ((11 * !v6) ^ (a2 - 2139))))();
}

uint64_t sub_1969C357C(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v27.val[1].i64[0] = (v23 + 13) & 0xF;
  v27.val[1].i64[1] = (v23 + 12) & 0xF;
  v27.val[2].i64[0] = (v23 + 11) & 0xF;
  v27.val[2].i64[1] = (v23 + 10) & 0xF;
  v27.val[3].i64[0] = (v23 + 9) & 0xF;
  v27.val[3].i64[1] = a2 & 0xF ^ 4;
  v28.val[0].i64[0] = (v23 + 7) & 0xF;
  v28.val[0].i64[1] = (v23 + 6) & 0xF;
  v28.val[1].i64[0] = (v23 + 5) & 0xF;
  v28.val[1].i64[1] = (v23 + 4) & 0xF;
  v28.val[2].i64[0] = (v23 + 3) & 0xF;
  v28.val[2].i64[1] = (v23 + 2) & 0xF;
  v28.val[3].i64[0] = (v23 + 1) & 0xF;
  v28.val[3].i64[1] = v23 & 0xF;
  v24 = vqtbl4q_s8(v28, xmmword_196EBFA60).u64[0];
  v25.i64[0] = 0x4D4D4D4D4D4D4D4DLL;
  v25.i64[1] = 0x4D4D4D4D4D4D4D4DLL;
  v27.val[0].i64[0] = ((a1 ^ 0x1BFB) - 5106) & (a3 + 15);
  v27.val[0].i64[1] = (v23 + 14) & 0xF;
  v28.val[3].i64[0] = vqtbl4q_s8(v27, xmmword_196EBFA60).u64[0];
  v28.val[3].i64[1] = v24;
  v28.val[0] = vrev64q_s8(vmulq_s8(v28.val[3], v25));
  *(a18 + a3) = veorq_s8(veorq_s8(veorq_s8(*(v22 + v27.val[0].i64[0] - 15), *(v19 + a3)), veorq_s8(*(v27.val[0].i64[0] + v21 - 14), *(v20 + v27.val[0].i64[0] - 15))), vextq_s8(v28.val[0], v28.val[0], 8uLL));
  return (*(a19 + 8 * ((6615 * ((v23 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_1969C373C()
{
  v4 = (v3 + 725) | 0xC4;
  v5 = (v4 - 3511) | 0x1000;
  v11 = v7;
  v10 = v4 - ((&v10 - 42668815 - 2 * (&v10 & 0xFD74ECF1)) ^ 0x5A8CCB0) * v2 + 1808;
  (*(v1 + 8 * (v4 ^ 0xA6E)))(&v10);
  v10 = v5 - (((&v10 | 0x36FFC601) + (~&v10 | 0xC90039FE)) ^ 0xCE23E641) * v2 + 1223;
  v11 = v8;
  result = (*(v1 + 8 * (v5 + 1949)))(&v10);
  *(v0 + 12) = (v4 ^ 0xFBBFEE32) + (v9 ^ 0x75DF8DFD) + ((2 * v9) & 0xEBBF1BFA);
  return result;
}

uint64_t sub_1969C3858()
{
  v0 = (LODWORD(STACK[0x90C]) ^ 0xFE5FFD5B) + (((STACK[0x228] ^ 0x636) + 2982) ^ 0x6DBBBC75) + ((2 * LODWORD(STACK[0x90C])) & 0xFCBFFAB6);
  v1 = (v0 ^ 0xDBE61ADB) & (2 * (v0 & 0x93E45300)) ^ v0 & 0x93E45300;
  v2 = ((2 * (v0 ^ 0xFB6E98DB)) ^ 0xD11597B6) & (v0 ^ 0xFB6E98DB) ^ (2 * (v0 ^ 0xFB6E98DB)) & 0x688ACBDA;
  v3 = v2 ^ 0x288A4849;
  v4 = (v2 ^ 0x40008000) & (4 * v1) ^ v1;
  v5 = ((4 * v3) ^ 0xA22B2F6C) & v3 ^ (4 * v3) & 0x688ACBD8;
  v6 = (v5 ^ 0x200A0B40) & (16 * v4) ^ v4;
  v7 = ((16 * (v5 ^ 0x4880C093)) ^ 0x88ACBDB0) & (v5 ^ 0x4880C093) ^ (16 * (v5 ^ 0x4880C093)) & 0x688ACBD0;
  return (*(STACK[0x248] + 8 * ((51 * ((v0 ^ (2 * ((((v7 ^ 0x6002424B) << 8) & 0x688ACB00 ^ 0x88A0000 ^ (((v7 ^ 0x6002424B) << 8) ^ 0x8ACB0000) & (v7 ^ 0x6002424B)) & (((v7 ^ 0x8888900) & (v6 << 8) ^ v6) << 16) ^ (v7 ^ 0x8888900) & (v6 << 8) ^ v6))) != 2481214208)) ^ (STACK[0x228] - 389))))();
}

uint64_t sub_1969C3AD8@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v8.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v9.i64[0] = 0xECECECECECECECECLL;
  v9.i64[1] = 0xECECECECECECECECLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * ((19 * (a1 + 32 != ((6 * (v2 ^ 0x1BDu)) ^ 0x175CLL))) ^ v2)))();
}

uint64_t sub_1969C3C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, int a18)
{
  v21 = 1012216201 * (&a13 ^ 0x84A988EC);
  a15 = v21 - 40011094;
  a13 = v21 ^ 0x80F33AA;
  a16 = a11;
  a17 = &a10;
  a18 = v21 - 1795307553 + v19;
  v22 = (*(v18 + 8 * (v19 ^ 0xA42)))(&a13);
  return (*(v18 + 8 * (((a14 == v20 + ((v19 + 1371934328) & 0xAE39EDEE) + 921) * (((v19 - 193) | 0x30A) ^ 0x199E)) ^ v19)))(v22);
}

uint64_t sub_1969C3DB0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v3);
  LODWORD(STACK[0x994]) = 1861446106;
  STACK[0x998] = &STACK[0x588];
  return (*(a1 + 8 * ((((((45 * (v3 ^ 0x4C) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * (((((45 * (v3 ^ 0x4C) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ (45 * (v3 ^ 0x14C)))))();
}

uint64_t sub_1969C3E48@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v4) = (v1 - 32) ^ *(v5 + v4);
  v8 = v4 + 1 > 0x6930A80A || v4 + v2 >= v3;
  return (*(v6 + 8 * ((2 * v8) | (16 * v8) | v1)))();
}

uint64_t sub_1969C3EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1969C3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, int a32, int a33)
{
  v35 = *(v34 - 196);
  v36 = a33 - ((((v35 - 3403) | 0xE20) - 689145815) & (2 * a30)) != 2144628688;
  return (*(v33 + 8 * (v36 | (32 * v36) | v35)))();
}

uint64_t sub_1969C3FB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  *v10 = a5;
  if (a2)
  {
    v12 = a10 == 97900969;
  }

  else
  {
    v12 = 1;
  }

  v14 = !v12 && a3 != 0;
  return (*(v11 + 8 * ((v14 * ((a1 + 207) ^ 0x135C)) ^ a1)))();
}

uint64_t sub_1969C40C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0xA48] = v2;
  STACK[0xA50] = a1;
  return (*(STACK[0x248] + 8 * (((v1 + 484 + 3 * (v1 ^ 0xC67) + 1556) * (v3 > 9)) ^ v1)))();
}

uint64_t sub_1969C4160(uint64_t a1, char a2, int a3)
{
  v9 = v4 + 2;
  v10 = (v6 - 2);
  *v10 = (v9 ^ v7) * (v9 + 17);
  *(v10 - 1) = (a2 ^ v9) * (v9 + 18);
  return (*(v8 + 8 * (((v5 == 2) * a3) ^ v3)))();
}

uint64_t sub_1969C4214(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, unsigned int a24, int a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v308 = a22 ^ 0x99;
  HIDWORD(a19) = 0;
  v58 = a3;
  v59 = __ROR8__((a17 + a3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v60 = __ROR8__(v59 ^ 0x49E9423B6F16E7D2, 8);
  v59 ^= 0xE1AFA7ACF6E0968ELL;
  v61 = (v60 + v59) ^ 0xE49D77DF873DBF7ELL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = ((a17 + a3) << a14) & 0x38;
  v64 = (__ROR8__(v61, 8) + v62) ^ 0xF5A2F1B9B5D0B209;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x5963B6C555D97F1FLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x61459D2AF01F24F7;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x64C31C027084DE6CLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x1A2AEBE44253AF03;
  v73 = ((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xAB3042D228875C41) >> v63;
  v74 = __ROR8__((a17 + a3 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (v74 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v76 = __ROR8__((v75 + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL, 8);
  v77 = (v75 + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v74 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v75, 61);
  v78 = (v77 + v76) ^ 0xF5A2F1B9B5D0B209;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (v79 + __ROR8__(v78, 8)) ^ 0x5963B6C555D97F1FLL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (v81 + __ROR8__(v80, 8)) ^ 0x61459D2AF01F24F7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (v83 + __ROR8__(v82, 8)) ^ 0x64C31C027084DE6CLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x1A2AEBE44253AF03;
  v87 = ((v86 ^ __ROR8__(v85, 61)) + __ROR8__(v86, 8)) ^ 0xAB3042D228875C41;
  v88 = v87 >> v63;
  v89 = v73 + (v87 << (v63 ^ 0x3Au) << 6);
  v90 = __ROR8__((a17 + a3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v91 = (v90 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v92 = (__ROR8__((v90 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v91) ^ 0xE49D77DF873DBF7ELL;
  v94 = __ROR8__(v91, 61);
  v93 = v92 ^ v94;
  v95 = ((v92 ^ v94) + (v92 << 56) + (v92 >> 8)) ^ 0xF5A2F1B9B5D0B209;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (v96 + __ROR8__(v95, 8)) ^ 0x5963B6C555D97F1FLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (v98 + __ROR8__(v97, 8)) ^ 0x61459D2AF01F24F7;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (v100 + __ROR8__(v99, 8)) ^ 0x64C31C027084DE6CLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = v102 + __ROR8__(v101, 8);
  v104 = v88 + ((((v103 ^ __ROR8__(v102, 61) ^ 0x22AEBE44253AF03) + __ROR8__(v103 ^ 0x1A2AEBE44253AF03, 8)) ^ 0x33042D228875C41) << (v63 ^ 0x3Au) << 6);
  v105 = *(a58 + (BYTE3(v89) ^ 0x36)) ^ (BYTE3(v89) - ((v89 >> 23) & 0x96) - 53) ^ 0x53 | ((*(a56 + (v73 ^ 0x45)) ^ 0x41) << 24) | ((*(a57 + (BYTE1(v89) ^ 0x67)) ^ 0xEF) << 16) | (((*(a55 + (BYTE2(v89) ^ 0xB5)) - 65) ^ 0xEC) << 8);
  v106 = *(a58 + (HIBYTE(v89) ^ 0x23)) ^ (HIBYTE(v89) - ((2 * HIBYTE(v89)) & 0x96) - 53) ^ 0xF9 | ((*(a56 + (BYTE4(v89) ^ 0xAELL)) ^ 0x79) << 24) | ((*(a57 + (BYTE5(v89) ^ 0x95)) ^ 0x66) << 16) | (((*(a55 + (BYTE6(v89) ^ 0x61)) - 65) ^ 0x6A) << 8);
  v298 = a3 | 0xELL;
  v299 = a3 | 0xALL;
  v300 = a3 | 9;
  v295 = a3 | 7;
  v107 = *(a17 + v295);
  v294 = a3 | 0xDLL;
  v296 = a3 | 5;
  v108 = a3;
  v301 = a3 | 8;
  v293 = a3 | 6;
  v290 = a3 | 4;
  v297 = a3 | 0xFLL;
  v288 = a3 | 0xBLL;
  v292 = a3 | 0xCLL;
  v289 = a3 | 3;
  v287 = a3 | 2;
  v291 = a3 | 1;
  LODWORD(v73) = (*(a58 + (*(a17 + (v58 | 3)) ^ 0x19)) ^ (*(a17 + (v58 | 3)) - ((2 * *(a17 + (v58 | 3))) & 0x96) - 53) ^ 0xBF) & 0xFFFF00FF | (((*(a55 + (*(a17 + v287) ^ 0xD7)) - 65) ^ 0x2E) << 8) | ((*(a57 + (*(a17 + v291) ^ 0x2DLL)) ^ 0x5E) << 16) | ((*(a56 + (*(a17 + a3) ^ 0xALL)) ^ 1) << 24);
  LODWORD(v278) = *(a58 + (*(a17 + (v58 | 0xB)) ^ 0xCDLL)) ^ (*(a17 + (v58 | 0xB)) - ((2 * *(a17 + (v58 | 0xB))) & 0x96) - 53) ^ 0x6B | (((*(a55 + (*(a17 + v299) ^ 0xCBLL)) - 65) ^ 0xB2) << 8) | ((*(a57 + (*(a17 + v300) ^ 0x1ALL)) ^ 0x2C) << 16) | ((*(a56 + (*(a17 + v301) ^ 0x18)) ^ 0x12) << 24);
  HIDWORD(v278) = (*(a58 + (v107 ^ 0xE6)) ^ (v107 - ((2 * v107) & 0x96) - 53) ^ 0x38) & 0xFFFF00FF | ((*(a57 + (*(a17 + v296) ^ 0xD3)) ^ 0xF3) << 16) | ((*(a55 + (*(a17 + v293) ^ 0x9FLL)) - 65) << 8) | ((*(a56 + (*(a17 + v290) ^ 0x61)) ^ 0xFFFFFFBF) << 24);
  HIDWORD(v279) = *(a58 + (BYTE3(v104) ^ 0xBBLL)) ^ (BYTE3(v104) - ((v104 >> 23) & 0x96) - 53) ^ 8 | ((*(a56 + (v88 ^ 0xE8)) ^ 0x2A) << 24) | ((*(a57 + (BYTE1(v104) ^ 0x7ELL)) ^ 0x53) << 16) | (((*(a55 + (BYTE2(v104) ^ 0x7CLL)) - 65) ^ 0x99) << 8);
  v280 = __PAIR64__(v105, v106);
  LODWORD(v76) = v106 ^ HIDWORD(v278) ^ 0x44413C96;
  v109 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a13)) - 4;
  LODWORD(v107) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v103) = v94 >> 4;
  LODWORD(v107) = HIDWORD(v279) ^ v278 ^ 0xE827DFBC;
  v110 = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v110 ^ 4;
  LODWORD(v94) = v110 ^ 0x388163F0;
  v111 = v94 >> 4;
  v112 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 128) - 8;
  v113 = *&v112[4 * ((*(a58 + (BYTE3(v104) ^ 0xBBLL)) ^ (BYTE3(v104) - ((v104 >> 23) & 0x96) - 53)) ^ 8 ^ *(a58 + (*(a17 + (v58 | 0xB)) ^ 0xCDLL)) ^ (*(a17 + (v58 | 0xB)) - ((2 * *(a17 + (v58 | 0xB))) & 0x96) - 53) ^ 0x6B ^ 0xBC)];
  HIDWORD(v94) = v113 ^ 0x1D7;
  LODWORD(v94) = v113 ^ 0x3A27CC00;
  v114 = (v94 >> 9) + 133851514 - ((2 * (v94 >> 9)) & 0xFF4D2F4);
  HIDWORD(v277) = v73 ^ 0x8A;
  LODWORD(v73) = v105 ^ v73 ^ 0x865E118B;
  v115 = *&v112[4 * v73];
  HIDWORD(v94) = v115 ^ 0x1D7;
  LODWORD(v94) = v115 ^ 0x3A27CC00;
  v116 = (v94 >> 9) ^ v103;
  LODWORD(v279) = *(a58 + (HIBYTE(v104) ^ 3)) ^ (HIBYTE(v104) - ((2 * HIBYTE(v104)) & 0x96) - 53) ^ 0xCE | ((*(a56 + (BYTE4(v104) ^ 0xD0)) ^ 0xFFFFFFEF) << 24) | ((*(a57 + (BYTE5(v104) ^ 0xA2)) ^ 0x14) << 16) | (((*(a55 + (BYTE6(v104) ^ 0x95)) - 65) ^ 0xC) << 8);
  LODWORD(v277) = (*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 | (((*(a55 + (*(a17 + v298) ^ 0x64)) - 65) ^ 0x24) << 8) | ((*(a57 + (*(a17 + v294) ^ 0x64)) ^ 0x1F) << 16) | ((*(a56 + (*(a17 + v292) ^ 0xD8)) ^ 0x1B) << 24)) ^ 0xC6;
  LODWORD(v104) = *&v109[4 * (((*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 | (((*(a55 + (*(a17 + v298) ^ 0x64)) - 65) ^ 0x24) << 8)) ^ 0xC6 ^ (*(a58 + (HIBYTE(v104) ^ 3)) ^ (HIBYTE(v104) - ((2 * HIBYTE(v104)) & 0x96) - 53) ^ 0xCE | (((*(a55 + (BYTE6(v104) ^ 0x95)) - 65) ^ 0xC) << 8)) ^ 0x256B) >> 8)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  v117 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 87) - 8;
  LODWORD(v103) = (v94 >> 4) ^ *&v117[4 * BYTE3(v76)] ^ v114;
  v118 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 277) - 4;
  LODWORD(v104) = (v116 + 871584170 - ((2 * v116) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v107)];
  LODWORD(v104) = (v104 + 133851514 - ((2 * v104) & 0xFF4D2F4)) ^ *&v117[4 * ((v277 ^ v279 ^ 0xBC3E256B) >> 24)];
  v119 = *&v112[4 * (*(a58 + (*(a17 + (v58 | 0xF)) ^ 0x23)) ^ (*(a17 + (v58 | 0xF)) - ((2 * *(a17 + (v58 | 0xF))) & 0x96) - 53) ^ 0x85 ^ 0xC6 ^ v279 ^ 0x6B)];
  HIDWORD(v94) = v119 ^ 0x1D7;
  LODWORD(v94) = v119 ^ 0x3A27CC00;
  v120 = v94 >> 9;
  v121 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v121 ^ 4;
  LODWORD(v94) = v121 ^ 0x388163F0;
  LODWORD(v107) = (v94 >> 4) ^ *&v117[4 * BYTE3(v107)];
  v122 = *&v112[4 * v76];
  HIDWORD(v94) = v122 ^ 0x1D7;
  LODWORD(v94) = v122 ^ 0x3A27CC00;
  LODWORD(v107) = v107 ^ (v120 + 133851514 - ((2 * v120) & 0xFF4D2F4));
  v123 = *&v118[4 * (((v277 ^ v279) >> 16) ^ 0x12)] ^ (v94 >> 9) ^ (v111 + 871584170 - ((2 * v111) & 0x67E6A354));
  v124 = (v123 + 133851514 - ((2 * v123) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v73) = ((v103 ^ 0x719E5F62) + 871584170 - 2 * ((v103 ^ 0x719E5F62) & 0x33F351BE ^ v103 & 0x14)) ^ *&v118[4 * BYTE2(v73)] ^ 0xF9A67046;
  LODWORD(v103) = *&v109[4 * BYTE1(v73)];
  LODWORD(v107) = *&v118[4 * BYTE2(v76)] ^ 0x2CA8B861 ^ (v107 + 871584170 - ((2 * v107) & 0x67E6A354));
  HIDWORD(v94) = v103 ^ 4;
  LODWORD(v94) = v103 ^ 0x388163F0;
  v125 = v104 ^ 0x66911A15;
  LODWORD(v103) = ((v94 >> 4) + 133851514 - ((2 * (v94 >> 4)) & 0xFF4D2F4)) ^ *&v117[4 * ((v104 ^ 0x66911A15) >> 24)];
  LODWORD(v76) = *&v112[4 * v73];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  v126 = (v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354);
  LODWORD(v104) = *&v109[4 * (BYTE1(v104) ^ 0x61)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  LODWORD(v104) = ((v94 >> 4) + 871584170 - ((2 * (v94 >> 4)) & 0x67E6A354)) ^ *&v118[4 * (BYTE2(v124) ^ 0xBB)];
  LODWORD(v76) = v104 + 133851514 - ((2 * v104) & 0xFF4D2F4);
  LODWORD(v104) = *&v112[4 * v125];
  HIDWORD(v94) = v104 ^ 0x1D7;
  LODWORD(v94) = v104 ^ 0x3A27CC00;
  v124 ^= 0xE2971AC9;
  LODWORD(v104) = *&v117[4 * BYTE3(v107)] ^ *&v118[4 * BYTE2(v73)] ^ (v94 >> 9) ^ (((*&v109[4 * BYTE1(v124)] ^ 0x388163F4u) >> (v88 & 4) >> (v88 & 4 ^ 4)) + ((*&v109[4 * BYTE1(v124)] << 28) ^ 0x40000000));
  LODWORD(v88) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  LODWORD(v88) = v126 ^ *&v118[4 * BYTE2(v125)] ^ (v94 >> 4);
  v127 = *&v112[4 * v124];
  HIDWORD(v94) = v127 ^ 0x1D7;
  LODWORD(v94) = v127 ^ 0x3A27CC00;
  v128 = (v88 + 133851514 - ((2 * v88) & 0xFF4D2F4)) ^ *&v117[4 * HIBYTE(v124)];
  LODWORD(v88) = *&v118[4 * BYTE2(v107)] ^ (v94 >> 9);
  LODWORD(v107) = *&v112[4 * v107];
  HIDWORD(v94) = v107 ^ 0x1D7;
  LODWORD(v94) = v107 ^ 0x3A27CC00;
  LODWORD(v88) = v88 ^ (v103 + 871584170 - ((2 * v103) & 0x67E6A354));
  BYTE1(v107) = BYTE1(v104) ^ 0x64;
  LODWORD(v103) = *&v112[4 * (v104 ^ 0x98)];
  LODWORD(v73) = *&v117[4 * BYTE3(v73)] ^ (v94 >> 9);
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v73) = v73 ^ 0xCEDC06E0 ^ v76;
  LOBYTE(v103) = v128 ^ 0xF2;
  v129 = *&v112[4 * (v88 ^ 0x79)];
  LODWORD(v76) = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * ((v128 ^ 0x108F19F2u) >> 16)];
  HIDWORD(v94) = v129 ^ 0x1D7;
  LODWORD(v94) = v129 ^ 0x3A27CC00;
  v130 = *&v118[4 * (BYTE2(v88) ^ 0x66)] ^ *&v117[4 * ((v128 ^ 0x108F19F2u) >> 24)];
  v131 = (v94 >> 9) + 133851515 + ~((2 * (v94 >> 9)) & 0xFF4D2F4);
  v132 = *&v112[4 * v73];
  HIDWORD(v94) = v132 ^ 0x1D7;
  LODWORD(v94) = v132 ^ 0x3A27CC00;
  v133 = v94 >> 9;
  v134 = *&v109[4 * (BYTE1(v128) ^ 0x62)];
  HIDWORD(v94) = v134 ^ 4;
  LODWORD(v94) = v134 ^ 0x388163F0;
  LODWORD(v104) = v104 ^ 0x34C6E784;
  v135 = v131 ^ *&v117[4 * BYTE3(v104)] ^ (v94 >> 4);
  v136 = *&v109[4 * ((v88 ^ 0xEA79) >> 8)];
  HIDWORD(v94) = v136 ^ 4;
  LODWORD(v94) = v136 ^ 0x388163F0;
  v137 = v94 >> 4;
  LODWORD(v103) = *&v112[4 * v103];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v103) = v94 >> 9;
  LODWORD(v107) = *&v109[4 * (BYTE1(v107) ^ 0xF8)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v107) = v130 ^ v133 ^ (v94 >> 4);
  v138 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v138 ^ 4;
  LODWORD(v94) = v138 ^ 0x388163F0;
  LODWORD(v103) = *&v117[4 * ((v88 ^ 0xEE4AEA79) >> 24)] ^ *&v118[4 * BYTE2(v104)] ^ (v94 >> 4) ^ v103;
  LODWORD(v104) = *&v117[4 * BYTE3(v73)] ^ v137 ^ 0x7A0C571F ^ (v76 + 133851514 - ((2 * v76) & 0xFF4D2F4));
  LODWORD(v76) = *&v112[4 * ((v117[4 * BYTE3(v73)] ^ v137) ^ 0x1F ^ (v76 + 122 - ((2 * v76) & 0xF4)))];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  LODWORD(v73) = (v135 + 871584170 - ((2 * v135) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v73)] ^ 0x6A4C91A5;
  LODWORD(v76) = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * ~WORD1(v103)];
  v139 = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v139 ^ 4;
  LODWORD(v94) = v139 ^ 0x388163F0;
  v140 = v94 >> 4;
  v141 = *&v112[4 * v73];
  HIDWORD(v94) = v141 ^ 0x1D7;
  LODWORD(v94) = v141 ^ 0x3A27CC00;
  LOBYTE(v138) = v103 ^ 0xEC;
  v142 = (v140 + 133851514 - ((2 * v140) & 0xFF4D2F4)) ^ *&v117[4 * ((v103 ^ 0x7ED345EC) >> 24)];
  v143 = *&v109[4 * ((v103 ^ 0x45EC) >> 8)];
  LODWORD(v103) = *&v118[4 * (BYTE2(v107) ^ 0xE4)] ^ *&v117[4 * BYTE3(v104)] ^ 0x3FCD4B97 ^ (v94 >> 9);
  HIDWORD(v94) = v143 ^ 4;
  LODWORD(v94) = v143 ^ 0x388163F0;
  LODWORD(v103) = (v94 >> 4) + v103 - 2 * ((v94 >> 4) & v103);
  LODWORD(v107) = v107 ^ 0x32C89EAF;
  v144 = *&v112[4 * v107];
  HIDWORD(v94) = v144 ^ 0x1D7;
  LODWORD(v94) = v144 ^ 0x3A27CC00;
  v145 = v94 >> 9;
  v146 = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v146 ^ 4;
  LODWORD(v94) = v146 ^ 0x388163F0;
  v147 = v94 >> 4;
  v148 = *&v112[4 * v138];
  HIDWORD(v94) = v148 ^ 0x1D7;
  LODWORD(v94) = v148 ^ 0x3A27CC00;
  v149 = *&v109[4 * BYTE1(v107)];
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ (v94 >> 9);
  HIDWORD(v94) = v149 ^ 4;
  LODWORD(v94) = v149 ^ 0x388163F0;
  v150 = *&v117[4 * BYTE3(v73)] ^ v104 ^ (v94 >> 4);
  LODWORD(v76) = *&v117[4 * BYTE3(v107)] ^ v147 ^ 0x43C3A22E ^ (v76 + 133851514 - ((2 * v76) & 0xFF4D2F4));
  LODWORD(v104) = *&v118[4 * BYTE2(v73)] ^ v145 ^ 0x84E5DF94 ^ (v142 + 871584170 - ((2 * v142) & 0x67E6A354));
  LODWORD(v73) = *&v109[4 * (BYTE1(v150) ^ 0xCD)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  LODWORD(v107) = v94 >> 4;
  LODWORD(v73) = v150 ^ 0x8016B667;
  v151 = *&v112[4 * (v150 ^ 0x67)];
  HIDWORD(v94) = v151 ^ 0x1D7;
  LODWORD(v94) = v151 ^ 0x3A27CC00;
  v152 = v94 >> 9;
  v153 = v107 + 133851514 - ((2 * v107) & 0xFF4D2F4);
  LODWORD(v107) = v103 ^ 0xD37AB12A;
  v154 = *&v109[4 * ((v103 ^ 0xB12A) >> 8)];
  LODWORD(v103) = v153 ^ *&v117[4 * BYTE3(v76)];
  HIDWORD(v94) = v154 ^ 4;
  LODWORD(v94) = v154 ^ 0x388163F0;
  v155 = v94 >> 4;
  v156 = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v156 ^ 4;
  LODWORD(v94) = v156 ^ 0x388163F0;
  v157 = (v94 >> 4) ^ v152;
  v158 = *&v112[4 * v76];
  HIDWORD(v94) = v158 ^ 0x1D7;
  LODWORD(v94) = v158 ^ 0x3A27CC00;
  v159 = (v94 >> 9) ^ v155;
  v160 = *&v118[4 * BYTE2(v76)];
  v161 = (-871584170 - (((v160 ^ 0xD4E58995) + 723154539) ^ ((v160 ^ 0xE4D7FBC9) + 455607351) ^ ((v160 ^ 0x3C123F6) - 62989302))) ^ (197423943 - (v160 ^ 0x383722ED));
  v162 = *&v112[4 * v104];
  v163 = (v161 + 871584170 - ((2 * v161) & 0x67E6A354)) ^ v160;
  HIDWORD(v94) = v162 ^ 0x1D7;
  LODWORD(v94) = v162 ^ 0x3A27CC00;
  v164 = v94 >> 9;
  v165 = v157 ^ (v163 + 197423943);
  v166 = *&v112[4 * v107];
  HIDWORD(v94) = v166 ^ 0x1D7;
  LODWORD(v94) = v166 ^ 0x3A27CC00;
  LODWORD(v103) = v103 ^ (v94 >> 9);
  LODWORD(v76) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  v167 = (v159 + 133851514 - ((2 * v159) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v104)];
  v168 = (((v94 >> 4) ^ v164) + 133851514 - ((2 * ((v94 >> 4) ^ v164)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ 0x1CB27B27 ^ (v103 + 871584170 - ((2 * v103) & 0x67E6A354));
  LODWORD(v103) = *&v118[4 * BYTE2(v73)] ^ 0x94A5192E ^ (v167 + 871584170 - ((2 * v167) & 0x67E6A354));
  LODWORD(v76) = *&v117[4 * BYTE3(v107)] ^ 0x34E62009 ^ (v165 + 133851514 - ((2 * v165) & 0xFF4D2F4));
  LODWORD(v73) = *&v112[4 * (v118[4 * BYTE2(v73)] ^ 0x2E ^ (v167 - 86 - ((2 * v167) & 0x54)))];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v169 = v94 >> 9;
  LODWORD(v73) = *&v112[4 * v76];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v170 = v94 >> 9;
  LODWORD(v73) = *&v112[4 * v104];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  v171 = v94 >> 9;
  LODWORD(v73) = v168 + 871584170 - ((2 * v168) & 0x67E6A354);
  v172 = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v172 ^ 4;
  LODWORD(v94) = v172 ^ 0x388163F0;
  LODWORD(v73) = *&v118[4 * BYTE2(v107)] ^ 0xC8FE04D7 ^ v73;
  LODWORD(v107) = (v94 >> 4) ^ v171;
  v173 = *&v112[4 * v73];
  HIDWORD(v94) = v173 ^ 0x1D7;
  LODWORD(v94) = v173 ^ 0x3A27CC00;
  LODWORD(v107) = (v107 + 133851515 + ~((2 * v107) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v103)];
  LODWORD(v88) = (v170 + 871584170 - ((2 * v170) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v103)];
  v174 = ((v94 >> 9) + 133851514 - ((2 * (v94 >> 9)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v76)];
  v175 = *&v109[4 * BYTE1(v104)];
  v176 = v88 + 133851514 - ((2 * v88) & 0xFF4D2F4);
  HIDWORD(v94) = v175 ^ 4;
  LODWORD(v94) = v175 ^ 0x388163F0;
  v177 = (((v94 >> 4) ^ v169) + 133851514 - ((2 * ((v94 >> 4) ^ v169)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v88) = v107 + 871584170 - ((2 * v107) & 0x67E6A354);
  LODWORD(v107) = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v107 ^ 4;
  LODWORD(v94) = v107 ^ 0x388163F0;
  LODWORD(v107) = v94 >> 4;
  LODWORD(v103) = *&v109[4 * BYTE1(v103)];
  HIDWORD(v94) = v103 ^ 4;
  LODWORD(v94) = v103 ^ 0x388163F0;
  v178 = v94 >> 4;
  LODWORD(v103) = *&v117[4 * BYTE3(v104)] ^ v107 ^ 0xE46FF14D ^ v176;
  LODWORD(v107) = *&v118[4 * BYTE2(v76)] ^ 0x53836494 ^ (v177 + 871584170 - ((2 * v177) & 0x67E6A354));
  LODWORD(v76) = *&v112[4 * (v118[4 * BYTE2(v76)] ^ 0x94 ^ (v177 - 86 - ((2 * v177) & 0x54)))];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  v179 = v94 >> 9;
  LODWORD(v76) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  v180 = v94 >> 4;
  LODWORD(v104) = *&v118[4 * BYTE2(v104)] ^ v178 ^ 0x87CF1B64 ^ (v174 + 871584170 - ((2 * v174) & 0x67E6A354));
  LODWORD(v76) = *&v112[4 * v104];
  HIDWORD(v94) = v76 ^ 0x1D7;
  LODWORD(v94) = v76 ^ 0x3A27CC00;
  LODWORD(v76) = *&v118[4 * BYTE2(v73)] ^ 0xF8042EF4 ^ v88;
  LODWORD(v73) = (v94 >> 9) ^ *&v118[4 * BYTE2(v76)] ^ (v180 + 871584170 - ((2 * v180) & 0x67E6A354));
  v181 = (v179 + 871584170 - ((2 * v179) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v103)];
  LODWORD(v88) = *&v109[4 * BYTE1(v103)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  v182 = v94 >> 4;
  LODWORD(v88) = *&v109[4 * BYTE1(v76)];
  HIDWORD(v94) = v88 ^ 4;
  LODWORD(v94) = v88 ^ 0x388163F0;
  v183 = v94 >> 4;
  LODWORD(v88) = (v73 + 133851514 - ((2 * v73) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v103)];
  LODWORD(v73) = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  v184 = v94 >> 4;
  LODWORD(v73) = *&v112[4 * v76];
  HIDWORD(v94) = v73 ^ 0x1D7;
  LODWORD(v94) = v73 ^ 0x3A27CC00;
  LODWORD(v73) = v94 >> 9;
  LODWORD(v103) = *&v112[4 * v103];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  v185 = *&v118[4 * BYTE2(v104)];
  LODWORD(v104) = *&v117[4 * BYTE3(v104)] ^ v183 ^ 0xC7FFD924 ^ (v181 + 133851514 - ((2 * v181) & 0xFF4D2F4));
  LODWORD(v73) = v185 ^ *&v117[4 * BYTE3(v107)] ^ v182 ^ 0x441A742D ^ v73;
  LODWORD(v107) = *&v117[4 * BYTE3(v76)] ^ *&v118[4 * BYTE2(v107)] ^ v184 ^ (v94 >> 9) ^ 0x3BD141BD;
  LODWORD(v76) = *&v109[4 * BYTE1(v107)];
  HIDWORD(v94) = v76 ^ 4;
  LODWORD(v94) = v76 ^ 0x388163F0;
  LODWORD(v76) = ((v94 >> 4) + 133851514 - ((2 * (v94 >> 4)) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v104)];
  LODWORD(v103) = *&v118[4 * BYTE2(v107)] ^ 0xEB800000 ^ (*&v112[4 * v104] << 23) ^ (((*&v112[4 * v104] >> 9) ^ 0x1D13E6) + 871584170 - ((2 * ((*&v112[4 * v104] >> 9) ^ 0x1D13E6)) & 0xE6A354));
  v186 = *&v112[4 * v73];
  HIDWORD(v94) = v186 ^ 0x1D7;
  LODWORD(v94) = v186 ^ 0x3A27CC00;
  LODWORD(v76) = (v94 >> 9) ^ *&v118[4 * ((v88 ^ 0xC3A0B73E) >> 16)] ^ (v76 + 871584170 - ((2 * v76) & 0x67E6A354));
  v187 = v103 + 133851514 - ((2 * v103) & 0xFF4D2F4);
  LODWORD(v103) = *&v112[4 * v107];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  LODWORD(v103) = (v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354);
  v188 = *&v109[4 * ((v88 ^ 0xB73E) >> 8)];
  HIDWORD(v94) = v188 ^ 4;
  LODWORD(v94) = v188 ^ 0x388163F0;
  LODWORD(v103) = (v94 >> 4) ^ *&v118[4 * BYTE2(v104)] ^ v103;
  LODWORD(v103) = (v103 + 133851514 - ((2 * v103) & 0xFF4D2F4)) ^ *&v117[4 * BYTE3(v73)];
  LODWORD(v107) = *&v117[4 * BYTE3(v107)] ^ *&v118[4 * BYTE2(v73)];
  LODWORD(v104) = *&v109[4 * BYTE1(v104)];
  HIDWORD(v94) = v104 ^ 4;
  LODWORD(v94) = v104 ^ 0x388163F0;
  LODWORD(v104) = v94 >> 4;
  LODWORD(v73) = *&v109[4 * BYTE1(v73)];
  HIDWORD(v94) = v73 ^ 4;
  LODWORD(v94) = v73 ^ 0x388163F0;
  LODWORD(v104) = v107 ^ v104;
  LODWORD(v73) = *&v117[4 * ((v88 ^ 0xC3A0B73E) >> 24)] ^ (v94 >> 4) ^ 0x8111DD7F ^ v187;
  LODWORD(v107) = *&v112[4 * (v88 ^ 0x22)];
  HIDWORD(v94) = v107 ^ 0x1D7;
  LODWORD(v94) = v107 ^ 0x3A27CC00;
  LODWORD(v107) = v104 ^ (v94 >> 9);
  LODWORD(v104) = *&v112[4 * v73];
  HIDWORD(v94) = v104 ^ 0x1D7;
  LODWORD(v94) = v104 ^ 0x3A27CC00;
  v189 = v94 >> 9;
  v190 = *&v112[4 * (v107 ^ 0x4D)];
  v191 = ((v190 << 23) ^ 0xEB800000) + 133851514 - ((2 * ((v190 << 23) ^ 0xEB800000)) & 0xF000000);
  LODWORD(v88) = v103 ^ 0x13B3A6C8;
  v192 = *&v117[4 * ((v103 ^ 0x13B3A6C8) >> 24)] ^ (v190 >> 9);
  LODWORD(v103) = *&v112[4 * (v103 ^ 0xD4)];
  HIDWORD(v94) = v103 ^ 0x1D7;
  LODWORD(v94) = v103 ^ 0x3A27CC00;
  v193 = v192 ^ v191;
  v194 = ((v94 >> 9) + 871584170 - ((2 * (v94 >> 9)) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v73)];
  v195 = *&v109[4 * ((v76 ^ 0x5D0B) >> 8)];
  LODWORD(v103) = (v193 ^ 0x1D13E6) + 871584170 - 2 * ((v193 ^ 0x1D13E6) & 0x33F351BA ^ v193 & 0x10);
  HIDWORD(v94) = v195 ^ 4;
  LODWORD(v94) = v195 ^ 0x388163F0;
  v196 = v94 >> 4;
  v197 = *&v109[4 * BYTE1(v88)];
  HIDWORD(v94) = v197 ^ 4;
  LODWORD(v94) = v197 ^ 0x388163F0;
  v198 = v94 >> 4;
  v199 = v196 ^ v189;
  v200 = *&v109[4 * ((v107 ^ 0x3E4D) >> 8)];
  HIDWORD(v94) = v200 ^ 4;
  LODWORD(v94) = v200 ^ 0x388163F0;
  v201 = *&v109[4 * BYTE1(v73)];
  LODWORD(v109) = (v94 >> 4) ^ *&v117[4 * ((v76 ^ 0xA02C5D0B) >> 24)] ^ (v194 + 133851514 - ((2 * v194) & 0xFF4D2F4));
  HIDWORD(v94) = v201 ^ 4;
  LODWORD(v94) = v201 ^ 0x388163F0;
  v202 = v94 >> 4;
  LODWORD(v88) = (v199 + 871584170 - ((2 * v199) & 0x67E6A354)) ^ *&v118[4 * BYTE2(v88)];
  v203 = *&v112[4 * (v76 ^ 0xB)];
  HIDWORD(v94) = v203 ^ 0x1D7;
  LODWORD(v94) = v203 ^ 0x3A27CC00;
  LODWORD(v88) = (v88 + 133851514 - ((2 * v88) & 0xFF4D2F4)) ^ *&v117[4 * ((v107 ^ 0xEFB13E4D) >> 24)];
  LODWORD(v117) = *&v118[4 * (BYTE2(v107) ^ 0x9D)] ^ *&v117[4 * BYTE3(v73)] ^ (v94 >> 9) ^ 0xB82C36C ^ v198;
  v204 = *&v118[4 * BYTE2(v76)] ^ v202 ^ 0x88306132 ^ v103;
  v205 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) + 79) - 4;
  v206 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a13) - 8;
  LODWORD(v104) = *&v206[4 * (v117 >> 24)];
  LODWORD(v73) = (v104 + 707941602 - ((2 * v104 - 1101223474) & 0x9607FFF6)) ^ *&v205[4 * ((v88 ^ 0x84A43AA4) >> 16)];
  v207 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a12)) - 4;
  LODWORD(v73) = *&v207[4 * BYTE1(v204)] ^ (v73 - 170340217 - ((2 * v73) & 0xEBB1A10E));
  LODWORD(v76) = v73 - 388011128 - ((2 * v73) & 0xD1BED710);
  v208 = (__ROR8__(a18 + v108, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x6AF7234D0CC131D5;
  v209 = __ROR8__(v208 ^ 0x49E9423B6F16E7D2, 8);
  v208 ^= 0xE1AFA7ACF6E0968ELL;
  v210 = (v209 + v208) ^ 0xE49D77DF873DBF7ELL;
  v211 = v210 ^ __ROR8__(v208, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0xF5A2F1B9B5D0B209;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0x5963B6C555D97F1FLL;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = (v215 + __ROR8__(v214, 8)) ^ 0x61459D2AF01F24F7;
  v217 = v216 ^ __ROR8__(v215, 61);
  v218 = (v217 + __ROR8__(v216, 8)) ^ 0x64C31C027084DE6CLL;
  v219 = v218 ^ __ROR8__(v217, 61);
  v220 = (v219 + __ROR8__(v218, 8)) ^ 0x1A2AEBE44253AF03;
  v221 = __ROR8__(v220, 8) + (v220 ^ __ROR8__(v219, 61));
  v222 = ((a18 + v108 + 8) >> 8) - 0x6AF7234D0CC131D5 + ((a18 + v108 + 8) >> 3 << 59);
  v223 = __ROR8__(v222 ^ 0x49E9423B6F16E7D2, 8);
  v222 ^= 0xE1AFA7ACF6E0968ELL;
  v224 = (v223 + v222) ^ 0xE49D77DF873DBF7ELL;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = (v225 + __ROR8__(v224, 8)) ^ 0xF5A2F1B9B5D0B209;
  v227 = v226 ^ __ROR8__(v225, 61);
  v228 = (__ROR8__(v226, 8) + v227) ^ 0x5963B6C555D97F1FLL;
  v229 = v228 ^ __ROR8__(v227, 61);
  v230 = (__ROR8__(v228, 8) + v229) ^ 0x61459D2AF01F24F7;
  v231 = v230 ^ __ROR8__(v229, 61);
  v232 = (v231 + __ROR8__(v230, 8)) ^ 0x64C31C027084DE6CLL;
  v233 = v232 ^ __ROR8__(v231, 61);
  v234 = (v233 + __ROR8__(v232, 8)) ^ 0x1A2AEBE44253AF03;
  v235 = (v234 ^ __ROR8__(v233, 61)) + __ROR8__(v234, 8);
  v286 = (a18 + v108);
  v236 = ((a18 + v108 + 16) >> 8) - 0x6AF7234D0CC131D5 + ((a18 + v108 + 16) >> 3 << 59);
  v237 = v236 ^ 0x49E9423B6F16E7D2;
  v236 ^= 0xE1AFA7ACF6E0968ELL;
  v238 = (v236 + (v237 << 56) + (v237 >> 8)) ^ 0xE49D77DF873DBF7ELL;
  v239 = v238 ^ __ROR8__(v236, 61);
  v240 = (v239 + __ROR8__(v238, 8)) ^ 0xF5A2F1B9B5D0B209;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = (__ROR8__(v240, 8) + v241) ^ 0x5963B6C555D97F1FLL;
  v243 = v242 ^ __ROR8__(v241, 61);
  v244 = (v243 + __ROR8__(v242, 8)) ^ 0x61459D2AF01F24F7;
  v245 = v244 ^ __ROR8__(v243, 61);
  v246 = (v245 + __ROR8__(v244, 8)) ^ 0x64C31C027084DE6CLL;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = (v247 + __ROR8__(v246, 8)) ^ 0x1A2AEBE44253AF03;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = __ROR8__(v248, 8);
  v251 = v221 ^ 0xAB3042D228875C41;
  v252 = v235 ^ 0xAB3042D228875C41;
  LOBYTE(v235) = 8 * ((a18 + v108) & 7);
  v253 = v251 >> v235;
  LOBYTE(v198) = v235 ^ 0x3A;
  v254 = v253 + (v252 << (v235 ^ 0x3Au) << 6);
  v255 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a12);
  LODWORD(v76) = (((v253 + (v252 << (v235 ^ 0x3A) << 6)) >> 24) + (~(v254 >> 23) | 0x69) - 52) ^ *(a58 + (((v253 + (v252 << (v235 ^ 0x3A) << 6)) >> 24) ^ 0xB0)) ^ a21 ^ a27 ^ *(v255 + 4 * (v109 ^ 0x99u)) ^ v76 ^ ((*(a56 + (v253 ^ 0x62)) ^ 0x88888888) << 24) ^ ((*(a57 + (BYTE1(v254) ^ 0xADLL)) ^ 0x7A) << 16) ^ (((*(a55 + (BYTE2(v254) ^ 0xB5)) - 65) ^ 0xEC) << 8) ^ 0x16;
  HIDWORD(v284) = *&v206[4 * ((v109 >> 24) ^ 0x1A)];
  v256 = *&v206[4 * HIBYTE(v204)];
  v307 = *&v206[4 * (BYTE3(v88) ^ 0xF3)];
  LODWORD(v284) = *&v205[4 * BYTE2(v117)];
  v305 = *&v205[4 * BYTE2(v204)];
  LODWORD(v283) = *&v205[4 * ((v109 ^ 0x6D921A99) >> 16)];
  LODWORD(v282) = *&v207[4 * BYTE1(v117)];
  HIDWORD(v285) = *&v207[4 * ((v109 ^ 0x1A99) >> 8)];
  LODWORD(v285) = *&v207[4 * ((v88 ^ 0x3AA4) >> 8)];
  HIDWORD(v283) = *(v255 + 4 * v204);
  HIDWORD(v282) = *(v255 + 4 * (v88 ^ 0xA4u));
  v302 = *(v255 + 4 * v117);
  v257 = v252 >> v235;
  HIDWORD(v281) = v76 - ((2 * v76) & 0x9DABB94) + 82664906;
  v258 = v257 + (((v250 + v249) ^ 0x33042D228875C41) << v198 << 6);
  LOBYTE(v201) = (v257 + (((v250 + v249) ^ 0x28875C41) << v198 << 6)) >> 24;
  v259 = HIDWORD(v281) ^ 0x4A792299u;
  v260 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 59) - 8;
  LODWORD(v281) = *(a56 + (BYTE4(v254) ^ 0x5ELL));
  v261 = HIBYTE(v254);
  v262 = *(a57 + (BYTE5(v254) ^ 0xF6));
  v263 = *(a55 + (BYTE6(v254) ^ 0xB7));
  v264 = *(a58 + (HIBYTE(v254) ^ 0xFE));
  LODWORD(v254) = *(a56 + (v257 ^ 0xCFLL));
  v265 = *(a57 + (BYTE1(v258) ^ 0x64));
  LOBYTE(v88) = *(a55 + (BYTE2(v258) ^ 0xCLL));
  LODWORD(v76) = *(a58 + (v201 ^ 0xA7));
  v266 = *(a56 + (BYTE4(v258) ^ 0xECLL));
  v267 = *(a57 + (BYTE5(v258) ^ 0xF9));
  v268 = *(a55 + (BYTE6(v258) ^ 0x5DLL));
  v269 = *(a58 + (HIBYTE(v258) ^ 0x1C));
  *(a18 + v287) = (109 * v260[BYTE1(v259) ^ 0x97] + 111) ^ 0xDC;
  LODWORD(v109) = (v256 - ((2 * v256 - 1101223474) & 0xEBB1A10E) - 720951954) ^ v282;
  LODWORD(v109) = (v109 - ((2 * v109) & 0x9607FFF6) + 1258553339) ^ v283;
  LODWORD(v109) = a25 ^ v308 ^ HIDWORD(v282) ^ (v109 - 388011128 - ((2 * v109) & 0xD1BED710)) ^ ((v254 ^ 0xFFFFFFE3) << 24) ^ ((v265 ^ 0xA5) << 16) ^ v76 ^ (v201 - ((v258 >> 23) & 0x96) - 53) ^ (((v88 - 65) ^ 0x50) << 8);
  LODWORD(v109) = v109 - ((2 * v109) & 0xE7F43B32) - 201712231;
  LODWORD(v253) = v109 ^ 0x9D26C16;
  v270 = v109 ^ 0x6BD0F304;
  v271 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(a11));
  *(a18 + v288) = (*(v271 + (v109 ^ 1)) + (v109 ^ 4) + 11) ^ 0x28;
  v272 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) - 421) - 8;
  *v286 = (((HIDWORD(v281) ^ 0x4A792299u) >> 24) - (((HIDWORD(v281) ^ 0x4A792299u) >> 23) & 0x82) + 65) ^ 0x59 ^ v272[((HIDWORD(v281) ^ 0x4A792299u) >> 24) ^ 0x63];
  *(a18 + v289) = ((BYTE4(v281) ^ 0xAA) + *(v271 + (BYTE4(v281) ^ 0xAFLL)) + 11) ^ 0x28;
  LODWORD(v109) = (HIDWORD(v284) + 707941602 - ((2 * HIDWORD(v284) - 1101223474) & 0x9607FFF6)) ^ v284;
  LODWORD(v109) = HIDWORD(v283) ^ (v109 - 388011128 - ((2 * v109) & 0xD1BED710));
  LODWORD(v109) = (v261 - ((2 * v261) & 0x96) - 53) ^ v264 ^ a23 ^ a26 ^ v285 ^ (v109 - 170340217 - ((2 * v109) & 0xEBB1A10E)) ^ ((v281 ^ 0xFFFFFFFB) << 24) ^ ((v262 ^ 0xCF) << 16) ^ (((v263 - 65) ^ 0x96) << 8) ^ 0x58;
  LODWORD(v88) = v109 - ((2 * v109) & 0x9F375F90) - 811880504;
  *(a18 + v290) = (((v88 ^ 0x10723E1) >> 24) - (((v88 ^ 0x10723E1) >> 23) & 0x82) + 65) ^ v272[((v88 ^ 0x10723E1) >> 24) ^ 0xA5] ^ 0x66;
  LODWORD(v249) = (HIBYTE(v258) - ((2 * HIBYTE(v258)) & 0x96) - 53) ^ v269 ^ a20 ^ a24 ^ v302 ^ ((v305 ^ HIDWORD(v285) ^ 0xBEDB2F7C ^ (v307 - 550611737)) - 388011128 - ((2 * (v305 ^ HIDWORD(v285) ^ 0xBEDB2F7C ^ (v307 - 550611737))) & 0xD1BED710)) ^ ((v266 ^ 0x9C) << 24) ^ ((v267 ^ 0xA1) << 16) ^ (((v268 - 65) ^ 0x16) << 8) ^ 0xBA;
  LODWORD(v249) = v249 - ((2 * v249) & 0xFF96718) - 2013482100;
  *(a18 + v298) = (109 * v260[((v249 ^ 0x37E6) >> 8) ^ 0x54] + 111) ^ 0xDB;
  v273 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + HIDWORD(a15) + 55) - 4;
  *(a18 + v294) = v273[((v249 ^ 0x528A37E6) >> 16) ^ 0x55] ^ 0x24;
  *(a18 + v295) = ((v88 ^ 0x74) + *(v271 + (v88 ^ 0x71)) + 11) ^ 0x8F;
  *(a18 + v293) = (109 * v260[((v88 ^ 0x23E1) >> 8) ^ 0x8FLL] + 111) ^ 0xFC;
  *(a18 + v299) = (109 * v260[BYTE1(v253) ^ 0x5BLL] + 111) ^ 0x2A;
  *(a18 + v296) = v273[((v88 ^ 0x10723E1) >> 16) ^ 0xABLL] ^ 0x9D;
  *(a18 + v300) = v273[BYTE2(v253) ^ 0xACLL] ^ 0x51;
  *(a18 + v292) = (((v249 ^ 0x528A37E6) >> 24) - (((v249 ^ 0x528A37E6) >> 23) & 0x82) + 65) ^ 0x24 ^ v272[((v249 ^ 0x528A37E6) >> 24) ^ 0x23];
  *(a18 + v291) = v273[BYTE2(v259) ^ 0x27] ^ 0x79;
  *(a18 + v297) = ((v249 ^ 0xF1) + *(v271 + (v249 ^ 0xF4)) + 11) ^ 0xC2;
  v274 = a15 < 0x568A2215;
  v275 = a3 + 16;
  if (v274 == v275 >= 0xA975DDEB)
  {
    v274 = a3 + 1451893285 < a15;
  }

  *(a18 + v301) = (HIBYTE(v270) - ((v270 >> 23) & 0x82) + 65) ^ 0x4F ^ v272[HIBYTE(v270) ^ 0xD8];
  return (*(a16 + 8 * ((5115 * v274) ^ HIDWORD(a15))))(v259, 36, v275, a24, 130, v262, 150, a18, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299);
}

void sub_1969C426C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  *&STACK[0x3B0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(a3);
  *&STACK[0x400] = vdupq_n_s64(0xE788DD3012A091E0);
  *&STACK[0x2C0] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(v6);
  *&STACK[0x2A0] = vdupq_n_s64(0xBD8F7CFD1E07971BLL);
  *&STACK[0x2B0] = vdupq_n_s64(a2);
  *&STACK[0x3F0] = vdupq_n_s64(0x7960F2B616996E9FuLL);
  *&STACK[0x280] = vdupq_n_s64(0x84EBA188CFF32DABLL);
  *&STACK[0x290] = vdupq_n_s64(v4);
  *&STACK[0x340] = vdupq_n_s64(v3);
  *&STACK[0x390] = vdupq_n_s64(0xA77DA4D51E01EB11);
  *&STACK[0x3A0] = vdupq_n_s64(0xADBA7ED07AC0689ALL);
  *&STACK[0x270] = vdupq_n_s64(v5);
  *&STACK[0x370] = vdupq_n_s64(0x4C09AA6D8FB5B1F5uLL);
  *&STACK[0x380] = vdupq_n_s64(0x67ECAB24E0949C16uLL);
  *&STACK[0x360] = vdupq_n_s64(0x3DBB3B5844776955uLL);
  *&STACK[0x250] = vdupq_n_s64(0x87C0804202802uLL);
  *&STACK[0x260] = vdupq_n_s64(0x7068FDEC8CEB6B27uLL);
  *&STACK[0x230] = vdupq_n_s64(0x8F970213731494D8);
  *&STACK[0x200] = vdupq_n_s64(0x56B23F6A8BCD7E7AuLL);
  *&STACK[0x210] = vdupq_n_s64(0x701021320009051uLL);
  *&STACK[0x350] = xmmword_196EBFA60;
  JUMPOUT(0x1969C445CLL);
}

uint64_t sub_1969C5008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, int a33)
{
  v38 = (a26 + 24 * v35);
  *v38 = v36;
  v38[1] = a6;
  *(&a33 + 3 * v35 + 2) = a19;
  v38[4] = a30;
  a33 = v34 + 1;
  return (*(v37 + 8 * ((3721 * (((a9 + 847) ^ 0x670 ^ (a2 + 95)) + v33 < 0x80000003)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1969C507C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x708] == 0) * ((v2 - 3063) ^ 0xE27)) ^ v2)))();
}

uint64_t sub_1969C5128()
{
  v3 = (*(v2 + 8 * ((v1 ^ 0x124) + 3380)))(64, v0);
  STACK[0x6B0] = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ ((v1 ^ 0x24) - 60)) & 1) * (((v1 ^ 0x124) - 2425) ^ 0x3C0)) | v1 ^ 0x124)))();
}

uint64_t sub_1969C5240@<X0>(uint64_t a1@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ v6 ^ v2) + v1;
  v11 = *(v8 + v10 - 15);
  v12 = *(v8 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v7 + 8 * ((((v5 == v9) << 6) | ((v5 == v9) << 7)) ^ v3)))();
}

uint64_t sub_1969C5320()
{
  v5 = v0 - 6683 + (v1 + 5056);
  *(v4 - 184 + v5) = *(v3 + v5);
  return (*(v2 + 8 * (((2 * (v5 == 0)) | (4 * (v5 == 0))) ^ v1)))();
}

uint64_t sub_1969C53C0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (a8 + v9);
  v11[-1] = a2;
  *v11 = a2;
  return (*(v10 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (((v8 - 1823443176) & 0x6CAF9CF8) - 6242)) ^ v8)))();
}

uint64_t sub_1969C54FC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  a4 = v9 + 2708 - 1575331711 * ((2 * (&a4 & 0x6C9BF728) - &a4 - 1822160685) ^ 0xFF3F9DD1) - 3381;
  a6 = a3;
  a7 = a1;
  v10 = (*(v8 + 8 * (v9 + 3916)))(&a4);
  return (*(v8 + 8 * (((a5 == v7) * (v9 - 4806 + ((v9 - 1085) | 0x48))) | (v9 + 2708))))(v10);
}

uint64_t sub_1969C559C()
{
  v8 = -v4;
  v10.val[0].i64[0] = (v3 + v8 - 1) & 0xF;
  v10.val[0].i64[1] = (v3 + v8 + 14) & 0xF;
  v10.val[1].i64[0] = (v3 + v8 + 13) & 0xF;
  v10.val[1].i64[1] = (v3 + v8 + 12) & 0xF;
  v10.val[2].i64[0] = (v3 + v8 + 11) & 0xF;
  v10.val[2].i64[1] = (v3 + v8 + 10) & 0xF;
  v10.val[3].i64[0] = (v3 + v8 + ((v5 + 34) ^ 0xE)) & 0xF;
  v10.val[3].i64[1] = (v3 + v8) & 0xF ^ 8;
  *(v3 + v7 - 8 + v8) = veor_s8(veor_s8(veor_s8(*(v1 + v10.val[0].i64[0] - 7), *(v3 + v7 - 8 + v8)), veor_s8(*(v10.val[0].i64[0] + v2 - 4), *(v10.val[0].i64[0] + v0 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_196EBFAE0), 0x5757575757575757)));
  return (*(v6 + 8 * ((1013 * (8 - (v3 & 0x18) == v8)) ^ (v5 + 3973))))(xmmword_196EBFAE0);
}

uint64_t sub_1969C574C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  STACK[0x340] = *(v26 + 24);
  STACK[0x350] = a1;
  v28 = v27 ^ 0x79FBF1FFFB3FFDDBLL;
  v30 = ((229 * (v24 ^ 0x7C1) - 1548) | 0x800u) ^ 0x86040E0004C01A74;
  STACK[0x330] = ((2 * v27) & 0x1F67FFBB6) + v28 + v30;
  return (*(a6 + 8 * (v24 ^ (52 * (((v25 + 905764049) ^ 0x35FCDCD1u) < 8)))))(v28, 0x315FDBFEB957105ELL, 0x62B6E3931000AC23, 0xBA67005A46483493, 0x691E87DAB62077CDLL, 0x787E07DA35E0BFF0, 0x2C1D3908CEDB5B5DLL, 0xFFAB05F3AEBE5606, a9, a10, a11, a12, a13, a14, a15, a16, v30, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1969C5950()
{
  LODWORD(STACK[0x4FC]) = 128;
  v3 = (*(v0 + 8 * (v1 + 96)))(128, v2);
  v4 = STACK[0x370];
  STACK[0x5F8] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v1 - 5961) ^ 0x289)) ^ v1)))();
}

uint64_t sub_1969C5E14()
{
  v5 = STACK[0x5D8];
  v6 = STACK[0x85C];
  v7 = STACK[0x448];
  v8 = STACK[0x568];
  STACK[0x840] = *(v3 + 8 * (v4 - 3260));
  STACK[0x730] = v5;
  LODWORD(STACK[0xB38]) = v1;
  LOWORD(STACK[0xB3E]) = v0;
  LODWORD(STACK[0xB40]) = v2;
  LODWORD(STACK[0xB44]) = v6;
  STACK[0xB48] = v7;
  STACK[0xB50] = v8;
  return (*(v3 + 8 * (((((((v4 + 2) | 0xC0) - 41) ^ (v5 == 0)) & 1) * ((((v4 + 514) | 0x2C0) + 1751985086) & 0x9792CF7F ^ 0xE3B)) ^ ((v4 + 514) | 0x2C0))))();
}

uint64_t sub_1969C5E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v38 = *(&a23 + (v35 >> (v36 - 35)) + 18);
  v39 = ((2 * v35) & 0xBF6DFE78) + (v35 ^ 0x5FB6FF3C) - 1605828412;
  *(a11 + v39) = (HIBYTE(v38) ^ 0x7C) - ((2 * (HIBYTE(v38) ^ 0x7C)) & 0xD8) - 20;
  *(a11 + v39 + 1) = (BYTE2(v38) ^ 0x47) - ((2 * (BYTE2(v38) ^ 0x47)) & 0xD8) - 20;
  *(a11 + v39 + 2) = (BYTE1(v38) ^ 7) - ((2 * (BYTE1(v38) ^ 7)) & 0xD8) - 20;
  *(a11 + v39 + 3) = v38 ^ 0x87;
  return (*(v37 + 8 * ((7487 * (v35 + 4 < a35)) ^ v36)))();
}

uint64_t sub_1969C6004()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (87 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 1);
  return (*(v5 + 8 * ((85 * (v7 != 0)) ^ (v4 + 3520))))();
}

uint64_t sub_1969C6060@<X0>(uint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unsigned __int8 a5@<W6>, int a6@<W7>, uint64_t a7@<X8>, int8x16_t a8@<Q0>, int8x8_t a9@<D1>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = a3 - 8;
  v24.val[0].i64[0] = (v21 + v22 - 1) & 0xF;
  v24.val[0].i64[1] = (v21 + v22 + 14) & 0xF;
  v24.val[1].i64[0] = (v21 + v22 + 13) & 0xF;
  v24.val[1].i64[1] = (v21 + v22 + 12) & 0xF;
  v24.val[2].i64[0] = (v21 + v22 + 11) & 0xF;
  v24.val[2].i64[1] = (v21 + v22 + (a5 ^ 0xAA)) & 0xF;
  v24.val[3].i64[0] = (v21 + v22 + 9) & 0xF;
  v24.val[3].i64[1] = (v21 + v22) & 0xF ^ 8;
  *(a1 - 8 + v21) = veor_s8(veor_s8(veor_s8(*(v20 + v24.val[0].i64[0] - 7), *(a4 - 8 + v21)), veor_s8(*(v24.val[0].i64[0] + v18 - 2), *(v19 + v24.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v24, a8), a9)));
  return (*(a18 + 8 * (((a7 == v22) * a6) ^ a2)))();
}

uint64_t sub_1969C6114@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 4700));

  return v3(v1);
}

uint64_t sub_1969C6148(int8x16_t a1, double a2, __n128 a3)
{
  v3 = vextq_s8(a1, a1, 8uLL);
  v4 = vorr_s8(*a1.i8, v3.n128_u64[0]);
  v5 = *&v4 | HIDWORD(*&v4) | ((*&v4 | HIDWORD(*&v4)) >> 16);
  v3.n128_u64[0] = 0xD800D800D800D8;
  a3.n128_u32[0] = 15466732;
  a3.n128_u16[2] = 236;
  a3.n128_u16[3] = 236;
  return sub_1969C6194(COERCE_FLOAT((v5 | (v5 >> 8))), v3, a3);
}

uint64_t sub_1969C6194@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, int8x8_t a3@<D1>, int16x4_t a4@<D2>, uint8x8_t a5@<D3>, uint8x8_t a6@<D4>)
{
  a5.i32[0] = *(a1 + v7);
  a6.i32[0] = *(v10 + v7);
  v12 = vmovl_u8(a6).u64[0];
  a2.n128_u64[0] = vorr_s8(veor_s8(vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a3)), a4), *&vmovl_u8(a5)), a2.n128_u64[0]);
  return (*(v11 + 8 * (((v7 + v8 != 1930) * v9) ^ v6)))(a2);
}

uint64_t sub_1969C61E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v2 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ (11 * (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 4);
  return (*(v6 + 8 * ((3486 * (v8 == ((1308 * (a1 ^ 0x1E1u)) ^ 0x1470))) ^ (a1 - 16))))();
}

uint64_t sub_1969C631C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, unsigned int *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a22 = 1;
  v31 = *a23;
  v32 = 1283153057 * ((v30 - 144 + v29 - 2 * ((v30 - 144) & v29)) ^ 0xB7CCCBF90EE96F70);
  *(v30 - 120) = v32;
  *(v30 - 136) = v32 ^ 0x13FF;
  *(v30 - 128) = v31 - v32;
  *(v30 - 144) = ((a2 + 1800447908) ^ 7) + v32;
  *(v30 - 140) = (a2 + 1800447908) ^ v32;
  *(v30 - 112) = a2 + 1800447908 - v32 + 10;
  *(v30 - 108) = (a2 + 670121503) ^ v32;
  v33 = (*(a1 + 8 * (a2 ^ 0xD307759B)))(v30 - 144);
  return (*(a29 + 8 * *(v30 - 116)))(v33);
}

uint64_t sub_1969C63E8@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t (*a35)(void), uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, _BYTE *a45, void *a46)
{
  v51 = *(a46[291] + (*a45 ^ a1));
  *a45 = v51 - ((2 * v51) & 0xD8) - 20;
  v52 = *(a46[299] + (*(a2 - 12) ^ a1));
  *(a2 - 12) = v52 - ((2 * v52) & 0xD8) - 20;
  v53 = *(a46[307] + (v48 ^ a1));
  *(a2 - 8) = v53 - ((2 * v53) & 0xD8) - 20;
  v54 = *(a46[315] + (v49 ^ a1));
  *(a2 - 4) = v54 - ((2 * v54) & 0xD8) - 20;
  v55 = *(a46[317] + (v50 ^ a1));
  *(a2 - 3) = v55 - ((2 * v55) & 0xD8) - 20;
  v56 = *(a46[309] + (*(a2 - 11) ^ a1));
  *(a2 - 7) = v56 - ((2 * v56) & 0xD8) - 20;
  v57 = *(a46[301] + (*(a2 - 15) ^ a1));
  *(a2 - 11) = v57 - ((2 * v57) & 0xD8) - 20;
  v58 = *(a46[293] + HIBYTE(v46));
  *(a2 - 15) = v58 - ((2 * v58) & 0xD8) - 20;
  v59 = *(a2 - 14);
  v60 = *(a46[295] + (v47 ^ a1));
  *(a2 - 14) = v60 - ((2 * v60) & 0xD8) - 20;
  LOBYTE(v59) = *(a46[311] + (v59 ^ a1));
  *(a2 - 6) = v59 - ((2 * v59) & 0xD8) - 20;
  v61 = *(a2 - 10);
  v62 = *(a46[303] + (*(a2 - 2) ^ a1));
  *(a2 - 10) = v62 - ((2 * v62) & 0xD8) - 20;
  LOBYTE(v61) = *(a46[319] + (v61 ^ a1));
  *(a2 - 2) = v61 + (~(2 * v61) | 0x27) - 19;
  v63 = *(a2 - 13);
  v64 = *(a46[297] + (*(a2 - 9) ^ a1));
  *(a2 - 13) = v64 - ((2 * v64) & 0xD8) - 20;
  v65 = *(a46[305] + (*(a2 - 5) ^ a1));
  *(a2 - 9) = v65 - ((2 * v65) & 0xD8) - 20;
  v66 = *(a46[313] + (*(a2 - 1) ^ a1));
  *(a2 - 5) = v66 - ((2 * v66) & 0xD8) - 20;
  LOBYTE(v63) = *(a46[321] + (v63 ^ a1));
  *(a2 - 1) = v63 + (~(2 * v63) | 0x27) - 19;
  return a35();
}

uint64_t sub_1969C65FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v21 - 136) = a16;
  *(v21 - 128) = v17;
  *(v21 - 120) = v19 + ((v18 - 1988187018 - 2 * (v18 & 0x897EAC76)) ^ 0xEC64573D) * v20 + 789;
  v22 = (*(v16 + 8 * (v19 ^ 0x1F53)))(v21 - 136);
  return (*(v16 + 8 * ((((*(v21 - 116) - 1478011821) < 0xD84D4FF4) * ((v19 + 590457253) & 0xDCCE5FFF ^ 0xF7E)) ^ v19)))(v22);
}

uint64_t sub_1969C6770()
{
  STACK[0x398] = 0;
  *STACK[0x3A8] = STACK[0x398];
  return (STACK[0x608])();
}

uint64_t sub_1969C68B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12.val[0].i64[0] = (v7 - v8 - 1) & 0xF;
  v12.val[0].i64[1] = (v7 - v8 + 14) & 0xF;
  v12.val[1].i64[0] = (v7 - v8 + 13) & 0xF;
  v12.val[1].i64[1] = (v7 - v8 + 12) & 0xF;
  v12.val[2].i64[0] = (v7 - v8 + 11) & 0xF;
  v12.val[2].i64[1] = (v7 - v8 + ((a4 - 121) ^ 2)) & 0xF;
  v12.val[3].i64[0] = (v7 - v8 + 9) & 0xF;
  v12.val[3].i64[1] = (v7 - v8) & 0xF ^ 8;
  *(v7 + v9 - 8 - v8) = veor_s8(veor_s8(veor_s8(*(v6 + v12.val[0].i64[0] - 7), *(v7 + v9 - 8 - v8)), veor_s8(*(v12.val[0].i64[0] + v4 - 1), *(v12.val[0].i64[0] + v5 - 2))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_196EBFAE0), 0xC1C1C1C1C1C1C1C1)));
  return (*(v10 + 8 * ((4123 * (8 - (v7 & 0x18) == -v8)) ^ (a4 - 3127))))(v7 & 7, xmmword_196EBFAE0);
}

uint64_t sub_1969C69B0()
{
  v4 = v3 + 1040433609 + ((v0 - 1831706824) & 0x6D2D995F);
  v6 = v4 > 0x905C880B && -1872983988 - v1 > v4;
  return (*(v2 + 8 * ((8128 * v6) ^ v0)))();
}

uint64_t sub_1969C6AEC(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v13 = v8 + 1;
  v14 = v7 + v10;
  *(v6 + ((v13 >> (((v9 - 36) | v11) + 93)) << 7) + 32 * ((v13 >> 2) & 3) + 8 * (v13 & 3) + 24) = *(a1 + 16) + ((a4 + (((v14 - (((v14 * v12) >> 16) >> 7) * a2) - (a3 & (2 * (v14 - ((v14 * v12) >> 23) * a2)))) << 8)) ^ a4);
  return (*(v5 + 8 * (((v13 == 143) * a5) ^ v9)))();
}

uint64_t sub_1969C6BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  HIDWORD(a27) = v27;
  v29.n128_u64[0] = 0xECECECECECECECECLL;
  v29.n128_u64[1] = 0xECECECECECECECECLL;
  return (*(v28 + 8 * (a10 ^ (61 * (a11 == 0)))))(a1, a2, a3, a4, a5, a6, a7, 4170059478, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1969C6CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = v19 + ((((2 * (v20 - 136)) | 0x40142CBC) - (v20 - 136) + 1609951650) ^ 0xC510ED15) * v17 - 530;
  *(v20 - 128) = &a17;
  *(v20 - 136) = a16;
  v21 = (*(v18 + 8 * (v19 ^ 0x1078)))(v20 - 136);
  return (*(v18 + 8 * ((6613 * (*(v20 - 116) > ((v19 + 1661) ^ 0x5818BACAu))) ^ v19)))(v21);
}

void sub_1969C6DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = (((*(a31 + 88) ^ 0x7F1572D9) - 2132112089) ^ ((*(a31 + 88) ^ 0x2C83DC44) - 746839108) ^ ((*(a31 + 88) ^ 0x2FD1A9F6) - 802269686)) + (((v31 ^ 0x73EFB058) - 1945088088) ^ ((v31 ^ 0x3B6DDFDF) - 997056479) ^ ((v31 ^ 0x34C568DB ^ (v32 - 1466241271) & 0x57650BF7) - 885352684)) + 1532149632;
  v34 = (v33 ^ 0x5DB32E06) & (2 * (v33 & 0x9D3B4F56)) ^ v33 & 0x9D3B4F56;
  v35 = ((2 * (v33 ^ 0x45E1200A)) ^ 0xB1B4DEB8) & (v33 ^ 0x45E1200A) ^ (2 * (v33 ^ 0x45E1200A)) & 0xD8DA6F5C;
  v36 = v35 ^ 0x484A2144;
  v37 = (v35 ^ 0x90904E18) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x6369BD70) & v36 ^ (4 * v36) & 0xD8DA6F5C;
  v39 = (v38 ^ 0x40482D40) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x9892420C)) ^ 0x8DA6F5C0) & (v38 ^ 0x9892420C) ^ (16 * (v38 ^ 0x9892420C)) & 0xD8DA6F50;
  v41 = v39 ^ 0xD8DA6F5C ^ (v40 ^ 0x88826500) & (v39 << 8);
  *(a31 + 88) = v33 ^ (2 * ((v41 << 16) & 0x58DA0000 ^ v41 ^ ((v41 << 16) ^ 0x6F5C0000) & (((v40 ^ 0x50580A1C) << 8) & 0x58DA0000 ^ 0x900000 ^ (((v40 ^ 0x50580A1C) << 8) ^ 0x5A6F0000) & (v40 ^ 0x50580A1C)))) ^ 0xC0789685;
  JUMPOUT(0x1969C6FC8);
}

uint64_t sub_1969C7738@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - ((((((a1 - 2) ^ 0x4E) + 6) ^ (a1 - 2) ^ (((a1 - 2) ^ 3) + 9) ^ (((a1 - 2) ^ 0xE) + 6)) ^ (((a1 - 2) ^ v1 ^ 0xF5 ^ (v1 - 110)) + 13)) & 0xF ^ 4u);
  LODWORD(STACK[0x90C]) = v3;
  LODWORD(v3) = (a1 ^ 0x6FBFB7C5FF6BF37FLL) + ((2 * a1) & 0x1FED7E6FELL) + ((2 * v3) & 0x1C) + (v3 ^ 0x7DAB756BBBEBB7EEuLL) + 0x1294D2CE44A85493 < 0xFFFFFFF6;
  return (*(v2 + 8 * ((v3 | (v3 << 9)) ^ v1)))();
}

void sub_1969C7868()
{
  *(v4 - 136) = v1 + 1575331711 * ((((v4 - 144) | 0xCA5595DD) - (v4 - 144) + ((v4 - 144) & 0x35AA6A20)) ^ 0xA60E00DF) + 1779;
  *(v4 - 128) = v2;
  *(v4 - 144) = v3;
  (*(v0 + 8 * (v1 ^ 0xBED)))(v4 - 144);
  JUMPOUT(0x196961C54);
}

void sub_1969C79E8(uint64_t a1@<X8>)
{
  v3 = v1 - 2294;
  (*(v2 + 8 * (v1 ^ 0x1447)))(a1);
  *(STACK[0x680] + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x1F51)))();
  STACK[0x680] = 0;
  JUMPOUT(0x1969C7A2CLL);
}

uint64_t sub_1969C7A84()
{
  v4 = *(v1 + 6);
  *(v3 - 160) = v1;
  *(v3 - 168) = v0 + 1621291457 * ((v3 - 168 - 2 * ((v3 - 168) & 0x9BAF2F13) - 1683017965) ^ 0xADB8AE8A) + 1198989114;
  *(v3 - 148) = v0 - 63 * ((v3 + 88 - 2 * ((v3 + 88) & 0x13) + 19) ^ 0x8A) + v4 - ((v4 << (v0 ^ 0xD5)) & 0x44) + 78;
  v5 = (*(v2 + 8 * (v0 + 5976)))(v3 - 168);
  return (*(v2 + 8 * (v0 ^ (8 * (*(v3 - 152) == 1559241979)))))(v5);
}

uint64_t sub_1969C7BCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 + 24);
  LODWORD(STACK[0x200]) = a3;
  v10 = *(a2 + 8 * (v7 ^ (176 * ((v8 ^ v6) < 8))));
  STACK[0x410] = v9;
  return v10(0xEFCE3EFFD692BD57, a6, 0x7B0E7BDAC39050F6, -3948);
}

void fp_dh_661781811a91bdc64ed60e1ba0aee6a8(uint64_t a1)
{
  v1 = 1621291457 * ((-142707482 - (a1 | 0xF77E74E6) + (a1 | 0x8818B19)) ^ 0x3E960A80);
  v2 = **(a1 + 48) - 1921604097;
  v3 = *(a1 + 28) - v1 - 1654780984;
  v4 = v2 < 0xDB331569;
  v5 = v2 > v3;
  if (v3 < 0xDB331569 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t fp_dh_7c5613ed5be6d6f653a069938b8d9304(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1 ^ (1621291457 * ((2 * (a1 & 0x913CD285) - a1 + 1858284922) ^ 0x58D4ACE3));
  v3 = *(a1 + 8);
  v4 = *(a1 + 24) - 1621291457 * ((2 * (a1 & 0x5915BA82913CD285) - a1 - 0x5915BA82913CD286) ^ 0xDB9C1F9058D4ACE3);
  HIDWORD(v8) = v2 - 489239129 * ((((&v8 | 0x862C4BC4) ^ 0xFFFFFFFE) - (~&v8 | 0x79D3B43B)) ^ 0xC0FB970D) + 1894503450;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x61FA5060)) - 4;
  (*&v5[8 * (v2 ^ 0x61FA48C7)])(&v8);
  v6 = 998242381 * (&v8 ^ 0xFB44BA56AA6F98D6);
  v9 = v6 - 818829135;
  v11 = v3;
  v8 = (((v4 ^ 0xCEA35ACD8A6C54C4) + 0x315CA5327593AB3CLL) ^ ((v4 ^ 0xF145EA814BD6B763) + 0xEBA157EB429489DLL) ^ ((v4 ^ 0xFBA26C4A98A71A30) + 0x45D93B56758E5D0)) - v6 + 0x28466BC8E205B0A9;
  v12 = v2 - v6 - 1643791423;
  result = (*&v5[8 * (v2 ^ 0x61FA492D)])(&v8);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_1969C82F4@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  STACK[0x6D8] = a2;
  v3 = (*(a1 + 8 * (v2 + 4006)))(32, 0x103004054B5FA7DLL);
  v4 = STACK[0x370];
  STACK[0x388] = v3;
  return (*(v4 + 8 * (((v3 == 0) * (((v2 - 1110084488) & 0x422A96FD ^ 0xFFFFE00A) + ((v2 + 712372408) & 0xD58A0FEB))) ^ v2)))();
}

uint64_t sub_1969C8388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = (a8 + 98716048) & 0xFA1DA9BB;
  v9 = a8 - 2104;
  v10 = (*(a6 + 8 * (a8 ^ 0xC1C)))(STACK[0x5A8]);
  return (*(STACK[0x370] + 8 * (((STACK[0x508] != 0) * (v8 ^ 0x9B6)) ^ v9)))(v10);
}

uint64_t sub_1969C8440()
{
  v0 = STACK[0x3B0];
  if (LODWORD(STACK[0x3B0]) == 36731)
  {
    return (*(STACK[0x248] + 8 * ((STACK[0x228] + 37) | (16 * (LODWORD(STACK[0x350]) != LODWORD(STACK[0x3D0]))))))();
  }

  if (v0 == 18647)
  {
    return (*(STACK[0x248] + 8 * ((56 * (LODWORD(STACK[0xB58]) - ((2 * LODWORD(STACK[0xB58])) & 0xB3868DE6) - 641513741 == (((STACK[0x228] + 487) | 0x4C) ^ 0xD9C356BC))) ^ (STACK[0x228] + 1651))))();
  }

  v2 = STACK[0x248];
  if (v0 == 40073)
  {
    return (*(v2 + 8 * ((7415 * (LODWORD(STACK[0xB40]) == ((STACK[0x228] + 1566456131) & 0xA2A1B8FD) - 1720256394)) ^ (STACK[0x228] - 446))))();
  }

  else
  {
    return (*(v2 + 8 * ((115 * (STACK[0x228] == -38411)) ^ (STACK[0x228] + 1313))))();
  }
}

uint64_t sub_1969C8584()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x718];
    v5 = *(STACK[0x718] + 8);
    v6 = STACK[0x620];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((((13 * (v2 ^ 0xF97) - 1885928548) & 0x7068FCFF) - 3252) * (v5 == 0)) ^ (v2 + 1500))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * ((59 * ((((STACK[0x228] - 446) ^ (*(STACK[0x730] + 8) == 0)) & 1) == 0)) ^ (STACK[0x228] + 3056))))();
  }

  else
  {
    return (*(v1 + 8 * ((115 * (v0 == v2 + 1906278104)) ^ (v2 + 1313))))();
  }
}

uint64_t sub_1969C8658@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x105B)))(a1);
  *(STACK[0x718] + 24) = 0;
  return sub_1969C8690();
}

void sub_1969C8690()
{
  (*(v1 + 8 * (v0 + 5588)))();
  STACK[0x718] = 0;
  JUMPOUT(0x1969C86B8);
}

void sub_1969C871C(int a1@<W8>)
{
  v3 = (a1 - 2516) | 0x334;
  (*(v1 + 8 * (a1 + 4205)))();
  *(v2 + 24) = 0;
  (*(v1 + 8 * (v3 ^ 0x1975)))(v2);
  JUMPOUT(0x196A028BCLL);
}

uint64_t sub_1969C874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19, int *a20)
{
  a18 = v20 - 1575331711 * (&a18 ^ 0x6C5B9502) - 1444;
  a19 = a12;
  a20 = &a14;
  v22 = (*(v21 + 8 * (v20 ^ 0x14CB)))(&a18);
  return (*(v21 + 8 * (((a14 != (v20 ^ 0xE65)) * ((10 * (v20 ^ 0xE3A)) ^ 0x366)) ^ v20)))(v22);
}

uint64_t sub_1969C8800@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v9 = (a1 + v4);
  *v9 = a2;
  v9[1] = a2;
  return (*(v8 + 8 * (((v4 + v6 + v3 != v2) * v7) ^ v5)))();
}

void fp_dh_d11b895f25f96e501fce670138c7d404(uint64_t a1)
{
  v1 = 998242381 * ((-2 - ((a1 | 0xE4F2F817) + (~a1 | 0x1B0D07E8))) ^ 0xB1629F3E);
  v2 = *(a1 + 36) ^ v1;
  if (*(a1 + 8) | *(a1 + 40))
  {
    v3 = *(a1 + 64) - v1 == 855519512;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969C89F0(uint64_t a1)
{
  *a1 = 237100009;
  *(a1 + 4) = 0;
  *(a1 + 80) = 17152;
  memset((a1 + 8), 236, 48);
  *(a1 + 72) = 0;
  v2 = STACK[0x860];
  *(v2 + 84) = 7;
  *(v2 + 104) = 0;
  *(v2 + 88) = 0xECECECECECECECECLL;
  *(v2 + 96) = 0xECECECECECECECECLL;
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x458])();
}

void fp_dh_09f5a3b31c5e4eff27a62035af1d3928(_DWORD *a1)
{
  v1 = *a1 ^ (1012216201 * ((1568915438 - (a1 | 0x5D83BFEE) + (a1 | 0xA27C4011)) ^ 0x26D5C8FD));
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1969C8CA4@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x8C8] = v3;
  STACK[0x8D0] = v2;
  return (*(a1 + 8 * (((((a2 ^ 0x15DC) - 5433) ^ 0x731) * (v4 > 9)) ^ a2)))();
}

uint64_t sub_1969C8CEC@<X0>(int a1@<W8>)
{
  v4 = v1 ^ 0x1486;
  v5 = v2 + a1;
  if (v5 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -v5;
  }

  return (*(v3 + 8 * ((((v4 - 912469453) & 0x36633946 ^ 0x105D) * (v6 > 130)) ^ v4)))();
}

uint64_t sub_1969C8D60()
{
  v4 = STACK[0x670];
  v5 = STACK[0x660];
  v6 = STACK[0x680];
  v7 = 1068996913 * ((v1 + STACK[0x238] - 2 * (v1 & STACK[0x238])) ^ 0x94D42C92);
  *(v3 - 192) = v7 + v0 + 929;
  *(v3 - 184) = v4;
  *(v3 - 176) = v7 + 1372445196;
  *(v3 - 208) = 0;
  *(v3 - 200) = &STACK[0x404];
  *(v3 - 160) = 0;
  *(v3 - 152) = v5;
  *(v3 - 168) = v6;
  v8 = (*(v2 + 8 * (v0 ^ 0x1719)))(v3 - 208);
  v9 = STACK[0x370];
  v10 = *(v3 - 144);
  LODWORD(STACK[0x68C]) = v10;
  return (*(v2 + 8 * (((v10 == ((v0 - 3528) | 0x17D1) + 1906275577) * (((v0 + 2384) | 0xB9) ^ 0xC48)) ^ v0)))(v8, 1906281716, 48, 1906239693, 4356, v9, 95, 6138);
}

uint64_t sub_1969C8E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(a1 + a3);
  v12 = (a2 + a3);
  *(v12 - 1) = *(a1 + a3 - 16);
  *v12 = v11;
  return (*(v10 + 8 * (((v9 == a3) * a8) ^ v8)))();
}

uint64_t sub_1969C8E98@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  STACK[0x650] = 0;
  STACK[0x690] = 0;
  return (*(STACK[0x248] + 8 * (((((v1 - 587887514) & 0x230A6FFF) + ((v1 + 1192693193) & 0xB8E8E1FE) - 3985) * (v2 == 0)) | v1)))();
}

uint64_t sub_1969C8F48@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = (v2 + 1514166150) & 0xA5BF937E;
  *v7 = a1;
  *v8 = a2;
  v5 = (v4 + 2322) | 0x264;
  v11 = v4 - 1790939281 * ((-294517153 - (&v11 | 0xEE72065F) + (&v11 | 0x118DF9A0)) ^ 0xE951D9E1) + 5207;
  v12 = v9;
  (*(v3 + 8 * (v4 + 5933)))(&v11);
  v11 = v5 - 1790939281 * ((((2 * &v11) | 0x9B6D401A) - &v11 - 1303814157) ^ 0xB56A804C) + 2273;
  v12 = v10;
  (*(v3 + 8 * (v5 + 2999)))(&v11);
  return 0;
}

uint64_t sub_1969C8F60(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v13 = a2 < 0x10 || 1 - v8 + v2 - v5 + v9 < (((v6 + 692) | 0x800u) ^ 0xED0uLL) || (1 - v8 + v3 - v5 + v9) < 0x10 || (-v8 - v5 + v4 + v9 + 5) < 0x10;
  return (*(v7 + 8 * (v13 | (32 * v13) | v6)))((v6 - 551));
}

void sub_1969C8FDC()
{
  v1 = STACK[0x8D0];
  v2 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v2 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v2) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  STACK[0x240] = ((STACK[0x8C0] + ((((v0 + 323) | 0x1000u) + 987) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + ((((v0 + 323) | 0x1000u) + 987) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  STACK[0x270] = v1 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  STACK[0x300] = STACK[0x4A8];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  JUMPOUT(0x1969D15C0);
}

uint64_t sub_1969C902C@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x470] = v3;
  return (*(v2 + 8 * (((((a1 + 1056243664) ^ 0xC10AEF68) + ((a1 + 1056243664) & 0xC10AEF7D)) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_1969C9088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = 1012216201 * ((&a17 & 0x61D129F9 | ~(&a17 | 0x61D129F9)) ^ 0x1A875EEA);
  a22 = v25 + 322 * v24 - 1795305514;
  a19 = v25 - 75192010;
  a17 = v25 ^ 0x80F33AA;
  a20 = a15;
  a21 = &a13;
  v26 = (*(v22 + 8 * (322 * v24 + 4537)))(&a17);
  return (*(v22 + 8 * ((635 * (a18 == v23 + ((322 * v24 - 1741) ^ 0x7FB) + ((322 * v24 - 1741) | 0x32) - 2093)) ^ (322 * v24))))(v26);
}

void sub_1969C91B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  *&STACK[0x2E0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x350] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2C0] = vdupq_n_s64(v8);
  *&STACK[0x2D0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(v10);
  *&STACK[0x2B0] = vdupq_n_s64(v9);
  *&STACK[0x280] = vdupq_n_s64(v6);
  *&STACK[0x290] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(a1);
  *&STACK[0x270] = vdupq_n_s64(v7);
  *&STACK[0x240] = vdupq_n_s64(a3);
  *&STACK[0x250] = vdupq_n_s64(a2);
  *&STACK[0x340] = vdupq_n_s64(a5);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a4);
  *&STACK[0x200] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(v11);
  *&STACK[0x300] = xmmword_196EBFA60;
  JUMPOUT(0x1969C92E0);
}

uint64_t sub_1969C9CD4@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 + (v5 ^ (a2 + 502)) - 1118;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((927 * (v7 == 0)) ^ (v3 + v5 + 2063))))();
}

uint64_t sub_1969C9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v9 + 40 * v8 + 28);
  switch(v10)
  {
    case 1:
      v12 = STACK[0x728];
      STACK[0x4E8] = *(a6 + 8 * (a8 - 5609));
      return (*(a6 + 8 * (((v12 == 0) * ((a8 - 5449) ^ a8 ^ 0x175B)) ^ (a8 - 2927))))();
    case 3:
      return (*(a6 + 8 * ((((((a8 + 730160538) & 0xD47A8C6F) + 989) ^ (a8 - 2662)) * (*(v9 + 40 * v8 + 16) == 0)) ^ (a8 + 408))))();
    case 2:
      return (*(a6 + 8 * ((501 * (((STACK[0x728] == 0) ^ (a8 - 72)) & 1)) ^ (a8 + 665))))();
    default:
      return (STACK[0x5C0])();
  }
}

uint64_t sub_1969C9E40()
{
  v8 = (v6 + v3 + v0);
  *&v9 = 0xECECECECECECECECLL;
  *(&v9 + 1) = 0xECECECECECECECECLL;
  *v8 = v9;
  v8[1] = v9;
  return (*(v7 + 8 * ((((v2 ^ v5) + v3 != v1) | (4 * ((v2 ^ v5) + v3 != v1))) ^ v4)))();
}

uint64_t sub_1969C9E8C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = *(v6 + v5) ^ 0xEC;
  v9 = v2 + v5 + 1 < v3 && v1 + v5 - 2246 < 0xA2818BCE;
  return (*(v7 + 8 * ((v9 * v4) ^ v1)))();
}

uint64_t sub_1969CA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v7 + 4397)))(LODWORD(STACK[0x4B8]) ^ 0x9976FCFF ^ (5 * (v7 ^ 0xD19)) ^ 0x1279, 0x100004077774924);
  v9 = STACK[0x370];
  STACK[0x928] = v8;
  if (v8)
  {
    v10 = 1906281716;
  }

  else
  {
    v10 = v6;
  }

  LODWORD(STACK[0x934]) = v10;
  return (*(v9 + 8 * ((243 * (v8 == 0)) ^ v7)))();
}

void fp_dh_acfd31f3fcb974c13710155663af8888(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) ^ (1825732043 * ((-2 - ((~a1 | 0x1E7DE8E8) + (a1 | 0xE1821717))) ^ 0x1EEBBBDF));
  v2 = 753662761 * (((v5 | 0x2DFE184D) - (v5 & 0x2DFE184D)) ^ 0x48E4E306);
  v5[0] = v2 + 1560;
  v7 = &v4;
  v6 = v2 ^ (v1 - 1738);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0xAD8)) - 4;
  (*&v3[8 * v1 + 37768])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CA470(uint64_t a1)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 6) ^ (-63 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 5);
  return (*(v6 + 8 * ((6693 * (v7 == 0)) ^ (v4 - 1658))))();
}

uint64_t sub_1969CA518()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 163) | 0xC08) - 3263) ^ 0x166)) ^ (v0 + 989))))();
}

uint64_t sub_1969CA53C(int a1, int a2)
{
  v6 = a2 ^ a1 ^ (v2 + 1336189634) & 0xB05B5EFC;
  v7 = *(v5 + 8 * ((63 * (v6 < ((v2 + 1296109845) & 0xB2BEFAEF) - 6234)) ^ v2));
  v8 = STACK[0x410];
  STACK[0x400] = *(v3 + 24);
  return v7(v8, 0x35A9624B46756074, 0xAAF773659F930324, 0xEB1F931E35D5B2D0, v6, ((2 * v4) & 0x1D9F75E3ELL) + (v4 ^ 0xFDBA6EDFECFBAF1FLL) + 0x2459120130450E1);
}

uint64_t sub_1969CA6CC()
{
  *v5 = v8;
  v3 = (v2 + v0 + 1029) | 0x100;
  v9 = v0 + 679076257 - 1790939281 * ((&v9 & 0x5DA464A9 | ~(&v9 | 0x5DA464A9)) ^ 0x5A87BB17);
  v10 = v7;
  (*(v1 + 8 * (v0 + 679076983)))(&v9);
  v9 = v3 - 1790939281 * ((&v9 + 1581118530 - 2 * (&v9 & 0x5E3DF442)) ^ 0xA6E1D403) + 4816;
  v10 = v6;
  (*(v1 + 8 * (v3 ^ 0x1FAE)))(&v9);
  return 0;
}

uint64_t sub_1969CA7FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v6 = v3 + 32;
  v7 = (v2 + (v6 << a1));
  v8 = v7[6];
  v9 = v7[7];
  v10 = v7[4];
  v11 = v7[5];
  v12 = vrev32q_s8(v7[1]);
  v13 = vrev32q_s8(*v7);
  v14 = vrev32q_s8(v7[3]);
  v7[2] = vrev32q_s8(v7[2]);
  v7[3] = v14;
  *v7 = v13;
  v7[1] = v12;
  v7[6] = vrev32q_s8(v8);
  v7[7] = vrev32q_s8(v9);
  v7[4] = vrev32q_s8(v10);
  v7[5] = vrev32q_s8(v11);
  return (*(a2 + 8 * ((2 * (v4 == v6)) | (8 * (v4 == v6)) | v5)))();
}

uint64_t sub_1969CA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v16 = (v9 ^ 0x9DC3156D) + v11;
  *(v14 + 4 * v15) = v16 + v9 - ((v16 << (((v13 + a7) & a8) - 88)) & (v10 + 1567));
  return (*(v8 + 8 * (((HIDWORD(v16) == 0) * v12) ^ v13)))();
}

void sub_1969CA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0xB24]) = a69;
  STACK[0x958] = (v69 - 1483) + STACK[0x958] - 96;
  JUMPOUT(0x1969BE3E8);
}

uint64_t sub_1969CA8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = STACK[0x380];
  v7 = *STACK[0x410] + 6;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((v8 - 0x6AF7234D0CC131D5) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) - (((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v10 = __ROR8__(v9 ^ 0xA7B7E3F907D81E09, 8);
  v9 ^= 0xFF1066E9E2E6F55uLL;
  v11 = __ROR8__((0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v12 = (0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0x80FC60FEBC25C29ELL) - (v11 + v12) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v81;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v80;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v23 = *(STACK[0x248] + 8 * (STACK[0x228] - 3279));
  *v7 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ HIBYTE(LODWORD(STACK[0x380])) ^ 0x41;
  v24 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 - 0x6AF7234D0CC131D5)) | 0xC3A82C8AC586D220) - (v24 - 0x6AF7234D0CC131D5) - 0x61D4164562C36910;
  v26 = v25 ^ 0x283D547E0DD58EC2;
  v25 ^= 0x807BB1E99423FF9ELL;
  v27 = __ROR8__(v26, 8);
  v28 = (0xC5FEDAFBD727F00 - ((v27 + v25) | 0xC5FEDAFBD727F00) + ((v27 + v25) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v81;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v80;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xF225B66F71452428) - (v38 + v37) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v7 + 1) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 1) & 7))) ^ BYTE2(v82) ^ 0xB4;
  v40 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = v40 - ((2 * v40 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v42 = __ROR8__(v41 ^ 0xE3C569A8504BC41CLL, 8);
  v41 ^= 0x4B838C3FC9BDB540uLL;
  v43 = (v42 + v41) ^ 0xE49D77DF873DBF7ELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xF5A2F1B9B5D0B209;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v81;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v80;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x9A35C6070C844E0CLL) - (v53 + v52) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v7 + 2) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 2) & 7))) ^ BYTE1(v82) ^ 0x1F;
  v55 = (__ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v56 = v55 ^ 0x4DE9423B6F16E7D2;
  v55 ^= 0xE5AFA7ACF6E0968ELL;
  v57 = __ROR8__(v56, 8);
  v58 = (((2 * (v57 + v55)) & 0xD4384CBE8D1CCB66) - (v57 + v55) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__(((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4, 8);
  v62 = ((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4 ^ __ROR8__(v59, 61);
  v63 = (((v61 + v62) & a6 ^ a3) + ((v61 + v62) & a5 ^ a7) - 1) ^ v75;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v80;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__(((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78, 8);
  v69 = ((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78 ^ __ROR8__(v66, 61);
  v70 = __ROR8__((v68 + v69) ^ 0x1A2AEBE44253AF03, 8) + ((v68 + v69) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v69, 61));
  *(v7 + 3) = v82 ^ v77 ^ (((v70 - (a1 & (2 * v70)) + a2) ^ v73) >> (8 * ((v7 + 3) & 7)));
  return v23();
}

void sub_1969CAE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x704]) = v6;
  STACK[0x660] = STACK[0x648];
  STACK[0x460] = *(a6 + 8 * (v7 - 5658));
  JUMPOUT(0x1968C4598);
}

uint64_t sub_1969CAF7C()
{
  v4 = *(v1 + 8 * v0);
  STACK[0x278] = *(v2 + 8 * (7 * (v0 ^ 0x2E6) - 5614));
  STACK[0x270] = v3 + 4;
  return v4();
}

uint64_t sub_1969CB058(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v6 = a4 < v5;
  v7 = v4 + 1 + v5;
  v8 = v6 ^ (v7 < v5);
  v9 = v7 < a4;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(STACK[0x578] + 8 * ((236 * v6) ^ a3)))();
}

uint64_t sub_1969CB2EC@<X0>(uint64_t a1@<X3>, int a2@<W5>, unsigned int a3@<W6>, unsigned int a4@<W7>, int a5@<W8>)
{
  v10 = (*(a1 + 765 * (a4 ^ 0xA) + 638775 - ((((765 * (a4 ^ 0xA) + 638775) * v7) >> 32) >> 9) * v8) ^ 0xA2) * a3 + 6798;
  *(v6 + a4 * a3) = *(v6 + (v10 - (((8613 * v10) >> 16) >> 7) * v9));
  return (*(v5 + 8 * ((7454 * ((a5 + 1236540824) < 0x10)) ^ a2)))();
}

uint64_t sub_1969CB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  a17 = 1575331711 * ((&a17 - 896893266 - 2 * (&a17 & 0xCA8A7EAE)) ^ 0xA6D1EBAC) + 1655634431;
  v19 = (*(v18 + 54592))(&a17);
  return (*(v18 + 8 * ((2841 * (a18 == 1906281716)) ^ 0x54Au)))(v19);
}

void sub_1969CB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, _BYTE *a31)
{
  *a27 = a17;
  *a26 = 142;
  *a31 = 1;
  *(a29 + 1) = 3;
  JUMPOUT(0x1969CB8D0);
}

uint64_t sub_1969CB924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, int a34)
{
  *(v39 - 128) = v34;
  *(v39 - 120) = (a28 ^ (v38 - (a34 + 153) < ~(a34 + 153))) - v34;
  *(v39 - 116) = (a34 - 84366432) ^ v34;
  *(v39 - 152) = (a31 | 4) + v34;
  *(v39 - 148) = a31 ^ v34;
  *(v36 + 16) = v34 ^ 3;
  *(v36 + 24) = (v37 + 1) - v34;
  v40 = (*(v35 + 8 * a27))(v39 - 152);
  return (*(v35 + 8 * *(v39 - 124)))(v40);
}

void fp_dh_8b554db336864a474f766ac636da3aa1(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (1825732043 * ((-2 - ((a1 | 0x10FFD3E3) + (~a1 | 0xEF002C1C))) ^ 0xEF967F2B));
  __asm { BRAA            X9, X17 }
}

void fp_dh_4d36484c950331d3744043ce373b9241(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (753662761 * (((a1 | 0x4FF4262D) - (a1 & 0x4FF4262D)) ^ 0x2AEEDD66));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(STACK[0x248] + 8 * (((((v5 == a5) ^ v6) & 1) * (((2 * v6) ^ 0x956) - 3891)) ^ v6));
  STACK[0x390] = v5;
  return v7(0xEFCE3EFFD692BD57, 0xFF17E3694DAA0981, 0x7B0E7BDAC39050F6, -3948);
}

uint64_t sub_1969CBDC4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x570]) = v14;
  LODWORD(STACK[0x558]) = v9;
  LODWORD(STACK[0x564]) = v15;
  LODWORD(STACK[0x598]) = a2;
  LODWORD(STACK[0x59C]) = v17;
  v20 = v17 * a8 + v12;
  v21 = LODWORD(STACK[0x588]) ^ 0x1398;
  v22 = (((v20 * v11) >> 32) + ((v20 - ((v20 * v11) >> 32)) >> 1)) >> 9;
  LODWORD(STACK[0x53C]) = v21;
  v23 = v17 + (v17 & 0x380) + ((v21 - v17 - 3656) & 0x38A);
  v24 = *(v19 + v20 - v22 * v13);
  v25 = v15 + 1483710525;
  v26 = *(v19 + v20 + 266 - (v20 + 266) / 0x3D3 * v13);
  v27 = *(v19 + v20 + 399 - (v20 + 399) / 0x3D3 * v13);
  v28 = 149 * a2;
  v29 = v17 * a8 + v18;
  v30 = (149 * a2 + 19901) % 0x11Au;
  v31 = ((v24 ^ 0xE8) << 24) ^ 0xFD874189;
  v32 = v26 << 8;
  v33 = *(v19 + (v29 + 133) % 0x3D3);
  v34 = *(v19 + v29 % 0x3D3);
  v35 = v27 ^ 0xFFFFFF0C;
  v36 = v27 & 0xCB;
  v37 = v33 >> 4;
  v38 = v16;
  v39 = (v10 ^ 0x81BCAF85) & (2 * (v10 & 0xD5B8CE14)) ^ v10 & 0xD5B8CE14;
  v40 = v33 << 16;
  v41 = ((2 * (v10 ^ 0x838CB385)) ^ 0xAC68FB22) & (v10 ^ 0x838CB385) ^ (2 * (v10 ^ 0x838CB385)) & 0x56347D90;
  v42 = v41 ^ 0x52140491;
  v43 = v41 ^ 0x4207800;
  v44 = *(v19 + (v29 + 266) % 0x3D3) << 8;
  v45 = (v24 & 0x6B ^ 0xF5) + (v24 & 0x6B ^ 0x9E);
  v46 = ((4 * v42) ^ 0x58D1F644) & v42 ^ (4 * v42) & 0x56347D90;
  v47 = (v46 ^ 0x50107400) & (16 * (v43 & (4 * v39) ^ v39)) ^ v43 & (4 * v39) ^ v39;
  v48 = ((16 * (v46 ^ 0x6240991)) ^ 0x6347D910) & (v46 ^ 0x6240991);
  v49 = (16 * (v46 ^ 0x6240991)) & 0x56347D90;
  v50 = v32 & 0xB600;
  v51 = v36 ^ v25;
  v52 = v47 ^ 0x56347D91 ^ (v48 ^ v49 ^ 0x42045981) & (v47 << 8);
  v53 = (v52 << 16) & 0x56340000 ^ v52 ^ ((v52 << 16) ^ 0x7D910000) & (((v48 ^ v49 ^ 0x14302481) << 8) & 0x56340000 ^ 0x42000000 ^ (((v48 ^ v49 ^ 0x14302481) << 8) ^ 0x347D0000) & (v48 ^ v49 ^ 0x14302481));
  v54 = ((v45 + 66) & 0x8F) + ((v45 + 66) & 0x8F) * v23;
  v55 = *(STACK[0x5A0] + (v29 + 399) % 0x3D3);
  v56 = *(STACK[0x5A0] + v54 % 0x3D3);
  v57 = ((v10 ^ 0xABC1D6AD) + 2121865407) ^ v10 ^ ((v10 ^ 0x7F8BB52D) - 1439466689) ^ ((v10 ^ 0x21F2A9DB) - 196450359) ^ ((v10 ^ 0xDFFFFBB7) + 172438949) ^ v55 & 0xD9 ^ ((v44 & 0x5800 | (((v40 ^ 0xFFFEFFFF) & ((v34 << 24) ^ 0x6E0FDD24) & 0xFF0FFFFF | ((v37 & 0xF) << 20)) ^ 0xE3607A84) & (v44 ^ 0xFFFF1EAC)) ^ 0x77DD5B86) & (v55 ^ 0xFFFFFF5E);
  v58 = v57 ^ 0x21059D1B;
  LOBYTE(v36) = v38;
  v59 = (v38 - ((2 * v38) & 0x4604D152) - 1560123223) ^ v25 ^ 0x8207F5B2 ^ v57;
  v60 = (v28 + 30778) % 0x11Au;
  LOWORD(v25) = v28;
  LOWORD(v52) = (v28 - 24328) % 0x11Au;
  LODWORD(STACK[0x544]) = v10 + 653143396;
  LODWORD(STACK[0x560]) = v38 + 21679535 + a5;
  v61 = ((v31 & ((v56 << 16) ^ 0xFF5EFB8D) & 0xFF87FFFF | (((v56 >> 3) & 0xF) << 19)) ^ 0x3AEA0851) & (v32 ^ 0xFFFF3ADD);
  v62 = ((v57 ^ 0x21059D1B) & 0x32155980) + v38 + ((v57 ^ 0x21059D1B) & 0x32155980 ^ 0x32155980);
  v63 = 2 * LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x554]) = v63;
  v64 = v51 ^ ((v50 | v61) ^ 0x2A810EEC) & v35;
  LOBYTE(v50) = LODWORD(STACK[0x59C]) - v63 + 120;
  v65 = *(STACK[0x5A0] + (v20 + 798) % 0x3D3);
  v66 = STACK[0x580];
  *(STACK[0x580] + 4 * v30) = v64 ^ 0x45612138;
  v67 = a5 + 390032500 + (v57 ^ 0x21059D1B);
  v68 = *(STACK[0x5A0] + (v20 + 931) % 0x3D3);
  v69 = v64 ^ 0xC4ACC7C5;
  v70 = ((v65 << 8) ^ 0xF3D3897A) & (v68 ^ 0xF7FFFF0A) | v68 & 0x85;
  LODWORD(v30) = v10 ^ v64 ^ (2 * v53);
  v71 = v25;
  STACK[0x548] = (v25 + 20050) % 0x11Au;
  *(v66 + 4 * v60) = v58;
  v72 = (v64 ^ 0xC4ACC7C5 ^ v59) - v59;
  v73 = v52;
  v74 = STACK[0x558];
  v75 = LODWORD(STACK[0x558]) + LODWORD(STACK[0x570]) + 179407435;
  v76 = *(STACK[0x5A0] + (v29 + 665) % 0x3D3) << 16;
  v77 = STACK[0x570];
  v78 = 709308908 - v10 + (v30 ^ 0x155CF2F3);
  LODWORD(v30) = LODWORD(STACK[0x570]) + 868760014;
  v79 = (v50 ^ LODWORD(STACK[0x59C])) & 0x40 | 0xA;
  v80 = *(STACK[0x5A0] + (v20 + 532) % 0x3D3) ^ 0x7A;
  v81 = *(STACK[0x5A0] + (v29 + 798) % 0x3D3) << 8;
  v82 = (*(STACK[0x5A0] + (v20 + 665) % 0x3D3) << 16) ^ 0x750C257E;
  v83 = v70 ^ 0x3B7315DB;
  v84 = *(STACK[0x5A0] + (v29 + 931) % 0x3D3);
  v85 = ((v69 ^ LODWORD(STACK[0x570])) - LODWORD(STACK[0x570]) - 555291494 - ((2 * ((v69 ^ LODWORD(STACK[0x570])) - LODWORD(STACK[0x570]))) & 0xBDCDD934)) ^ v72 ^ 0xDEE6EC9A ^ v78;
  v86 = (v84 & 0x56 | 0x1208600) ^ v30 ^ ((v81 & 0x7400 | (((((*(STACK[0x5A0] + (v29 + 532) % 0x3D3) ^ 0x1E) << 24) ^ 0x5082E12) & (v76 ^ 0xFF4B6E7A) | v76 & 0xFFF7FFFF) ^ 0xBA08A548) & (v81 ^ 0xFFFF5A7E)) ^ 0xB43ED2F3) & (v84 ^ 0xFFFFFF0E);
  LODWORD(STACK[0x540]) = v86;
  v87 = LODWORD(STACK[0x564]) - 1448804467;
  v88 = v85 - v74;
  STACK[0x558] = (v71 + 30927) % 0x11Au;
  LODWORD(v60) = v86 ^ v87;
  *(v66 + 4 * v73) = v88 + 492810115;
  v89 = (v62 - 2 * ((v62 + 28500046) & 0x53DD2097 ^ v36 & 1) + 1435500772) ^ v86 ^ v87 ^ 0xB6328F6F;
  v90 = v77 + 1943876447;
  *(v66 + 4 * ((149 * v8) % 0x11Au)) = v67;
  v91 = v66;
  v92 = v62 + 1103616479;
  LODWORD(STACK[0x568]) ^= (v77 + 1943876447) ^ ((LODWORD(STACK[0x568]) ^ 0x4E7B5EC4) - 1022143795) ^ ((LODWORD(STACK[0x568]) ^ 0x5FA38FD3) - 758414372) ^ ((LODWORD(STACK[0x568]) ^ 0x1C30DD1F) - 1856450280) ^ ((LODWORD(STACK[0x568]) ^ 0x7F7FFFFF) - 233311240) ^ 0x73EFAE8B;
  LODWORD(v73) = LODWORD(STACK[0x59C]) + 914;
  v93 = STACK[0x544];
  v94 = v30 ^ LODWORD(STACK[0x544]) ^ 0xF079078D ^ (v77 - ((2 * (v77 + 1943876447)) & 0xE0F20F1A) + 1683372780);
  v95 = v75;
  LODWORD(STACK[0x56C]) ^= ((LODWORD(STACK[0x56C]) ^ 0xEFEA355A) + 1652454967) ^ ((LODWORD(STACK[0x56C]) ^ 0xBCFCABF2) + 828958879) ^ ((LODWORD(STACK[0x56C]) ^ 0xDE82D5C5) + 1393989290) ^ ((LODWORD(STACK[0x56C]) ^ 0xFFFFF7FE) + 1919661203);
  v96 = (((124 - v88) | (v88 + 492810115)) & v79 ^ v80) << 24;
  LODWORD(STACK[0x564]) = (v62 + 28500046) ^ v87 ^ (v62 - ((2 * (v62 + 1103616479)) & 0x76A19812) - 48716312);
  v97 = ((2 * v75) & 0xBE0131CA) + (v75 ^ 0xDF0098E5);
  LOWORD(v76) = v71;
  v98 = *(STACK[0x5A0] + (v20 + 1197) % 0x3D3) << 16;
  LODWORD(v73) = (v98 ^ 0xFF7FFFFF) & ((*(STACK[0x5A0] + (((v62 + 1103616479) | (32 - v62)) & 0x85) * v73 % 0x3D3) << 24) ^ 0x45B6B3FA) | v98 & 0x490000;
  v99 = ((v96 ^ 0x4FF257E) & v82 & 0x375F2004 | v96 & 0x2000000) ^ 0x70F94123 ^ (((v96 ^ 0x4FF257E) & v82 | v96 & 0x8A000000) ^ 0xA32DA81) & v83;
  v100 = v99 ^ (v62 - ((2 * (v62 + 28500046)) & 0x1A28780E) - 1899553707);
  v101 = STACK[0x554] & 0x700;
  v102 = (v60 ^ 0x68FB93CE ^ v99) - v89;
  v103 = *(STACK[0x5A0] + (133 * ((LODWORD(STACK[0x59C]) ^ 0x381u) + v101) + 2660) % 0x3D3);
  LODWORD(v73) = (((v73 ^ 0x4A084C04) & ((*(STACK[0x5A0] + (v20 + 1330) % 0x3D3) << 8) ^ 0x4AB93444) | v73 & 0xB5460000) ^ 0xDE9C0BE9) & (v103 ^ 0xFFFFFF0C);
  LODWORD(v66) = STACK[0x560];
  v104 = v92 ^ (LODWORD(STACK[0x560]) + 506917322);
  *(v91 + 4 * STACK[0x548]) = v100 ^ 0x81CDE6CD;
  v105 = LODWORD(STACK[0x540]) ^ 0xE5EFAFF9;
  v100 ^= 0x30u;
  v106 = v103 & 0x52 ^ (v104 - ((2 * v104) & 0xD6B96CB2) - 346245543) ^ v73;
  *(v91 + 4 * STACK[0x558]) = v105;
  *(v91 + 4 * ((v71 - 24179) % 0x11Au)) = v66 + 672217550 + v105;
  v107 = (v100 ^ v93) - v93;
  v108 = (v100 ^ v30) - v30;
  LODWORD(v30) = (*(STACK[0x5A0] + (v29 + 1064) % 0x3D3) ^ 0x8A) << 24;
  LOWORD(v73) = (v71 + 31076) % 0x11Au;
  v109 = *(STACK[0x5A0] + (v29 + 1330) % 0x3D3);
  v110 = v102 ^ 0x46538173 ^ v107;
  v111 = ((((*(STACK[0x5A0] + (v29 + 1197) % 0x3D3) << 16) ^ 0x8E28F707) & (v30 ^ 0xD5FFF747) | v30 & 0x71000000) ^ 0x646D0063) & ((v109 << 8) ^ 0xFFFF0667);
  v112 = *(STACK[0x5A0] + (v29 + 1463) % 0x3D3);
  v113 = (v71 + 9173) % 0x11Au;
  v114 = STACK[0x5A0];
  v115 = (v111 ^ ((((v109 >> 3) & 1) << 11) | 0x4D2DA08D)) & (v112 ^ 0xFFFFFF1E);
  v116 = v97 ^ v90;
  v117 = (v71 + 20199) % 0x11Au;
  v118 = v112 & 0x16 ^ 0xD69957F9 ^ v115;
  v119 = v118 ^ v97 ^ v90;
  v120 = v110 ^ (v108 + 1179877747 - ((2 * v108) & 0x8CA702E6));
  v121 = v73;
  v122 = ((v119 ^ v94) - v94) ^ 0x370348EC ^ ((v118 ^ v97) - v90 + 922962156 - ((2 * ((v118 ^ v97) - v90)) & 0x6E0691D8));
  v123 = STACK[0x564];
  v124 = LODWORD(STACK[0x564]) ^ v92;
  v125 = (v73 & 0x26 ^ 0x3B05C827) + (v73 & 0x26);
  v126 = (v97 ^ v90) - v90;
  LODWORD(v73) = LODWORD(STACK[0x568]) - v126;
  *(v91 + 4 * v113) = 368352965 - v95 + v120;
  v127 = v73 + v94;
  v128 = (v73 + v94 + v90) ^ v73;
  *(v91 + 4 * v117) = v106 ^ 0x7AF2AE69;
  LODWORD(v73) = 133 * ((LODWORD(STACK[0x59C]) ^ 0x386) + v101) + 2128;
  *(v91 + 4 * v121) = v119;
  LODWORD(v73) = (*(v114 + v73 % 0x3D3) ^ 0xA6) << 24;
  v129 = (v20 + 1862) % 0x3D3;
  LODWORD(v73) = ((*(v114 + (v20 + 1729) % 0x3D3) << 16) ^ 0x97F6604D) & (v73 ^ 0xD0FF64CD) | v73 & 0x68000000;
  v130 = v122 ^ ((v124 ^ 0x406F849D ^ v106 ^ v119) - (v124 ^ 0x406F849D ^ v106));
  v131 = v20 + 1995;
  v132 = v104 - v92;
  v133 = (LODWORD(STACK[0x56C]) ^ 0x7313E1EF ^ v92) - (v104 - v92);
  LODWORD(v121) = v92 - v125;
  v134 = *(v114 + v131 % 0x3D3);
  LODWORD(v113) = (v123 ^ 0xBB50CC09) + v133;
  LODWORD(v73) = (v73 & 0x9B8E6008 ^ 0x1DE1E72 ^ (v73 ^ 0x409FB0) & ((*(v114 + v129) << 8) ^ 0x647141F5)) & (v134 ^ 0xFFFFFF0E);
  v135 = LODWORD(STACK[0x598]) + 712148547;
  *(v91 + 4 * ((v76 - 24030) % 0x11Au)) = -388308759 - v116 + v130;
  v136 = v134 & 0x70 ^ v73;
  v137 = v113 + v92;
  v138 = v113 + v125;
  LODWORD(v73) = *(v114 + (v29 + 1596) % 0x3D3) << 24;
  LODWORD(v73) = ((*(v114 + ((((-16 - LODWORD(STACK[0x59C])) | LODWORD(STACK[0x59C])) & 0x80 | ((4 - LODWORD(STACK[0x598])) & 4 | 0xAB501102) ^ v135 & 4) ^ 0xAB501103) * (LODWORD(STACK[0x59C]) + 587) % 0x3D3) << 16) ^ 0x693D3779) & (v73 ^ 0x9EFF7779) | v73 & 0x96000000;
  *(v91 + 4 * ((v76 + 9322) % 0x11Au)) = ((2 * ((v106 ^ 0xFB3F4894) + v104)) & 0x2BE93D8A) + (((v106 ^ 0xFB3F4894) + v104) ^ 0x15F49EC5);
  v139 = *(v114 + (v29 + 1862) % 0x3D3) << 8;
  v140 = v137 ^ v133;
  v141 = STACK[0x570];
  LODWORD(v73) = v139 & 0xEEEEEEEE | (v73 ^ 0xC9A62618) & (v139 ^ 0xFFFF6E79);
  v142 = *(v114 + (v29 + 1995) % 0x3D3);
  v143 = v136 ^ (v140 - ((2 * v140) & 0x5C392F46) + 773625763);
  *(v91 + 4 * ((v76 + 20348) % 0x11Au)) = v143 ^ 0x59788F91;
  LODWORD(v73) = v128 ^ v142 & 0x7F ^ 0x5433AF1 ^ (v73 ^ 0x3529CBE1) & (v142 ^ 0xFFFFFF0C);
  v143 ^= 0xD8B5696C;
  *(v91 + 4 * ((v76 + 31225) % 0x11Au)) = v73;
  v144 = v126 - v128;
  *(v91 + 4 * ((v76 - 23881) % 0x11Au)) = -388308759 - v144 + (((v73 ^ (v127 + 990234663)) - (v127 + 990234663)) ^ 0xD3096A8B ^ ((v73 ^ (v141 + 953641784)) - (v141 + 953641784) - 754357621 - ((2 * ((v73 ^ (v141 + 953641784)) - (v141 + 953641784))) & 0xA612D516)) ^ ((v143 ^ v138 ^ v121 ^ v73) - (v143 ^ v138 ^ v121)));
  *(v91 + 4 * ((149 * v135) % 0x11Au)) = v132 - v140 + 368352965 + v143;
  LODWORD(v73) = LODWORD(STACK[0x588]) + 4288;
  LODWORD(STACK[0x568]) = ((v144 - v128) ^ 0xEC8EB4E5) - 1656180727 + ((v141 - v127 - 36592879 + v144 - v128) ^ (v128 + v127 + 990234663) ^ 0xC482EBB2) + ((v128 + v127 + 990234663) ^ 0xC482EBB2);
  LODWORD(STACK[0x56C]) = ((v140 + v138) ^ 0xC482EBB2) + 21679535 + ((v132 - v140 - v140) ^ 0xEC8EB4E5) - 1680758026 + ((v140 + v138) ^ 0xC482EBB2 ^ (((2 * (v121 - 1201195800)) & 0x8F319630) + ((v121 - 1201195800) ^ 0x4798CB18) - v138 + v132 - v140 - v140));
  return (*(STACK[0x578] + 8 * (v73 | (32 * ((v135 + 1) > 0xF)))))();
}

uint64_t sub_1969CD3F8()
{
  v2 = STACK[0x4C0];
  STACK[0x528] = STACK[0x850] + 108;
  STACK[0x878] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 2742) | 0x204) ^ (v0 - 2195))) ^ v0)))();
}

uint64_t sub_1969CD498@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (a2)
  {
    v10 = a9 == 97900969;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && a3 != 0;
  return (*(v9 + 8 * ((v12 * ((a1 + 207) ^ 0x135C)) ^ a1)))();
}

void sub_1969CD4F4(unint64_t a1)
{
  STACK[0x2A0] = v3;
  *(a1 + 1424) = 0;
  memset((a1 + 1432), 236, 78);
  *(v2 + 96) = a1;
  STACK[0x408] = v2 + 96;
  STACK[0x298] = a1;
  *(a1 + 476) = 1;
  STACK[0x468] = *(v4 + 8 * v1);
  STACK[0x290] = v2;
  STACK[0x2F8] = v2;
  JUMPOUT(0x1969CD588);
}

uint64_t sub_1969CD698@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (v2 + 1) > 0xFFFFFFFF05B67C38)
  {
    v5 = a2 + v2 + ((2 * a1) ^ 0x448u) - 577 < v3;
  }

  return (*(v4 + 8 * ((21 * !v5) ^ a1)))();
}

void sub_1969CD700()
{
  LOWORD(STACK[0x986]) = v0;
  LODWORD(STACK[0x3D0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969CD794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v23 = 1068996913 * (((v22 ^ 0x4E13EAABF967C06ELL | 0x94E15CF2DE539C3) - ((v22 ^ 0x4E13EAABF967C06ELL) & 0x94E15CF2DE539C3)) ^ 0xD33CCBF7016C183CLL);
  a15 = ((v19 ^ 0x7D16B5338F56FADBLL) - 0x10000000940700BLL + ((2 * v19) & 0xFA2D6A671EADF5B6)) ^ v23;
  LODWORD(a16) = 6365 - v23;
  a17 = a9;
  (*(v20 + 54528))(&a13);
  v24 = 753662761 * ((-1624960300 - (v22 | 0x9F2512D4) + (v22 | 0x60DAED2B)) ^ 0x5C01660);
  a15 = a9;
  a16 = v17;
  a13 = (v18 ^ 0xFE76DADF) + ((2 * v18) & 0xFCEDB5BE) - v24 + 1472147377;
  a14 = v24 ^ 0x15D7;
  v25 = (*(v20 + 54232))(&a13);
  return (*(v20 + 8 * ((7675 * (a17 == v21)) ^ 0x928u)))(v25);
}

void sub_1969CD928(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 + 72);
  v6 = ((2 * v1) & 0xFBDFFFF8) + (v1 ^ 0x7DEFFFFF) - 2112880639;
  *(v3 + v6) = v5 ^ 0x87;
  *(v3 + v6 + 1) = ((v2 + 91) ^ BYTE1(v5) ^ 0xFC) - ((2 * ((v2 + 91) ^ BYTE1(v5) ^ 0xFC)) & 0xD8) - 20;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0x47) - ((2 * (BYTE2(v5) ^ 0x47)) & 0xD8) - 20;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0x7C) - 2 * ((HIBYTE(v5) ^ 0x7C) & 0x6D ^ HIBYTE(v5) & 1) - 20;
  __asm { BRAA            X15, X17 }
}

void IPaI1oem5iL()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_978551b399bc1eb48249af78665b1a31 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * (fp_dh_978551b399bc1eb48249af78665b1a31 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x60]) + 37);
  v1 = off_1F0B0CC80;
  v2 = off_1F0B0CAE8 - 8;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 562);
  v4 = &v6[*v0 + *(v3 - 4)];
  *v0 = 810526117 * v4 + 0x3983E51A1E6C17ABLL;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v7[0] = 1575331711 * ((564352016 - (v7 | 0x21A35410) + (v7 | 0xDE5CABEF)) ^ 0xB2073EED) + 1655634431;
  LOBYTE(v3) = -91 * ((*(v3 - 4) - *v0) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_978551b399bc1eb48249af78665b1a31) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_978551b399bc1eb48249af78665b1a31) ^ 0x55))] ^ 0xC]) + 382) - 4;
  (*&v5[8 * (v3 ^ v2[v1[v3] ^ 0x60]) + 54296])(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969CDD44(int a1, uint64_t a2, int a3, uint64_t a4, char a5, char a6, int a7)
{
  v13 = *(a2 + v7 + 72);
  v14 = (((a1 + 734) ^ a3) & (2 * v7)) + (v7 ^ a7) + v9;
  *(a4 + v14) = v13 ^ 0x87;
  *(a4 + v14 + 1) = (BYTE1(v13) ^ 7) - (a5 & (2 * (BYTE1(v13) ^ 7))) - 20;
  *(a4 + v14 + 2) = (a6 ^ BYTE2(v13)) - (a5 & (2 * (a6 ^ BYTE2(v13)))) - 20;
  *(a4 + v14 + 3) = (HIBYTE(v13) ^ 0x7C) - 2 * ((HIBYTE(v13) ^ 0x7C) & v12 ^ HIBYTE(v13) & 1) - 20;
  return (*(v11 + 8 * (((v7 + 4 >= v8) * v10) ^ a1)))();
}

uint64_t sub_1969CDDE4@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x55C]) - v1;
  v6 = a1 != 1049230069 && v4 == 540590832;
  return (*(v3 + 8 * ((v6 * ((v2 + 783415556) & 0xD14E17FF ^ (v2 + 4348))) ^ v2)))();
}

uint64_t sub_1969CDF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v31 = *(a28 + 104);
  v32 = STACK[0x6F0];
  v33 = STACK[0x8E4];
  v34 = 489239129 * ((((v30 - 224) | 0x765A6BF0) - ((v30 - 224) & 0x765A6BF0)) ^ 0xCF7248C6);
  *(v30 - 216) = (v28 + 1604992841) ^ v34;
  *(v30 - 192) = v32;
  *(v30 - 200) = v34 + v33 * ((v28 + 3603) ^ 0x3F6DDFC6) + 1333893164;
  *(v30 - 176) = &STACK[0x444];
  *(v30 - 208) = a27;
  *(v30 - 224) = &STACK[0x4B8];
  *(v30 - 184) = -489239129 * ((((v30 - 224) | 0x765A6BF0) - ((v30 - 224) & 0x765A6BF0)) ^ 0xCF7248C6) + 2035953165 * v31 - 400139902;
  v35 = (*(v29 + 8 * (v28 ^ 0x1038)))(v30 - 224);
  return (*(v29 + 8 * ((6630 * (*(v30 - 168) == 1906281716)) ^ v28)))(v35);
}

uint64_t sub_1969CE080()
{
  v2 = v0 ^ 0x1220;
  (*(v1 + 8 * (v0 ^ 0x1116)))();
  return (*(v1 + 8 * (((STACK[0x510] == 0) * (((v2 - 5802) ^ 0x10F5) - 4427)) ^ v2)))();
}

uint64_t sub_1969CE0D4(double a1, double a2, double a3, double a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v29 = v11 - 8;
  v30.i64[0] = v12 + v29 + 13;
  v30.i64[1] = v12 + v29 + 12;
  v31.i64[0] = v12 + v29 + 15;
  v31.i64[1] = v12 + v29 + 14;
  v32.i64[0] = v12 + v29 + 17;
  v32.i64[1] = v12 + v29 + 16;
  v33.i64[0] = v12 + v29 + v9 - 4048;
  v33.i64[1] = v12 + v29 + 10;
  v34 = vandq_s8(v33, *&STACK[0x410]);
  v35 = vandq_s8(v32, *&STACK[0x410]);
  v36 = vandq_s8(v31, *&STACK[0x410]);
  v37 = vandq_s8(v30, *&STACK[0x410]);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vaddq_s64(v41, *&STACK[0x3F0]);
  v43 = vaddq_s64(v40, *&STACK[0x3F0]);
  v44 = vaddq_s64(v39, *&STACK[0x3F0]);
  v45 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v41), a6), v42), vandq_s8(v42, a7));
  v46 = vaddq_s64(v38, *&STACK[0x3F0]);
  v47 = vaddq_s64(vandq_s8(vsubq_s64(a5, v38), a6), v46);
  v48 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v40), a6), v43), vandq_s8(v43, a7));
  v49 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a5, v39), a6), v44), vandq_s8(v44, a7));
  v50 = vsubq_s64(v47, vandq_s8(v46, a7));
  v51 = veorq_s8(v50, *&STACK[0x3B0]);
  v52 = veorq_s8(v49, *&STACK[0x3B0]);
  v53 = veorq_s8(v49, a8);
  v54 = veorq_s8(v50, a8);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, v15), vorrq_s8(v55, v14)), v14), v16);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v15), vorrq_s8(v56, v14)), v14), v16);
  v59 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v60);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, v17), vorrq_s8(v62, v18)), v18), v19);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, v17), vorrq_s8(v63, v18)), v18), v19);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v20);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v20);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), v21), v75), v22), v23);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v21), v74), v22), v23);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v24);
  v84 = veorq_s8(v82, v24);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), v25), v90), v26), v27);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), v25), v89), v26), v27);
  v93 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v94), v28);
  v132.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), *&STACK[0x400])));
  v132.val[1] = vshlq_u64(v96, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x400])));
  v97 = veorq_s8(v48, *&STACK[0x3B0]);
  v98 = veorq_s8(v48, a8);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v15), vorrq_s8(v99, v14)), v14), v16);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v17), vorrq_s8(v102, v18)), v18), v19);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v20);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v21), v107), v22), v23);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v24);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v25), v112), v26), v27);
  v132.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), *&STACK[0x400])));
  v114 = veorq_s8(v45, *&STACK[0x3B0]);
  v115 = veorq_s8(v45, a8);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v15), vorrq_s8(v116, v14)), v14), v16);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v17), vorrq_s8(v119, v18)), v18), v19);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v20);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v21), v124), v22), v23);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v24);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v25), v129), v26), v27);
  v132.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x400])));
  *v33.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v132, *&STACK[0x3A0])), *(v13 + v29));
  return (*(STACK[0x248] + 8 * ((8075 * (v10 == v29)) ^ v8)))();
}

void sub_1969CE0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *v30 = ((v28 + 1273678819) & 0xB4153CBC) + 2147479743 + (((a18 - v28) | (v28 - a18)) >> 31) + 1697;
  (*(v29 + 8 * (v28 + 6721)))(a28);
  JUMPOUT(0x1969CE160);
}

uint64_t sub_1969CE1F8@<X0>(char a1@<W8>)
{
  v5 = 1799 * (v2 ^ 0xE15);
  v6 = v1 - 1;
  *(v3 + v6) = (a1 - 36 + ((v5 - 23) & 0x3D)) * (a1 ^ 0xBA);
  return (*(v4 + 8 * ((25 * (v6 != 0)) ^ v5)))();
}

uint64_t fp_dh_a413e362eac1c41aca364c1305baae79(_DWORD *a1)
{
  v1 = 998242381 * (((a1 | 0xB525D88) - (a1 & 0xB525D88)) ^ 0xA13DC55E);
  v2 = a1[1] ^ v1;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x1457)) + 8 * (((((v2 + 64) ^ (*a1 + v1 - 1805132658 < 7)) & 1) * ((v2 - 4728) ^ 0x3E6)) ^ v2) - 4))();
}

uint64_t sub_1969CE3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = STACK[0x340];
  v7 = *STACK[0x410] + 10;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((v8 - 0x6AF7234D0CC131D5) & 0x7B9FBBE89B31A532 ^ 0x6A1EA1C00800A112) + ((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) - (((v8 - 0x6AF7234D0CC131D5) ^ 0x91C11A2AF3FF5CE9) & 0x7F9FBBE89B31A532);
  v10 = __ROR8__(v9 ^ 0xA7B7E3F907D81E09, 8);
  v9 ^= 0xFF1066E9E2E6F55uLL;
  v11 = __ROR8__((0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20, 8);
  v12 = (0x80118B43C4E60BA1 - ((v10 + v9) | 0x80118B43C4E60BA1) + ((v10 + v9) | 0x7FEE74BC3B19F45ELL)) ^ 0x9B730363BC244B20 ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) & 0x80FC60FEBC25C29ELL) - (v11 + v12) + 0x3F81CF80A1ED1EB0) ^ 0xCA233E39143DACB9;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ v82;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v81;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x5CAA8D75362170F6) - 0x51AAB94564EF4785) ^ 0xB47FAD5ED9431778;
  v23 = *(STACK[0x248] + 8 * (v80 - 3252));
  *v7 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ HIBYTE(LODWORD(STACK[0x340])) ^ 0x41;
  v24 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 - 0x6AF7234D0CC131D5)) | 0xC3A82C8AC586D220) - (v24 - 0x6AF7234D0CC131D5) - 0x61D4164562C36910;
  v26 = v25 ^ 0x283D547E0DD58EC2;
  v25 ^= 0x807BB1E99423FF9ELL;
  v27 = __ROR8__(v26, 8);
  v28 = (0xC5FEDAFBD727F00 - ((v27 + v25) | 0xC5FEDAFBD727F00) + ((v27 + v25) | 0xF3A01250428D80FFLL)) ^ 0x173D658FC5B03F81;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v82;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v81;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0xF225B66F71452428) - (v38 + v37) + 0x6ED24C8475D6DEBLL) ^ 0x1CC7CF2C050EC2E8;
  *(v7 + 1) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 1) & 7))) ^ BYTE2(v83) ^ 0xB4;
  v40 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = v40 - ((2 * v40 + 0x2A11B965E67D9C56) & 0x545857267EBA479CLL) + 0x3F350846329BF1F9;
  v42 = __ROR8__(v41 ^ 0xE3C569A8504BC41CLL, 8);
  v41 ^= 0x4B838C3FC9BDB540uLL;
  v43 = (v42 + v41) ^ 0xE49D77DF873DBF7ELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xF5A2F1B9B5D0B209;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v82;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v81;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) | 0x9A35C6070C844E0CLL) - (v53 + v52) + 0x32E51CFC79BDD8FALL) ^ 0xD73008E7C4118805;
  *(v7 + 2) = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v52, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + 2) & 7))) ^ BYTE1(v83) ^ 0x1F;
  v55 = (__ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v56 = v55 ^ 0x4DE9423B6F16E7D2;
  v55 ^= 0xE5AFA7ACF6E0968ELL;
  v57 = __ROR8__(v56, 8);
  v58 = (((2 * (v57 + v55)) & 0xD4384CBE8D1CCB66) - (v57 + v55) + 0x15E3D9A0B9719A4CLL) ^ 0xF17EAE7F3E4C2532;
  v59 = v58 ^ __ROR8__(v55, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__(((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4, 8);
  v62 = ((v74 & (2 * (v60 + v59))) - (v60 + v59) + v79) ^ a4 ^ __ROR8__(v59, 61);
  v63 = (((v61 + v62) & a6 ^ a3) + ((v61 + v62) & a5 ^ a7) - 1) ^ v75;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v81;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__(((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78, 8);
  v69 = ((v72 | (2 * (v67 + v66))) - (v67 + v66) + v76) ^ v78 ^ __ROR8__(v66, 61);
  v70 = __ROR8__((v68 + v69) ^ 0x1A2AEBE44253AF03, 8) + ((v68 + v69) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v69, 61));
  *(v7 + 3) = v83 ^ v77 ^ (((v70 - (a1 & (2 * v70)) + a2) ^ v73) >> (8 * ((v7 + 3) & 7)));
  return v23();
}

uint64_t sub_1969CE408(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LOWORD(STACK[0x85E]) = a2;
  LODWORD(STACK[0x340]) = a2;
  return (*(STACK[0x370] + 8 * (a8 - 5379)))();
}

uint64_t sub_1969CE424@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 2462) ^ 0xFFFFFFFFFFFFE79ELL) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1436 * (v5 == 0)) ^ (v3 + 807))))();
}

void sub_1969CE4AC(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x7E0] = STACK[0x530];
  STACK[0x6F8] = *(a1 + 8 * a2);
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_1969CE50C@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = v5 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((6724 * (v6 == ((v3 - 4076) | 0x1087u) - 4247)) ^ v3)))();
}

void fp_dh_7df39d9d3bf8588ab9ab355dd5b97428(uint64_t a1)
{
  v1 = *(a1 + 8) - 1790939281 * ((207688607 - (a1 | 0xC61139F) + (a1 | 0xF39EEC60)) ^ 0xB42CC21);
  v2 = *a1;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2633) - 4;
  (*&v3[8 * (v1 ^ 0x1634)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2692), fp_dh_ac8b380baf0bf0ca926b0e34adc42df4);
  __asm { BRAA            X9, X17 }
}

void fp_dh_35b5ae6caf4d05b512f50a5cef2296bd(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1068996913 * ((a1 - 2 * (a1 & 0x466FF5A6) + 1181742502) ^ 0x93811437));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969CE9E4(int a1, uint64_t a2)
{
  v9 = (v2 + a2 + v5);
  v10 = ((v9[1] ^ v6) << 16) | ((*v9 ^ a1) << 24) | ((v9[2] ^ v6) << 8);
  LODWORD(v9) = (v10 | v9[3] ^ v6) + v4 - 2 * ((v10 | v9[3] ^ v6) & (v4 + 4) ^ (v9[3] ^ v6) & 4);
  v11 = ((a2 ^ 0x6A86DCD4 | 0x80) & (2 * (a2 & 0x59)) | 0x8241880C) ^ a2 & 0x59;
  v12 = (2 * (a2 ^ 0x6A86DCD4)) & 0x904248C ^ 0x9042485 ^ ((2 * (a2 ^ 0x6A86DCD4)) ^ 0x94DAD31A) & (a2 ^ 0x6A86DCD4);
  v13 = (4 * v11) & 0x8B4DAD8C ^ v11 ^ ((4 * v11) ^ 0x8B47A830) & v12;
  v14 = (4 * v12) & 0x8B4DAD8C ^ 0x82490989 ^ ((4 * v12) ^ 0xAF773E34) & v12;
  v15 = (16 * v13) & 0x8B4DAD80 ^ v13 ^ ((16 * v13) ^ 0xB45A80C0) & v14;
  v16 = (16 * v14) & 0x8B4DAD80 ^ 0xB05250D ^ ((16 * v14) ^ 0xB4DAD8D0) & v14;
  v17 = v15 ^ (v15 << 8) & 0x8B4DAD00 ^ ((v15 << 8) ^ 0xD288C00) & v16 ^ 0x89480901;
  *(v8 + 4 * (((a2 ^ (2 * ((v17 << 16) & 0xB4D0000 ^ v17 ^ ((v17 << 16) ^ 0x2D8D0000) & ((v16 << 8) & 0xB4D0000 ^ 0x2400000 ^ ((v16 << 8) ^ 0x4DAD0000) & v16)))) >> 2) ^ 0x39528A90)) = v9;
  return (*(v7 + 8 * ((7228 * ((a2 + 4 + v5) < 0x40)) ^ v3)))();
}

uint64_t sub_1969CEBF8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v2) ^ v5) + v3;
  *(*(a2 + 8) + 4 * v2) = v11 + v6 - (v8 & (2 * v11));
  return (*(v7 + 8 * (((v10 <= v2 + 1) * a1) ^ v4)))();
}

uint64_t sub_1969CEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = v6 + STACK[0x370];
  v19.i64[0] = v18 + (v7 ^ 0xFFFFFFFFFFFFE952);
  v19.i64[1] = v18 - 6;
  v20 = STACK[0x370] + v6 - 1;
  v21.i64[0] = v20;
  v21.i64[1] = v18 - 2;
  v22.i64[0] = v18 - 3;
  v22.i64[1] = v18 - 4;
  v23.i64[0] = v18 - 7;
  v23.i64[1] = v18 - 8;
  *&v24 = v18 - 9;
  *(&v24 + 1) = v18 - 10;
  *&STACK[0x410] = v24;
  *&v24 = v18 - 11;
  *(&v24 + 1) = v18 - 12;
  *&STACK[0x400] = v24;
  v25 = vandq_s8(v23, *&STACK[0x3F0]);
  v26 = vandq_s8(v22, *&STACK[0x3F0]);
  v27 = vandq_s8(v21, *&STACK[0x3F0]);
  v28 = vandq_s8(v19, *&STACK[0x3F0]);
  v29 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v33 = vaddq_s64(v32, *&STACK[0x3E0]);
  v34 = vaddq_s64(v31, *&STACK[0x3E0]);
  v35 = vaddq_s64(v30, *&STACK[0x3E0]);
  v36 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v32), *&STACK[0x3C0]), v33), vandq_s8(v33, *&STACK[0x3B0]));
  v37 = vaddq_s64(v29, *&STACK[0x3E0]);
  v38 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v31), *&STACK[0x3C0]), v34), vandq_s8(v34, *&STACK[0x3B0]));
  v39 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v30), *&STACK[0x3C0]), v35), vandq_s8(v35, *&STACK[0x3B0]));
  *&STACK[0x380] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v29), *&STACK[0x3C0]), v37), vandq_s8(v37, *&STACK[0x3B0]));
  v40 = veorq_s8(v38, *&STACK[0x340]);
  v41 = veorq_s8(v36, *&STACK[0x340]);
  v42 = veorq_s8(v36, *&STACK[0x330]);
  v43 = veorq_s8(v38, *&STACK[0x330]);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42), v9);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43), v9);
  v46 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v47 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), v10);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), v10);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(v49, vandq_s8(vaddq_s64(v49, v49), v11)), v12), *&STACK[0x2D0]);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(v48, vandq_s8(vaddq_s64(v48, v48), v11)), v12), *&STACK[0x2D0]);
  v52 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), *&STACK[0x2C0]), v57), v8), *&STACK[0x2A0]);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v56, v56), *&STACK[0x2C0]), v56), v8), *&STACK[0x2A0]);
  v60 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v15);
  v73 = veorq_s8(v71, v15);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v16);
  v80 = veorq_s8(v78, v16);
  v45.i64[0] = v18 - 13;
  v45.i64[1] = v18 - 14;
  v214.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v17)));
  v214.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v17)));
  v81 = veorq_s8(v39, *&STACK[0x340]);
  v82 = veorq_s8(v39, *&STACK[0x330]);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82), v9);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), v10);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v11)), v12), *&STACK[0x2D0]);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), *&STACK[0x2C0]), v88), v8), *&STACK[0x2A0]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v15);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v16);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v96.i64[0] = v18 - 15;
  v96.i64[1] = v18 - 16;
  v99 = vaddq_s64(v98, v97);
  v100 = vandq_s8(v96, *&STACK[0x3F0]);
  v214.val[0] = vshlq_u64(veorq_s8(v99, v13), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v17)));
  v101 = veorq_s8(*&STACK[0x380], *&STACK[0x340]);
  v102 = veorq_s8(*&STACK[0x380], *&STACK[0x330]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v9);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v10);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v11)), v12), *&STACK[0x2D0]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), *&STACK[0x2C0]), v108), v8), *&STACK[0x2A0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v15);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v16);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v119 = vandq_s8(v45, *&STACK[0x3F0]);
  v120 = vaddq_s64(v118, v117);
  v121 = vandq_s8(*&STACK[0x400], *&STACK[0x3F0]);
  v214.val[2] = vshlq_u64(veorq_s8(v120, v13), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v17)));
  v122 = vandq_s8(*&STACK[0x410], *&STACK[0x3F0]);
  v123 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v127 = vaddq_s64(v126, *&STACK[0x3E0]);
  v128 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v126), *&STACK[0x3C0]), v127), vandq_s8(v127, *&STACK[0x3B0]));
  v129 = vaddq_s64(v125, *&STACK[0x3E0]);
  v130 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v125), *&STACK[0x3C0]), v129), vandq_s8(v129, *&STACK[0x3B0]));
  v131 = vaddq_s64(v124, *&STACK[0x3E0]);
  v132 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v124), *&STACK[0x3C0]), v131), vandq_s8(v131, *&STACK[0x3B0]));
  v133 = vaddq_s64(v123, *&STACK[0x3E0]);
  v134 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3D0], v123), *&STACK[0x3C0]), v133), vandq_s8(v133, *&STACK[0x3B0]));
  v133.i64[0] = vqtbl4q_s8(v214, *&STACK[0x360]).u64[0];
  v135 = veorq_s8(v130, *&STACK[0x340]);
  v136 = veorq_s8(v128, *&STACK[0x340]);
  v137 = veorq_s8(v128, *&STACK[0x330]);
  v138 = veorq_s8(v130, *&STACK[0x330]);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v9);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v138), v9);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v142 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v143);
  v146 = veorq_s8(vaddq_s64(v144, v142), v10);
  v147 = veorq_s8(v145, v10);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), v11)), v12), *&STACK[0x2D0]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), v11)), v12), *&STACK[0x2D0]);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v151 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v151);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x2C0]), v153), v8), *&STACK[0x2A0]);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v152, v152), *&STACK[0x2C0]), v152), v8), *&STACK[0x2A0]);
  v156 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v157 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v158 = veorq_s8(v154, v156);
  v159 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v158);
  v161 = vaddq_s64(v159, v157);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(v160, vandq_s8(vaddq_s64(v160, v160), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v164 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v165 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v166 = veorq_s8(v162, v164);
  v167 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v166);
  v169 = veorq_s8(vaddq_s64(v167, v165), v15);
  v170 = veorq_s8(v168, v15);
  v171 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v172 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v173 = veorq_s8(v169, v171);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v173);
  v176 = veorq_s8(vaddq_s64(v174, v172), v16);
  v177 = veorq_s8(v175, v16);
  v178 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v179 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v213.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, v178)), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v17)));
  v213.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v179), v13), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v17)));
  v180 = veorq_s8(v132, *&STACK[0x340]);
  v181 = veorq_s8(v132, *&STACK[0x330]);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v9);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v10);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v11)), v12), *&STACK[0x2D0]);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), *&STACK[0x2C0]), v187), v8), *&STACK[0x2A0]);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v15);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v16);
  v213.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), v17)));
  v196 = veorq_s8(v134, *&STACK[0x340]);
  v197 = veorq_s8(v134, *&STACK[0x330]);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v9);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v10);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), v11)), v12), *&STACK[0x2D0]);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v203, v203), *&STACK[0x2C0]), v203), v8), *&STACK[0x2A0]);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(v206, vandq_s8(vaddq_s64(v206, v206), *&STACK[0x3A0])), *&STACK[0x390]), v14);
  v208 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v208), v15);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), v16);
  v213.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL))), v13), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), v17)));
  v133.i64[1] = vqtbl4q_s8(v213, *&STACK[0x360]).u64[0];
  v213.val[0] = vrev64q_s8(*(v20 - 15));
  v213.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v213.val[0], v213.val[0], 8uLL), *&STACK[0x310]), v133));
  *(a6 - 15 + v6 - 1) = vextq_s8(v213.val[0], v213.val[0], 8uLL);
  return (*(STACK[0x248] + 8 * ((61 * (v6 != 16)) ^ v7 ^ 0x3D)))();
}

void sub_1969CF70C(int a1@<W8>)
{
  v7 = *(v4 + 100);
  v8 = ((a1 - 3525) ^ 0xF5EFFA75 ^ *(v4 + 120)) + 2126170844 + ((2 * *(v4 + 120)) & 0xEBDFFFFC);
  v9 = 1068996913 * ((v6 - 224) ^ 0xD5EEE191);
  *(v6 - 200) = v4 + 104;
  *(v6 - 192) = a1 - v9 - 459;
  *(v6 - 208) = v8 ^ v9;
  *(v6 - 168) = 2065987003 - v9;
  *(v6 - 216) = v1;
  *(v6 - 224) = (v7 ^ 0x76BDBEE5) - v9 + ((2 * v7) & 0xED7B7DCA) - 855552;
  *(v6 - 220) = v9 + 1212704019 * (((v3 ^ 0x9A3607A1) + 1707735135) ^ ((v3 ^ 0x2B38DB12) - 725146386) ^ ((v3 ^ 0x28782468) - 678962280)) + 575815493;
  *(v6 - 184) = v2;
  *(v6 - 176) = v1;
  (*(v5 + 8 * (a1 + 1914)))(v6 - 224);
  JUMPOUT(0x1969CF840);
}

uint64_t sub_1969CF97C()
{
  v2 = STACK[0x518];
  STACK[0x958] += ((v1 - 1532) | 5u) ^ 0xFFFFFFFFFFFFF7A5;
  return (*(v0 + 8 * ((13 * (v2 == 1906281716)) ^ (v1 - 1527))))();
}

void fp_dh_074a616e96b31a9581862ec89c05b381(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (1283153057 * ((-2 - ((a1 | 0xB09998FE) + (~a1 | 0x4F666701))) ^ 0xBE6436));
  if (*(*a1 + 4) - 676339932 >= 0)
  {
    v2 = *(*a1 + 4) - 676339932;
  }

  else
  {
    v2 = 676339932 - *(*a1 + 4);
  }

  if (*(*(a1 + 8) + 4) - 676339932 >= 0)
  {
    v3 = *(*(a1 + 8) + 4) - 676339932;
  }

  else
  {
    v3 = 676339932 - *(*(a1 + 8) + 4);
  }

  v7 = *a1;
  v6[1] = v1 - 455395931 * (v6 ^ 0x76F15ECC) + 1392;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3401) - 4;
  (*&v4[8 * v1 + 22608])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_1969CFB68@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 - 2008;
  (*(a1 + 8 * (a2 ^ 0x146A)))();
  v3 = STACK[0x370];
  STACK[0x4D0] = 0;
  return (*(v3 + 8 * ((((((v2 + 872481708) & 0xCBFEFF2E) - 731) ^ (5 * (v2 ^ 0x732))) * (STACK[0x5F8] == 0)) ^ v2)))();
}

uint64_t sub_1969CFC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 - 3318;
  v9 = (*(a6 + 8 * (a8 ^ 0xCD0)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x370] + 8 * (((LODWORD(STACK[0x36C]) ^ (v9 == 0)) & 1 | (16 * ((LODWORD(STACK[0x36C]) ^ (v9 == 0)) & 1))) ^ v8)))();
}

uint64_t sub_1969CFCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (((v4 + 124) ^ 0xF2A) - 1948843114 + (*(a4 + 68) & 0x3F ^ 0x8CF1E05D)) ^ ((*(a4 + 68) & 0x3F ^ 0x51E6A5A5) + 1455445052) ^ ((*(a4 + 68) & 0x3F ^ 0xDD1745F8) - 634276761);
  *(a4 + v6 - 119992735) = 108;
  return (*(v5 + 8 * ((4894 * (v6 - 119992791 < 0xFFFFFFC8)) ^ v4)))();
}

uint64_t sub_1969CFDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((222 * ((((v2 + v4 + 314) ^ (v6 == 0)) & 1) == 0)) ^ (v2 + v4 + 1370))))();
}

uint64_t sub_1969CFEE4()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 - v3 + ((v4 - 3068) | 0x512u) - 1298;
  v10 = v0 + v9;
  v11 = v0 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 - v3 + v2 + 3;
  v15 = v8 + ((v4 + 3075) | 0x220u) + v2 - 6685;
  v17 = v11 > v5 && v10 < v7;
  v19 = v13 > v5 && v12 < v7 || v17;
  if (v14 < v7 && v15 > v5)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  return (*(v6 + 8 * ((2018 * v21) ^ v4)))();
}

uint64_t sub_1969CFF84@<X0>(uint64_t a1@<X5>, int a2@<W7>, uint64_t a3@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a3 + 8);
  *(a3 + 8) = v4;
  return (*(a1 + 8 * (1145 * ((a2 - 4641) ^ 0x439) + 545)))();
}

void sub_1969D0084(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1969D0098);
}

void woqRTqq9PL5McfBs891()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55))] ^ 0x15]) + 85);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 562);
  v3 = (*(v2 - 4) - v1) ^ &v5;
  *(v0 - 4) = 810526117 * v3 + 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0x85AFEEDF) - (v6 & 0x85AFEEDF)) ^ 0xE9F47BDD) + 1655634431;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_738b436515a93b901cfc01151dbe631d) ^ 0x55))] ^ 0xD2]) + 406) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0xBu) - 12) ^ v2) + 52688])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969D05D8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 36864;
  *(result + 8) = 1906281716;
  return result;
}

uint64_t sub_1969D09F4(int a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, int a7)
{
  v12 = *(a2 + v7 + 72);
  v13 = (v11 & (2 * v7)) + (v7 ^ a7) - 2146925438;
  *(a4 + v13) = ((v12 >> ((a1 ^ a6) + a5)) ^ 0x7C) - (a3 & (2 * ((v12 >> ((a1 ^ a6) + a5)) ^ 0x7C))) - 20;
  *(a4 + v13 + 1) = (v9 ^ BYTE2(v12)) - (a3 & (2 * (v9 ^ BYTE2(v12)))) - 20;
  *(a4 + v13 + 2) = (BYTE1(v12) ^ 7) - (a3 & (2 * (BYTE1(v12) ^ 7))) - 20;
  *(a4 + v13 + 3) = v12 ^ 0x87;
  return (*(v10 + 8 * ((29 * (v7 + 4 >= v8)) ^ a1)))();
}

uint64_t sub_1969D0A98()
{
  *(v3 - 216) = 654144011 * ((2 * ((v3 - 224) & 0x75ADD158) - (v3 - 224) - 1974325600) ^ 0xA686533C) + 86337211 + v0;
  v4 = (*(v2 + 8 * (v0 ^ 0x14EC)))(v3 - 224);
  *v1 = *(v3 - 224) ^ 0x21;
  return (*(v2 + 8 * (v0 + 237)))(v4);
}

uint64_t sub_1969D1530()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x8C8)))(128, 0x10800400FED9166);
  STACK[0x580] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 1106937114) & 0xBE056EAB ^ 0xFFFFF952) + v0 - 4488)) ^ v0)))();
}

uint64_t sub_1969D1DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16)
{
  v22 = 753662761 * ((((2 * &a13) | 0xB1526458) - &a13 + 660000212) ^ 0xBDB3C967);
  a13 = ((2 * v18) & 0xBCEF17F8) - v22 + (v18 ^ 0x5B2EF487 ^ (v21 - 2057733443)) + 2008972948;
  a14 = (v21 + 4377) ^ v22;
  a15 = a9;
  a16 = v17;
  (*(v19 + 8 * (v21 + 5565)))(&a13);
  v23 = 1621291457 * (((&a13 | 0xF18AF329) + (~&a13 | 0xE750CD6)) ^ 0xC79D72B1);
  a16 = a9;
  a14 = v23 + v21 + 27;
  LODWORD(a15) = v23 ^ (1122297523 * v16 + 296299868);
  v24 = (*(v19 + 8 * (v21 + 5619)))(&a13);
  return (*(v19 + 8 * ((7325 * (a13 == v20)) ^ v21)))(v24);
}

uint64_t sub_1969D1F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v13 - 128) = *v11;
  *(v13 - 127) = *(v11 + 1);
  *(v13 - 119) = *(v11 + 9);
  *(v13 - 115) = *(v11 + 13);
  *(v13 - 113) = *(v11 + 15);
  if (v9)
  {
    v14 = *(v12 + 8) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  return (*(a1 + 8 * (((((7 * (v10 ^ 0x42)) ^ v15) & 1) * ((v10 ^ 0x13F) - 3195)) ^ v10 ^ 0x13F)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1969D202C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB58] = v1 ^ 0x9976F8DB;
  *(a1 + 16) = (((v1 ^ 0x6FF1B85A) - 1878115958 + (v2 ^ 0x1CDE)) ^ ((v1 ^ 0x7B428DD9) - 2067959257) ^ (((((v2 - 4448) | 4) - 1916417038) ^ v1) + 1916416680)) - 1720256283;
  v5 = (*(v3 + 8 * (v2 ^ 0x84F)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((61 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969D2108()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x10C0)))(*v2, *(v0 + 8 * (v3 - 2243)));
  **(v0 + 8 * (v3 ^ 0xA07)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v3 + 1841964178) & 0x9235D795 ^ 0x689)) ^ v3)))();
}

uint64_t sub_1969D21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, _DWORD *a17, _DWORD *a18, unsigned int a19, unsigned int a20)
{
  v26 = 1283153057 * ((-135414297 - (&a16 | 0xF7EDBDE7) + (&a16 | 0x8124218)) ^ 0x47CA412F);
  LODWORD(a16) = (v25 + 1910) ^ v26;
  HIDWORD(a16) = v26 + 1416347612;
  a17 = v24;
  (*(v23 + 8 * (v25 + 3431)))(&a16);
  LODWORD(a18) = (v25 + 1385431586) ^ (998242381 * (((&a16 | 0xA542661A) - (&a16 & 0xA542661A)) ^ 0xF2DFECC));
  a16 = v24;
  a17 = v20;
  (*(v23 + 8 * (v25 ^ 0x170C)))(&a16);
  v27 = 489239129 * ((&a16 - 1132568246 - 2 * (&a16 & 0xBC7E614A)) ^ 0x556427C);
  LODWORD(a17) = v27 + v25 + 687;
  a16 = &a12;
  a18 = v24;
  a19 = v27 + 426488402;
  a20 = v27 ^ 0x99603FFC;
  v28 = (*(v23 + 8 * (v25 + 3370)))(&a16);
  v29 = v20[1];
  *v20 += a12;
  v20[1] = v29 + a13;
  v30 = v20[3];
  v20[2] += a14;
  v20[3] = v30 + a15;
  return (*(v23 + 8 * ((15 * (((21 * ((13 * (v25 ^ 0xD41)) ^ 0xB79) - 1748871961) ^ (13 * (v25 ^ 0xD41u) + 971)) + v21 - v22 > 0xFFFFFFBF)) ^ (13 * (v25 ^ 0xD41)))))(v28);
}

uint64_t sub_1969D2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, _DWORD *a41)
{
  *STACK[0x458] = v41;
  *a41 = STACK[0x7F4];
  return (STACK[0x3D0])(a1, a2, a3, a4, a5, a6, a7, v42);
}

uint64_t sub_1969D2478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  if (v17 + a16 + 1 >= 0)
  {
    v19 = v17 + a16 + 1;
  }

  else
  {
    v19 = ~(v17 + a16);
  }

  return (*(v16 + 8 * ((51 * (((v19 ^ 0x6BD732DF) - 1132925443 + ((v19 << (((v18 + 96) | 0x92) ^ 0xDB)) & 0xD7AE65BE) + v17) > ((v18 - 1952) | 0x192) - 3035)) ^ ((v18 - 1952) | 0x192))))(2646807917);
}

uint64_t sub_1969D2550(uint64_t a1)
{
  *(v4 - 224) = v3 - 1068996913 * ((-1432669562 - ((v4 - 224) | 0xAA9B3286) + ((v4 - 224) | 0x5564CD79)) ^ 0x808A2CE8) + 192805379;
  v5 = *(v2 + 8 * (v3 + 4957));
  LODWORD(STACK[0x36C]) = v1;
  STACK[0x370] = v2;
  v5(v4 - 224);
  return (*(STACK[0x370] + 8 * (((*(v4 - 220) == ((v3 - 864) | 0x1258) + 1906275991) * (((v3 - 1148) | 0x500) ^ 0x17D2)) ^ v3)))(a1);
}

void fp_dh_92a7e466a844921dd0d06fd4556bc436(_DWORD *a1)
{
  v1 = a1[4];
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  v3 = v1 - 753662761 * ((a1 & 0xD974E4A1 | ~(a1 | 0xD974E4A1)) ^ 0x4391E015);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969D2798@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + v3 - v1;
  v7 = *(v6 - 31);
  v8 = a1 + v3 - v1;
  v9.i64[0] = 0xD8D8D8D8D8D8D8D8;
  v9.i64[1] = 0xD8D8D8D8D8D8D8D8;
  v10.i64[0] = 0xECECECECECECECECLL;
  v10.i64[1] = 0xECECECECECECECECLL;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v6 - 15), vandq_s8(vaddq_s8(*(v6 - 15), *(v6 - 15)), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v5 + 8 * ((15 * (((v2 ^ (v1 == 96)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1969D28AC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  v9 = v4 < v5;
  *(&STACK[0x29C] + v3) = *(a2 + a3) + (~(2 * *(a2 + a3)) | 0x27) - 19;
  if (v9 == a3 + 1 > v6)
  {
    v9 = ((15 * (v8 ^ 0xAD0)) ^ (a1 + 21)) + a3 < v4;
  }

  return (*(v7 + 8 * (v8 | (4 * v9))))();
}

void sub_1969D2920(unint64_t a1)
{
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x230] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0x9A6DF79384157BA6);
  *&STACK[0x3D0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x6592086C7BEA8459uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x380] = vdupq_n_s64(0x843DAFC08D0A12D7);
  *&STACK[0x390] = vdupq_n_s64(a1);
  *&STACK[0x360] = vdupq_n_s64(0x39DC9B00391B345EuLL);
  *&STACK[0x370] = vdupq_n_s64(0x8C46C9FF8DC99742);
  *&STACK[0x340] = vdupq_n_s64(0x7EEEF60D967B2BE0uLL);
  *&STACK[0x350] = vdupq_n_s64(0xDD41ECDFBE268B20);
  *&STACK[0x320] = vdupq_n_s64(0x4AD58ABF7EED27F9uLL);
  *&STACK[0x330] = vdupq_n_s64(0x408884F934C26A10uLL);
  *&STACK[0x300] = vdupq_n_s64(0x515F59CDA9D49D9AuLL);
  *&STACK[0x310] = vdupq_n_s64(0xA2BEB39B53A93B34);
  *&STACK[0x2E0] = vdupq_n_s64(0x8494461D08EAD94FLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x83CEF08FC0DE285uLL);
  *&STACK[0x200] = vdupq_n_s64(0x7B6BB9E2F71526B0uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE5D1DB37F8F5FDB8);
  *&STACK[0x2A0] = vdupq_n_s64(0x3A1435ECF9D49D7FuLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x8BD794260C56C500);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x290] = vdupq_n_s64(0x203EDE08BB87327CuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF29226D18F0E1510);
  *&STACK[0x270] = vdupq_n_s64(0xDEA8F311324A00DuLL);
  *&STACK[0x250] = vdupq_n_s64(v1);
  JUMPOUT(0x1969D2BDCLL);
}

uint64_t sub_1969D37A8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = a2 - 1411;
  v4 = (a2 - 1411) ^ 0x14E2;
  v5 = (a2 - 2110) | 0xC3;
  STACK[0x948] = v2;
  v6 = STACK[0x818];
  STACK[0x950] = STACK[0x818];
  return (*(a1 + 8 * (((v2 - v6 > 9) * (v4 + v5 - 756)) ^ v3)))();
}

uint64_t sub_1969D3800(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v16 = a7 + (*(v7 + (v8 * v15 - (v8 * v15) / 0x3A0u * v12)) ^ 0xEA) * a6;
  *(v10 + (v9 ^ 0x314EC) + v8 * a6 - (((((v9 ^ 0x314EC) + v8 * a6) * v13) >> 32) >> 9) * v11) = *(v10 + (v16 - ((v16 * a3) >> 32) * v11));
  return (*(v14 + 8 * (((v8 == 15) * v12) ^ v9)))();
}

uint64_t sub_1969D38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v10 - 1;
  *(a2 + a9) = (&a9 ^ 0xBA) * (&a9 + 17);
  v12 = *(v11 + 8 * (((v10 == 1) * (v9 - 324)) ^ (v9 - 4669)));
  return v12(v12);
}

uint64_t sub_1969D39AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v17 = 1621291457 * (((v13 | 0x6DE5B49A) - (v13 & 0x6DE5B49A)) ^ 0x5BF23503);
  *(v16 - 120) = *v15;
  *(v16 - 132) = v12 - 1453 + v17;
  *(v16 - 128) = a11 ^ v17;
  (*(v14 + 8 * (v12 ^ 0x1037)))(v16 - 136);
  v18 = *v15;
  v19 = 1621291457 * ((v13 + 1217765205 - 2 * (v13 & 0x48959F55)) ^ 0x7E821ECC);
  v20 = ((v12 ^ 0xD3987171) + 1122297523 * *v11 + 1041281381) ^ v19;
  *(v16 - 132) = v12 - 1453 + v19;
  *(v16 - 128) = v20;
  *(v16 - 120) = v18;
  (*(v14 + 8 * (v12 + 4139)))(v16 - 136);
  v21 = *v15;
  v22 = (*(v11 + 8) ^ 0xFD36FF3786BE8AFELL) + 0x7EDFB5FBFF57FFD2 + ((2 * *(v11 + 8)) & 0xFA6DFE6F0D7D15FCLL);
  *(v16 - 120) = v12 + 3671 - 1068996913 * ((2 * (v13 & 0xB46DF4C0) - v13 + 1267862334) ^ 0x9E7CEAAF);
  *(v16 - 128) = v22 ^ (1068996913 * ((2 * (v13 & 0x7DDCF9EAB46DF4C0) - v13 - 0x7DDCF9EAB46DF4C2) ^ 0x164232869E7CEAAFLL));
  *(v16 - 112) = v21;
  (*(v14 + 8 * (v12 + 4122)))(v16 - 136);
  v23 = *v15;
  v24 = 1068996913 * ((~(v13 | 0xB27A25AB0F24911ELL) + (v13 & 0xB27A25AB0F24911ELL)) ^ 0xD9E4EEC725358F70);
  *(v16 - 128) = ((*(v11 + 16) ^ (676 * (v12 ^ 0xA82) + 0x7CFFF53BCED6F14CLL)) + ((2 * *(v11 + 16)) & 0xF9FFEA779DADF7B8) - 0xE9400848C0710CLL) ^ v24;
  *(v16 - 112) = v23;
  *(v16 - 120) = v12 + 3671 - v24;
  (*(v14 + 8 * (v12 + 4122)))(v16 - 136);
  v25 = *v15;
  v26 = (*(v11 + 24) ^ 0xFF5EFDFBE7F6BEDFLL) + 0x7CB7B7379E1FCBF1 + ((2 * *(v11 + 24)) & 0xFEBDFBF7CFED7DBELL);
  *(v16 - 120) = v12 + 3671 - 1068996913 * ((v13 + 1448859142 - 2 * (v13 & 0x565BD606)) ^ 0x83B53797);
  *(v13 + 24) = v25;
  *(v13 + 8) = v26 ^ (1068996913 * ((v13 - 0x3DD242F1A9A429FALL - 2 * (v13 & 0xC22DBD0E565BD606)) ^ 0x564C899D83B53797));
  v27 = (*(v14 + 8 * (v12 ^ 0x1026)))(v16 - 136);
  return (*(v14 + 8 * ((22 * (*(v16 - 136) != 1906281716)) ^ v12)))(v27);
}

uint64_t sub_1969D3D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39)
{
  v46 = 1283153057 * ((2 * (v42 & 0x69F2FCE0) - v42 + 369951514) ^ 0x59D5002D);
  *(v45 - 208) = v46 + v39 + 312955172;
  *(v45 - 200) = v41;
  *(v45 - 192) = (v40 - 3160) ^ v46;
  v47 = (*(v43 + 8 * (v40 ^ 0xD77)))(v45 - 208);
  v49 = STACK[0x57C];
  v50 = STACK[0x668];
  v51 = *(v44 + 8 * (v40 ^ 0x17E1));
  if (SLODWORD(STACK[0x57C]) > 407124652)
  {
    v52 = STACK[0x370];
    if (v49 > 1199819797)
    {
      v48 = 6138;
      if (v49 == 1199819798)
      {
        a38 = a33;
        v57 = 2176 * a34;
        v58 = STACK[0x678];
        v59 = STACK[0x618];
        goto LABEL_24;
      }

      if (v49 != 1531311369)
      {
        if (v49 == 1862802940)
        {
          v53 = a32 | 0x800;
          v55 = STACK[0x618];
          v54 = v50 + 9;
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v50 + 9;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = -1639469211;
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      v61 = -1970960782;
    }

    else
    {
      if (v49 != 407124653)
      {
        if (v49 == 738616224)
        {
          v53 = v52 ^ 0x1D73;
          v55 = STACK[0x618];
          v54 = v50 + 29;
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v50 + 29;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = 1531311369;
          goto LABEL_27;
        }

        if (v49 == 1070107795)
        {
          v53 = v52 ^ 0x1D73;
          v54 = STACK[0x670] + 9;
          v55 = STACK[0x618];
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v54;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = 1862802940;
          goto LABEL_27;
        }

LABEL_32:
        v55 = STACK[0x610];
        v54 = STACK[0x548];
        v53 = a35;
        v63 = STACK[0x460];
        goto LABEL_33;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      v61 = 1199819798;
    }

    LODWORD(STACK[0x57C]) = v61;
    goto LABEL_34;
  }

  v52 = STACK[0x370];
  if (v49 <= -846774067)
  {
    v48 = 6138;
    if (v49 != -1970960782)
    {
      if (v49 != -1639469211)
      {
        if (v49 == -1178265637)
        {
          v53 = v52 - 3443;
          v54 = STACK[0x670] + 49;
          v55 = STACK[0x618];
          STACK[0x610] = STACK[0x618];
          STACK[0x548] = v54;
          LODWORD(STACK[0x460]) = 438359150;
          v56 = -385570492;
LABEL_27:
          LODWORD(STACK[0x57C]) = v56;
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      STACK[0x610] = STACK[0x618];
      STACK[0x548] = v51;
      LODWORD(STACK[0x460]) = 438359144;
      LODWORD(STACK[0x57C]) = -846774066;
LABEL_34:
      JUMPOUT(0x196966134);
    }

    v57 = v52 ^ 0xE7B;
    v58 = STACK[0x678];
    v59 = STACK[0x618];
LABEL_24:
    STACK[0x430] = *(v43 + 8 * a38);
    STACK[0x4B8] = v59;
    STACK[0x440] = v58;
    return (*(v43 + 8 * (((v58 == 0) * (((v57 ^ 0x19B5) + 6077) ^ (v57 - 389))) ^ v57)))(v47);
  }

  v48 = 6138;
  if (v49 == -846774066)
  {
    v57 = v52 + 389;
    v58 = STACK[0x678];
    v59 = STACK[0x618];
    a38 = a36;
    goto LABEL_24;
  }

  if (v49 == -385570492)
  {
    STACK[0x610] = STACK[0x618];
    STACK[0x548] = v50 + 49;
    LODWORD(STACK[0x460]) = 438359150;
    LODWORD(STACK[0x57C]) = 407124653;
    goto LABEL_34;
  }

  if (v49 != -54078921)
  {
    goto LABEL_32;
  }

  v54 = STACK[0x670] + 29;
  v55 = STACK[0x618];
  STACK[0x610] = STACK[0x618];
  STACK[0x548] = v54;
  LODWORD(STACK[0x460]) = 438359150;
  LODWORD(STACK[0x57C]) = 738616224;
  v53 = a39;
LABEL_28:
  v63 = 438359150;
LABEL_33:
  STACK[0x690] = v55;
  LODWORD(STACK[0x69C]) = v63;
  STACK[0x4A0] = v54;
  return (*(v43 + 8 * (((v63 - 438359194 + (*(v55 + 68) & 0x3Fu) < 0xFFFFFFC0) * (v53 + 4125 + ((v53 + 1153073455) & 0xBB4577DF))) ^ v53)))(v47, 59, 390, 2264, 4356, v52, 95, v48);
}

uint64_t sub_1969D42E4()
{
  v3 = 64 - (v0 + 1192498143 + ((v1 + 30550) | 0xA4226710));
  v4 = 348716176 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * (v6 ^ v1)))();
}

uint64_t sub_1969D4348(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = v44[396] ^ ((*v44 & 0x7FFFFFFE | v44[623] & 0x80000000) >> 1);
  v44[623] = (a4 + v42 - 2749 + v45 - (v43 & (2 * v45)) - 2090145026) ^ *(&a42 + (*v44 & 1));
  return (*(a2 + 8 * ((387 * (a38 > 0x26F)) ^ v42)))();
}

uint64_t sub_1969D43BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x6C0] + 24);
  STACK[0x7C0] = v7;
  return (*(a6 + 8 * (((v7 != 0) * ((v6 - 1291) ^ 0x113E ^ (1145 * (v6 ^ 0xC49)))) | v6)))();
}

void fp_dh_9d556fdabec46e454cba33129da3209d(uint64_t a1)
{
  v1 = *(a1 + 12) - 1575331711 * (a1 ^ 0x6C5B9502);
  __asm { BRAA            X10, X17 }
}

void sub_1969D4588()
{
  *&STACK[0x230] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3D0] = vdupq_n_s64(0x4DE9423B6F16E7D2uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x3B0] = vdupq_n_s64(v2);
  *&STACK[0x3C0] = vdupq_n_s64(0xE5AFA7ACF6E0968ELL);
  *&STACK[0x390] = vdupq_n_s64(v0);
  *&STACK[0x3A0] = vdupq_n_s64(v3);
  *&STACK[0x370] = vdupq_n_s64(0x812B53C3B544D6B9);
  *&STACK[0x380] = vdupq_n_s64(0x256A7876A89AD72uLL);
  *&STACK[0x350] = vdupq_n_s64(0x31F3CBC2A36B396CuLL);
  *&STACK[0x360] = vdupq_n_s64(0x7489A27A009464B0uLL);
  *&STACK[0x330] = vdupq_n_s64(0xBF58159D2FFB2386);
  *&STACK[0x340] = vdupq_n_s64(0x50B656E853741D9BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xBB6F16CCE7794FAFLL);
  *&STACK[0x320] = vdupq_n_s64(0x2053F53168026E3DuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFAA19CB27FF500D8);
  *&STACK[0x300] = vdupq_n_s64(v1);
  *&STACK[0x2D0] = vdupq_n_s64(0xA99F7374E88223D2);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AF31A6C0057F93uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xC351D2FA9AB1B69CLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x290] = vdupq_n_s64(0x8EB890C1F5A7514ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0xC751D2FA9AB1B69CLL);
  *&STACK[0x270] = vdupq_n_s64(0xDCED4F79D683836ALL);
  *&STACK[0x280] = vdupq_n_s64(0x26FE75566C512012uLL);
  *&STACK[0x250] = vdupq_n_s64(0xAEBD0636C7C7ECBuLL);
  *&STACK[0x260] = vdupq_n_s64(0xEE76A7BCEB41C1B5);
  *&STACK[0x210] = xmmword_196EBFAE0;
  JUMPOUT(0x1969D47F4);
}

void sub_1969D5310()
{
  v4 = 1621291457 * ((v3 - 208) ^ 0x36178199);
  *(v3 - 200) = &STACK[0x450];
  *(v3 - 208) = v4 + v0 + 5471 + 1908375424 + v1;
  *(v3 - 204) = v4 + v0 + 2530;
  (*(v2 + 8 * (v0 + 6212)))(v3 - 208);
  JUMPOUT(0x1969D580CLL);
}

uint64_t fp_dh_497d886e3ae57c5b10bbf76689f7e3d8(uint64_t a1)
{
  v1 = 1283153057 * (a1 ^ 0x4FD80337);
  v2 = *(a1 + 16) ^ v1;
  v3 = *(a1 + 8);
  v4 = *a1 - v1;
  v5 = v4 - 751314302 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 -= 754114471;
  v6 = v4 < 0xFFD545D7;
  v7 = v5 - 2800169 < v4;
  if (v6 != v5 > 0x2ABA28)
  {
    v7 = v6;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 2347) + 8 * ((7484 * v7) ^ v2) - 4))();
}

uint64_t sub_1969D54A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  memset((v12 - 184), 236, 48);
  *(a6 + 100) = 0xECECECECECECECECLL;
  memset((a6 + 108), 236, 42);
  v7 = a7 + v9 - ((2 * v9) & 0x77F4) + 2522 == (v10 ^ 0x27D) + 1135021704 + ((v10 + 2275) | 0x12);
  return (*(v11 + 8 * ((2 * v7) | (16 * v7) | v10)))(a1, a2, a3, a4, a5);
}

void sub_1969D54AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = 1068996913 * ((((v7 - 144) | 0x694BD8A1) - (v7 - 144) + ((v7 - 144) & 0x96B42758)) ^ 0xBCA53930);
  *(v7 - 128) = &STACK[0x31C];
  *(v7 - 144) = v8 ^ 0xADA01D3E;
  *(v7 - 136) = a6 + 46798474 + v8 + 29;
  (*(v6 + 8 * (a6 ^ 0x1A16)))(v7 - 144);
  JUMPOUT(0x196923570);
}

void NOAHabXy()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b7e21529ceb7e89630d679a530f50674) ^ 0x55)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_b7e21529ceb7e89630d679a530f50674) ^ 0x55))] ^ 0x60]) + 65);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0x76]) + 593);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 810526117 * v2 - 0x3983E51A1E6C17ABLL;
  *(v1 - 4) = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  v5[0] = 1575331711 * ((((2 * (v5 ^ 0x28DA6047)) | 0xEBDE238C) - (v5 ^ 0x28DA6047) + 168881722) ^ 0xB16EE483) + 1655634431;
  LOBYTE(v1) = -91 * ((*(v1 - 4) + *v0) ^ 0x55);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_b7e21529ceb7e89630d679a530f50674 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_b7e21529ceb7e89630d679a530f50674 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) + 437) - 4;
  (*&v3[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v1 - 8) ^ 0x16u) - 12) ^ v1) + 53320])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969D5924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  if ((a5 - 399946083) <= 0x19 && ((1 << (a5 - 99)) & 0x3014001) != 0)
  {
    return sub_1968E9B68(a1, a2, a3, a4);
  }

  else
  {
    return (*(v6 + 8 * ((4623 * (((-1541214312 - v8) & *(v5 + 48 * v7 + 40)) == 0)) ^ (a4 - 1541213402))))(4294925278);
  }
}

uint64_t sub_1969D59EC@<X0>(int a1@<W2>, int a2@<W8>)
{
  *v5 = a2 - 5557 + ((v2 + 2194) | 0x5B0);
  v8 = &v5[6 * (a2 - 1049230070)];
  v9 = v8[2];
  LODWORD(STACK[0x4EC]) = v8[3];
  STACK[0x500] = *(v8 + 2);
  LODWORD(STACK[0x55C]) = v8[6];
  v10 = *(v4 + (v9 + v3) * a1 + 36);
  LODWORD(STACK[0x534]) = v10;
  return (*(v6 + 8 * ((7858 * (v10 == v7)) ^ v2)))();
}

uint64_t sub_1969D5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 8 * (v6 ^ 0x1F92)))(128, 0x10800400FED9166);
  v8 = STACK[0x370];
  STACK[0x530] = v7;
  return (*(v8 + 8 * ((45 * (((v7 == 0) ^ (v6 + 100)) & 1)) ^ v6)))();
}

uint64_t sub_1969D5B58(unint64_t a1)
{
  STACK[0x3E8] = a1;
  LODWORD(STACK[0x3BC]) = v2;
  v4 = STACK[0x630];
  STACK[0x620] = 335;
  *(v4 + 335) = (&STACK[0x620] ^ 0xBA) * (&STACK[0x620] + 17);
  return (*(v3 + 8 * (((STACK[0x620] == 0) * (((877 * (v1 ^ 0x589) - 498807046) & 0x1DBB1FBB) + 1613)) ^ (877 * (v1 ^ 0x589) - 5192))))();
}

uint64_t sub_1969D5C38@<X0>(char a1@<W8>)
{
  v5 = ((834 * (v2 ^ 0xAC2u)) ^ 0xFFFFFFFFFFFFEC73) + v1;
  *(v4 + v5) = (a1 ^ 0xBA) * (a1 + 17);
  return (*(v3 + 8 * (v2 ^ (2 * (v5 == 0)))))();
}

uint64_t sub_1969D5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1621291457 * (((&a15 | 0xA243AF29) - (&a15 & 0xA243AF29)) ^ 0x94542EB0);
  a16 = v23 + 1241;
  LODWORD(a17) = v23 ^ (1122297523 * v21 + 296299868);
  a18 = a13;
  (*(v22 + 54664))(&a15);
  v24 = 753662761 * (((&a15 | 0xE3B14B6B) + (~&a15 | 0x1C4EB494)) ^ 0x86ABB021);
  a15 = (v20 ^ 0x7FBE5AF4) + ((2 * v20) & 0xFF7CB5E8) - v24 - 696799332;
  a16 = v24 ^ 0x15D7;
  a17 = a13;
  a18 = v19;
  (*(v22 + 54232))(&a15);
  v25 = 753662761 * (((&a15 | 0x9E339A28) - &a15 + (&a15 & 0x61CC65D0)) ^ 0xFB296163);
  a17 = a13;
  a18 = 0;
  a15 = 1446382224 - v25;
  a16 = v25 ^ 0x15D7;
  (*(v22 + 54232))(&a15);
  v26 = 1621291457 * (((&a15 | 0x15219E1) + (~&a15 | 0xFEADE61E)) ^ 0x37459879);
  a18 = a13;
  a16 = v26 + 1241;
  LODWORD(a17) = (1122297523 * v18 + 296299868) ^ v26;
  v27 = (*(v22 + 54664))(&a15);
  return (*(v22 + 8 * ((3617 * (a15 == 1906281716)) ^ 0x1729u)))(v27);
}

uint64_t sub_1969D5E94@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, unsigned int a4@<W8>)
{
  v11 = (*(v9 + 4 * v4) ^ a4) + HIDWORD(v7) + (v10 >> (((v5 - 51) | 0x10u) + 112));
  *(v9 + 4 * a3) = v11 + a4 - (a2 & (2 * v11));
  *(v9 + 4 * v4) = HIDWORD(v11) + a4 - 2 * (BYTE4(v11) & 1);
  return (*(v8 + 8 * (v5 ^ (1186 * (a1 + 1 == v6)))))();
}

uint64_t sub_1969D5FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = v8 + v7;
  v19 = v8 + v7 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (0x6AF7234D0CC131D4 - v20) & ((v9 + 1535) - 0x3EA14D34E061C9B7) | (v20 + 0x1508DCB2F33ECE2BLL) & 0x3EA14D34E061BB9ALL;
  v22 = v21 ^ v10;
  v23 = v21 ^ a7;
  v24 = (__ROR8__(v22, 8) + v23) ^ v15;
  v25 = __ROR8__(v24, 8);
  v26 = v24 ^ __ROR8__(v23, 61);
  v27 = (((v25 + v26) | v12) - ((v25 + v26) | v13) + v13) ^ v14;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - (a1 & (2 * (v29 + v28))) + a2) ^ a3;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((a4 & (2 * (v32 + v31))) - (v32 + v31) + a5) ^ a6;
  v34 = v8 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ v16;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x1A2AEBE44253AF03;
  *(v18 + 9) = *(v11 + v34) ^ 0xEC ^ (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * (v19 & 7u)));
  return (*(v17 + 8 * ((6623 * (v34 == 0)) ^ v9)))();
}

int *fp_dh_e4463fdb0404e048df907fd1e37ec44a(int *result)
{
  v1 = 1621291457 * ((-2 - ((result | 0xC723F9C3) + (~result | 0x38DC063C))) ^ 0xECB87A5);
  v2 = result[2] + v1;
  v3 = *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (result[1] - v1 + 1208741521)) + 26);
  if (v2 != 1866249606)
  {
    v3 = 364400985;
  }

  *result = v3;
  return result;
}

uint64_t sub_1969D62A8(uint64_t a1)
{
  v8 = -v1 - v7;
  v10 = (v6 - v7) > 0xF && (v8 + v2 + 18) > 0xF && v8 + v3 + 16 >= (v5 + 647) - 9397 + ((v5 + 1934998394) & 0x8CAA3E7F);
  v11 = v8 + v4 + 20;
  v13 = v10 && v11 > 0xF;
  return (*(a1 + 8 * (((2 * v13) | (16 * v13)) ^ (v5 - 4156))))();
}

uint64_t sub_1969D63A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 | 0x171CACBD) - &a13 + (&a13 & 0xE8E35340)) ^ 0x93B52451);
  a18 = v21 + v20 - 1795306232;
  a15 = v21 + 242687253;
  a13 = v21 ^ 0x80F33AA;
  a16 = a11;
  a17 = &a10;
  v22 = (*(v19 + 8 * (v20 + 3819)))(&a13);
  return (*(v19 + 8 * (((a14 == v18) * ((v20 - 937) ^ 0x1441)) ^ v20)))(v22);
}

uint64_t sub_1969D6460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (*(v70 + 8 * (v69 ^ 0x18BC)))((v69 - 559) ^ 0x9976F8D9 ^ LODWORD(STACK[0x5BC]), 0x100004077774924);
  STACK[0xAE8] = v71;
  if (v71)
  {
    a69 = 1906281716;
  }

  LODWORD(STACK[0xAF4]) = a69;
  return (*(v70 + 8 * (((v71 != 0) * (((v69 - 400) | 0x40C) ^ 0x4D9)) ^ v69)))();
}

uint64_t sub_1969D68D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v11 = *(off_1F0B0BC08 - 4);
  a10 = 1790939281 * (((~&a9 & 0xE74DF14) - (~&a9 | 0xE74DF15)) ^ 0xF6A8FF54) + 3265;
  a9 = v11;
  (*(v10 + 54216))(&a9);
  LODWORD(a9) = 1012216201 * (((&a9 | 0xDC78B28F) - (&a9 & 0xDC78B28F)) ^ 0x58D13A63) - 5147398;
  v12 = (*(v10 + 54696))(&a9);
  return (*(v10 + 8 * ((31 * (HIDWORD(a9) == 1477999485)) ^ 0x144Cu)))(v12);
}

void fp_dh_562d64a201750367937e6282fbd80c88(_DWORD *a1)
{
  if (*(*a1 + 4) - 676339932 >= 0)
  {
    v2 = *(*a1 + 4) - 676339932;
  }

  else
  {
    v2 = 676339932 - *(*a1 + 4);
  }

  v1 = a1[5] + 455395931 * ((2 * (a1 & 0x85804FDB) - a1 + 2055188516) ^ 0xC8EEEE8);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969D6E20@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = v14 + 216;
  v17 = v16 ^ 0x1DC3;
  v18 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 4203);
  v19 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0x10FD));
  v20 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v16 - 3768) - 8;
  v21 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v16 ^ 0x10D7)) - 4;
  v151 = v21;
  v152 = v20;
  v153 = v19;
  HIDWORD(v157) = ((v21[v11[3] ^ 0x6FLL] - 27) | (((*(v18 + (v11[1] ^ 0xBCLL)) - 17) ^ 0x83) << 16) | ((v20[*v11 ^ 0x12] ^ 3) << 24) | (((*(v19 + (v11[2] ^ 0xA7)) + 104) ^ 0x77) << 8)) ^ 0x71717126;
  LODWORD(v156) = ((((*(v18 + (v11[9] ^ ((v16 ^ 0xC3) + 80))) - 17) ^ 0xA8) << 16) | ((v20[v11[8] ^ 3] ^ 0x58) << 24) | (((*(v19 + (v11[10] ^ 0xD7)) + 104) ^ 0xBE) << 8) | (v21[v11[11] ^ 0xEDLL] - 27) ^ 0xB3) ^ 0x71717171;
  HIDWORD(v156) = ((((*(v19 + (v11[14] ^ 0xE2)) + 104) ^ 0xE7) << 8) | (((*(v18 + (v11[13] ^ 0x42)) - 17) ^ 0xBA) << 16) | ((v20[v11[12] ^ 0xC7] ^ 0xB5) << 24) | (v21[v11[15] ^ 0xBBLL] - 27) ^ 0xC2) ^ 0x71717171;
  LODWORD(v157) = ((((*(v18 + (v11[5] ^ 0x84)) - 17) ^ 0x8F) << 16) | (((*(v19 + (v11[6] ^ 0x3FLL)) + 104) ^ 0xD8) << 8) | ((v20[v11[4] ^ 0x37] ^ 0xB0) << 24) | (v21[v11[7] ^ 5] - 27)) ^ 0x717171C6;
  HIDWORD(a5) = (((a2 ^ 0xCE9331CA) - 1047006795) ^ ((a2 ^ 0x8AC0E33D) - 2050743484) ^ ((a2 ^ 0x31DEBCEB) + 1054506134)) + 115198325;
  *(v15 - 164) = 0;
  HIDWORD(a11) = 0;
  v22 = 8 * (v13 & 7);
  v23 = (__ROR8__(v13, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  v155 = 1409 * (v16 ^ 0x1080u);
  v24 = __ROR8__(v23 ^ (v155 - 0x749594F881B6AFF2), 8);
  v23 ^= 0xE788DD3012A091E0;
  v25 = (v24 + v23) ^ 0xFB9714BECA2C68E9;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xBD8F7CFD1E07971BLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFD8B533ED96A4334;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8) + v30;
  v32 = v31 ^ __ROR8__(v30, 61);
  *(&v33 + 1) = v32 ^ 0xAC7DA0564C1838BLL;
  *&v33 = v32;
  v34 = (__ROR8__(v31 ^ 0xAC7DA0564C1838BLL, 8) + (v32 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v35 = v34 ^ (v33 >> 61);
  *&v33 = __ROR8__(v34, 8);
  v36 = (((((v35 ^ v33) + 2 * (v35 & v33)) ^ 0x8E4D6ECA343D275ELL ^ __ROR8__(v35, 61)) + __ROR8__(((v35 ^ v33) + 2 * (v35 & v33)) ^ 0x8E4D6ECA343D275ELL, 8)) ^ 0x51BB4171AFEDC628) >> v22;
  v37 = (__ROR8__(v13 + 8, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  v38 = v37 ^ 0x8B6A6B077E496091;
  v37 ^= 0xE788DD3012A091E0;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0xFB9714BECA2C68E9;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (v40 + __ROR8__(v39, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (v42 + __ROR8__(v41, 8)) ^ 0xFD8B533ED96A4334;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xAC7DA0564C1838BLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x6190A7627E7D0B79;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x8E4D6ECA343D275ELL;
  v50 = (__ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61))) ^ 0x51BB4171AFEDC628;
  v51 = v50 >> v22;
  v52 = *v13;
  v53 = v36 + 2 * (v50 << (v22 ^ 0x3Fu));
  v54 = (__ROR8__(v13 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x2D9C56C6ED9D3E2ELL;
  *&v33 = __ROR8__(v54 ^ 0x8B6A6B077E496091, 8);
  v54 ^= 0xE788DD3012A091E0;
  v55 = (v33 + v54) ^ 0xFB9714BECA2C68E9;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (v56 + __ROR8__(v55, 8)) ^ 0xBD8F7CFD1E07971BLL;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (v58 + __ROR8__(v57, 8)) ^ 0xFD8B533ED96A4334;
  *&v33 = __ROR8__(v58, 61);
  v60 = v59 ^ v33;
  v61 = (v59 ^ v33) + (v59 >> 8) + (v59 << 56);
  v62 = v61 ^ __ROR8__(v60, 61);
  *(&v33 + 1) = v62 ^ 0xAC7DA0564C1838BLL;
  *&v33 = v62;
  v63 = (__ROR8__(v61 + 0xAC7DA0564C1838BLL - ((2 * v61) & 0x158FB40AC9830716), 8) + (v62 ^ 0xAC7DA0564C1838BLL)) ^ 0x6190A7627E7D0B79;
  v64 = v63 ^ (v33 >> 61);
  v65 = (v64 + __ROR8__(v63, 8)) ^ 0x8E4D6ECA343D275ELL;
  v66 = v51 + 2 * (((__ROR8__(v65, 8) + (v65 ^ __ROR8__(v64, 61))) ^ 0x51BB4171AFEDC628) << (v22 ^ 0x3Fu));
  LODWORD(v36) = ((v20[v36 ^ 0x43] ^ 0xEC) << 24) | (((*(v18 + (BYTE1(v53) ^ 0x70)) - 17) ^ 0x92) << 16) | (((*(v19 + (BYTE2(v53) ^ 0x48)) + 104) ^ 0xE4) << 8) | (v21[BYTE3(v53) ^ 0x44] - 27) ^ 6;
  LODWORD(v64) = ((v20[BYTE4(v53) ^ 0xC0] ^ 0x7A) << 24) | (((*(v18 + (BYTE5(v53) ^ 0x47)) - 17) ^ 0x27) << 16) | (((*(v19 + (BYTE6(v53) ^ 0x87)) + 104) ^ 0x6B) << 8) | (v21[HIBYTE(v53) ^ 0x89] - 27) ^ 0x94;
  LODWORD(v53) = ((v20[v51 ^ 0x13] ^ 0x4B) << 24) | (((*(v18 + (BYTE1(v66) ^ 0x67)) - 17) ^ 0x2F) << 16) | (((*(v19 + (BYTE2(v66) ^ 0x2FLL)) + 104) ^ 0xBF) << 8) | (v21[BYTE3(v66) ^ 0xAFLL] - 27) ^ 0x69;
  v67 = ((v20[BYTE4(v66) ^ 0xE7] ^ 0x7B) << 24) | (((*(v18 + (BYTE5(v66) ^ 0xA3)) - 17) ^ 0x37) << 16) | (((*(v19 + (BYTE6(v66) ^ 0xB7)) + 104) ^ 0x10) << 8) | (v21[HIBYTE(v66) ^ 0x64] - 27) ^ 0xCC;
  v68 = ((*(v19 + (v13[2] ^ 0xA8)) + 104) ^ 0x79) << 8;
  LOBYTE(v66) = v21[v13[15] ^ 0xEELL] - 27;
  LODWORD(v51) = (v21[v13[7] ^ 0x2ALL] - 27) ^ 0xE | (((*(v18 + (v13[5] ^ 0x43)) - 17) ^ 0xD) << 16);
  *(v15 - 184) = 4;
  LODWORD(v21) = v20[v13[4] ^ 0x2DLL] ^ 0x56;
  *(v15 - 176) = 10;
  LODWORD(v51) = v51 & 0xFFFF00FF | (v21 << 24) | (((*(v19 + (v13[6] ^ 0x76)) + 104) ^ 0x69) << 8);
  LODWORD(v21) = v53 ^ v156 ^ ((((*(v19 + (v13[10] ^ 0x9ELL)) + 104) ^ 0xF) << 8) | (((*(v18 + (v13[9] ^ 0xDDLL)) - 17) ^ 0xE4) << 16) | ((v20[v13[8] ^ 0x79] ^ 0xC4) << 24) | (v151[v13[11] ^ 0x6BLL] - 27) ^ 0xCE);
  LODWORD(v53) = v67 ^ HIDWORD(v156) ^ (v66 ^ 0xD8 | ((v20[v13[12] ^ 0x6ELL] ^ 0x18) << 24) | (((*(v18 + (v13[13] ^ 0x16)) - 17) ^ 0x45) << 16) | (((*(v19 + (v13[14] ^ 0x8CLL)) + 104) ^ 0xBF) << 8));
  v69 = (v64 ^ v157 ^ v51) - ((2 * (v64 ^ v157 ^ v51)) & 0x96B25E16) - 883347701;
  LODWORD(v66) = v21 - ((2 * v21) & 0x1B895478) - 1916491204;
  LODWORD(v36) = HIDWORD(v157) ^ (v68 & 0xFF00FF00 | ((v20[v52 ^ 0xF9] ^ 0xD9) << 24) | (((*(v18 + (v13[1] ^ 0x9BLL)) - 17) ^ 0x4A) << 16) | (v151[v13[3]] - 27) ^ 0xEB) ^ 0xCD3D2C8D ^ v36;
  v70 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD0F)) - 8;
  v71 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD9A));
  LODWORD(v51) = *(v71 + 4 * ((v53 ^ 0xD14400D5) >> 16));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  LODWORD(v51) = v69 ^ 0xC8E80470;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v36)];
  v72 = v69 ^ 0x70;
  v73 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xF1E)) - 12;
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v72];
  v74 = v21 + 342877764 - ((2 * v21) & 0x28DFCC88);
  LODWORD(v21) = *(v71 + 4 * (BYTE2(v66) ^ 0x58u));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  v75 = *(v71 + 4 * BYTE2(v51));
  LODWORD(v21) = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v36];
  DWORD1(v33) = v75 ^ 0xFCEAFB;
  LODWORD(v33) = v75 ^ 0x58000000;
  v76 = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * (v53 ^ 0xD5)];
  v77 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xD50)) - 8;
  v78 = (v76 + 342877764 - ((2 * v76) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v36) = *(v71 + 4 * BYTE2(v36));
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  LODWORD(v66) = v66 ^ 0x163DBF4A;
  LODWORD(v36) = *&v73[4 * v66] ^ *&v70[4 * BYTE1(v51)] ^ 0xC249FAB3 ^ (v33 >> 25);
  LODWORD(v51) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  v79 = BYTE1(v53);
  LODWORD(v53) = (v36 + 342877764 - ((2 * v36) & 0x28DFCC88)) ^ *&v77[4 * ((v53 ^ 0xD14400D5) >> 24)];
  LODWORD(v64) = *&v77[4 * BYTE3(v66)] ^ 0x38A602A ^ v74;
  LODWORD(v36) = *&v70[4 * v79] ^ 0xEB939729 ^ (v51 - 159836115 - ((2 * v51) & 0xECF2305A));
  LODWORD(v66) = *&v70[4 * BYTE1(v66)] ^ 0x9BA75E27 ^ (v78 - 159836115 - ((2 * v78) & 0xECF2305A));
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  v80 = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v66];
  v81 = *(v71 + 4 * (BYTE2(v53) ^ 0x4Bu));
  LODWORD(v51) = v53 ^ 0xA12E828A;
  v82 = (v80 + 342877764 - ((2 * v80) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v21) = *&v77[4 * BYTE3(v66)] ^ *&v73[4 * (v53 ^ 0x8A)] ^ 0x205F04DA;
  DWORD1(v33) = v81 ^ 0xFCEAFB;
  LODWORD(v33) = v81 ^ 0x58000000;
  LODWORD(v53) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  v83 = v21 - 159836115 - ((2 * v21) & 0xECF2305A);
  LODWORD(v21) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v66) = (v53 - 159836115 - ((2 * v53) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v66)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v64];
  v84 = *(v71 + 4 * BYTE2(v36));
  LODWORD(v53) = v66 + 875618974 - ((2 * v66) & 0x6861C53C);
  DWORD1(v33) = v84 ^ 0xFCEAFB;
  LODWORD(v33) = v84 ^ 0x58000000;
  v85 = *&v70[4 * BYTE1(v64)];
  LODWORD(v20) = *&v73[4 * v36];
  LODWORD(v36) = *&v70[4 * BYTE1(v36)] ^ 0x5157E554 ^ (v21 - 159836115 - ((2 * v21) & 0xECF2305A));
  LODWORD(v64) = *&v70[4 * BYTE1(v51)] ^ 0xF39607F4 ^ (v82 - 159836115 - ((2 * v82) & 0xECF2305A));
  LODWORD(v66) = v85 ^ v83 ^ (v33 >> 25) ^ 0xD09CD387;
  v86 = *(v71 + 4 * BYTE2(v36));
  DWORD1(v33) = v86 ^ 0xFCEAFB;
  LODWORD(v33) = v86 ^ 0x58000000;
  v87 = v33 >> 25;
  LODWORD(v21) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v51) = v20 ^ 0x38852484 ^ v53;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v64)];
  v88 = (v87 + 875618974 - ((2 * v87) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * (v20 ^ 0x84 ^ v53)];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v51));
  v89 = v21 + 342877764 - ((2 * v21) & 0x28DFCC88);
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v21) = v33 >> 25;
  LODWORD(v20) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v20) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  LODWORD(v20) = (v20 + 875618974 - ((2 * v20) & 0x6861C53C)) ^ *&v73[4 * v36];
  v90 = *&v77[4 * BYTE3(v51)] ^ (v88 + 342877764 - ((2 * v88) & 0x28DFCC88));
  LODWORD(v21) = (v21 - 159836115 - ((2 * v21) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v36)];
  v91 = *&v77[4 * BYTE3(v64)];
  LODWORD(v64) = *&v70[4 * BYTE1(v51)] ^ 0x4CF109BD ^ (v20 - 159836115 - ((2 * v20) & 0xECF2305A));
  LODWORD(v53) = *&v77[4 * BYTE3(v36)] ^ 0x1E2C8CC3 ^ v89;
  v92 = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ v91;
  v93 = *&v70[4 * BYTE1(v66)] ^ 0x87E22ACD ^ (v90 - 159836115 - ((2 * v90) & 0xECF2305A));
  LODWORD(v36) = *(v71 + 4 * BYTE2(v93));
  LODWORD(v51) = v92 ^ 0x779B4D13;
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  v94 = v33 >> 25;
  LODWORD(v36) = *(v71 + 4 * BYTE2(v53));
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  LODWORD(v66) = *&v73[4 * (v92 ^ 0x13)] ^ 0xC249FAB3 ^ (v33 >> 25) ^ *&v70[4 * BYTE1(v64)];
  LODWORD(v36) = *&v73[4 * v53] ^ *&v70[4 * BYTE1(v93)];
  LODWORD(v66) = (v66 + 342877764 - ((2 * v66) & 0x28DFCC88)) ^ *&v77[4 * HIBYTE(v93)];
  v95 = *&v70[4 * BYTE1(v53)] ^ (v94 - 159836115 - ((2 * v94) & 0xECF2305A));
  v96 = *(v71 + 4 * (BYTE2(v92) ^ 0xFEu));
  DWORD1(v33) = v96 ^ 0xFCEAFB;
  LODWORD(v33) = v96 ^ 0x58000000;
  LODWORD(v21) = ((v36 ^ 0xC249FAB3) + 342877764 - 2 * ((v36 ^ 0xC249FAB3) & 0x146FE64C ^ v36 & 8)) ^ *&v77[4 * BYTE3(v64)] ^ (v33 >> 25);
  v97 = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v97 ^ 0xFCEAFB;
  LODWORD(v33) = v97 ^ 0x58000000;
  v98 = *&v73[4 * v93] ^ *&v70[4 * BYTE1(v51)] ^ 0xC249FAB3 ^ (v33 >> 25);
  v99 = *&v77[4 * BYTE3(v51)] ^ (v95 + 342877764 - ((2 * v95) & 0x28DFCC88));
  LODWORD(v51) = *&v73[4 * v64];
  LODWORD(v64) = *&v77[4 * BYTE3(v53)] ^ 0xA7C5FDB1 ^ (v98 + 342877764 - ((2 * v98) & 0x28DFCC88));
  v100 = v51 ^ 0x3E0B5BBF ^ (v99 + 875618974 - ((2 * v99) & 0x6861C53C));
  LODWORD(v51) = v21 ^ 0x810955F6;
  v101 = *(v71 + 4 * (BYTE2(v21) ^ 0x6Cu));
  LODWORD(v21) = *(v71 + 4 * (BYTE2(v66) ^ 0x70u));
  DWORD1(v33) = v101 ^ 0xFCEAFB;
  LODWORD(v33) = v101 ^ 0x58000000;
  v102 = v33 >> 25;
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * ((*&v77[4 * BYTE3(v53)] ^ 0xFDB1 ^ (v98 - 6588 - ((2 * v98) & 0xCC88))) >> 8)];
  v103 = *&v73[4 * (v77[4 * BYTE3(v53)] ^ 0xB1 ^ (v98 + 68 - ((2 * v98) & 0x88)))] ^ 0x205F04DA ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v21) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * HIBYTE(v100)];
  LODWORD(v66) = v66 ^ 0x71153228;
  v104 = *&v73[4 * v66] ^ (v102 + 875618974 - ((2 * v102) & 0x6861C53C));
  v105 = (v104 + 342877764 - ((2 * v104) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  LODWORD(v20) = *&v70[4 * BYTE1(v51)] ^ *&v77[4 * BYTE3(v66)] ^ 0xE216FE69;
  LODWORD(v64) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v64 ^ 0xFCEAFB;
  LODWORD(v33) = v64 ^ 0x58000000;
  v106 = v33 >> 25;
  LODWORD(v64) = *(v71 + 4 * BYTE2(v100));
  DWORD1(v33) = v64 ^ 0xFCEAFB;
  LODWORD(v33) = v64 ^ 0x58000000;
  LODWORD(v64) = (v103 - 159836115 - ((2 * v103) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v66)] ^ 0xD2A47957 ^ (v33 >> 25);
  LODWORD(v53) = *&v70[4 * BYTE1(v100)] ^ 0xF283AE2B ^ (v105 - 159836115 - ((2 * v105) & 0xECF2305A));
  LODWORD(v66) = *&v73[4 * v51];
  LODWORD(v51) = *&v73[4 * v100] ^ (v20 + 875618974 - ((2 * v20) & 0x6861C53C)) ^ v106 ^ 0x9DDF10C0;
  LODWORD(v20) = *(v71 + 4 * BYTE2(v53));
  LODWORD(v66) = v66 ^ 0x243661B2 ^ (v21 + 875618974 - ((2 * v21) & 0x6861C53C));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  v107 = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v107 ^ 0xFCEAFB;
  LODWORD(v33) = v107 ^ 0x58000000;
  v108 = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  v109 = (v108 + 875618974 - ((2 * v108) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  v110 = *&v73[4 * v51] ^ *&v70[4 * BYTE1(v66)] ^ (v33 >> 25);
  LODWORD(v20) = v110 ^ 0xC249FAB3;
  LODWORD(v36) = (v110 ^ 0xC249FAB3) & 0x146FE64C ^ v110 & 8;
  v111 = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v111 ^ 0xFCEAFB;
  LODWORD(v33) = v111 ^ 0x58000000;
  LODWORD(v36) = v20 + 342877764 - 2 * v36;
  LODWORD(v51) = *&v70[4 * BYTE1(v51)] ^ 0xE216FE69 ^ *&v77[4 * BYTE3(v64)] ^ (v33 >> 25);
  LODWORD(v66) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  LODWORD(v21) = v51 + 875618974 - ((2 * v51) & 0x6861C53C);
  LODWORD(v20) = *&v73[4 * v53];
  LODWORD(v51) = *&v70[4 * BYTE1(v64)] ^ 0xC653C9DB ^ (v66 - 159836115 - ((2 * v66) & 0xECF2305A));
  LODWORD(v64) = *&v70[4 * BYTE1(v53)] ^ 0x93159A41 ^ (v109 - 159836115 - ((2 * v109) & 0xECF2305A));
  LODWORD(v53) = *&v77[4 * BYTE3(v53)] ^ 0xFC4924AA ^ v36;
  v112 = *(v71 + 4 * BYTE2(v64));
  LODWORD(v66) = v20 ^ 0x7FBAB8A9 ^ v21;
  LODWORD(v36) = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v112 ^ 0xFCEAFB;
  LODWORD(v33) = v112 ^ 0x58000000;
  LODWORD(v21) = (v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A);
  DWORD1(v33) = v36 ^ 0xFCEAFB;
  LODWORD(v33) = v36 ^ 0x58000000;
  v113 = v33 >> 25;
  LODWORD(v36) = v21 ^ *&v70[4 * BYTE1(v51)];
  v114 = *&v73[4 * v51] ^ *&v70[4 * BYTE1(v64)] ^ 0xC249FAB3;
  LODWORD(v36) = (v36 + 342877764 - ((2 * v36) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v66)];
  LODWORD(v21) = *(v71 + 4 * BYTE2(v53));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = ((v33 >> 25) + 875618974 - ((2 * (v33 >> 25)) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v36) = (v36 + 875618974 - ((2 * v36) & 0x6861C53C)) ^ *&v73[4 * v53];
  v115 = *&v73[4 * v66] ^ (v113 + 875618974 - ((2 * v113) & 0x6861C53C));
  LODWORD(v51) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v21) = (v115 - 159836115 - ((2 * v115) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v53)];
  LODWORD(v20) = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v20 ^ 0xFCEAFB;
  LODWORD(v33) = v20 ^ 0x58000000;
  v116 = *&v70[4 * BYTE1(v66)];
  LODWORD(v66) = *&v77[4 * BYTE3(v64)] ^ 0x5B724F4F ^ (v21 + 342877764 - ((2 * v21) & 0x28DFCC88));
  LODWORD(v64) = (v114 + 342877764 - ((2 * v114) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v53)] ^ (v33 >> 25) ^ 0x6168A23E;
  LODWORD(v51) = v116 ^ 0x55B8C5CE ^ (v51 - 159836115 - ((2 * v51) & 0xECF2305A));
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v21) = v33 >> 25;
  v117 = *(v71 + 4 * BYTE2(v66));
  DWORD1(v33) = v117 ^ 0xFCEAFB;
  LODWORD(v33) = v117 ^ 0x58000000;
  v118 = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v51)];
  LODWORD(v21) = (v21 + 875618974 - ((2 * v21) & 0x6861C53C)) ^ *&v73[4 * v66];
  v119 = *&v73[4 * v51] ^ 0xC249FAB3 ^ *&v70[4 * BYTE1(v66)];
  LODWORD(v21) = (v21 - 159836115 - ((2 * v21) & 0xECF2305A)) ^ *&v70[4 * ((v36 ^ 0x9654) >> 8)];
  v120 = (v118 + 875618974 - ((2 * v118) & 0x6861C53C)) ^ *&v73[4 * v64];
  v121 = v120 + 342877764 - ((2 * v120) & 0x28DFCC88);
  v122 = *(v71 + 4 * BYTE2(v51));
  DWORD1(v33) = v122 ^ 0xFCEAFB;
  LODWORD(v33) = v122 ^ 0x58000000;
  LODWORD(v66) = *&v77[4 * BYTE3(v66)] ^ *&v73[4 * (v36 ^ 0x54)] ^ 0x205F04DA ^ (v33 >> 25);
  v123 = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v51)];
  LODWORD(v51) = *(v71 + 4 * (BYTE2(v36) ^ 0xFEu));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  LODWORD(v21) = *&v77[4 * BYTE3(v64)];
  LODWORD(v20) = (v66 - 159836115 - ((2 * v66) & 0xECF2305A)) ^ *&v70[4 * BYTE1(v64)];
  LODWORD(v64) = *&v77[4 * BYTE3(v36)] ^ 0x6C6B9CF9 ^ v121;
  LODWORD(v66) = v123 ^ 0x62C41678;
  LODWORD(v36) = (v119 + 342877764 - ((2 * v119) & 0x28DFCC88)) ^ v21 ^ (v33 >> 25) ^ 0xCB50F71C;
  LODWORD(v51) = *(v71 + 4 * (BYTE2(v20) ^ 0x80u));
  DWORD1(v33) = v51 ^ 0xFCEAFB;
  LODWORD(v33) = v51 ^ 0x58000000;
  v124 = ((v33 >> 25) - 159836115 - ((2 * (v33 >> 25)) & 0xECF2305A)) ^ *&v70[4 * ((v123 ^ 0x1678) >> 8)];
  v125 = (v124 + 875618975 + ~((2 * v124) & 0x6861C53C)) ^ *&v73[4 * v36];
  LODWORD(v21) = *(v71 + 4 * BYTE2(v64));
  DWORD1(v33) = v21 ^ 0xFCEAFB;
  LODWORD(v33) = v21 ^ 0x58000000;
  LODWORD(v20) = v20 ^ 0xFFE590EC;
  LODWORD(v21) = *&v70[4 * BYTE1(v20)] ^ 0xC249FAB3 ^ *&v73[4 * (v123 ^ 0x78)] ^ (v33 >> 25);
  v126 = *(v71 + 4 * (BYTE2(v123) ^ 0xA1u));
  DWORD1(v33) = v126 ^ 0xFCEAFB;
  LODWORD(v33) = v126 ^ 0x58000000;
  v127 = ((v33 >> 25) + 342877764 - ((2 * (v33 >> 25)) & 0x28DFCC88)) ^ *&v77[4 * (v20 >> 24)];
  v128 = (v125 + 342877764 - ((2 * v125) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v64)];
  v129 = (v127 + 875618974 - ((2 * v127) & 0x6861C53C)) ^ *&v73[4 * v64];
  LODWORD(v64) = *&v70[4 * BYTE1(v64)] ^ *&v77[4 * BYTE3(v66)] ^ (*(v71 + 4 * BYTE2(v36)) << 7) ^ (*(v71 + 4 * BYTE2(v36)) >> 25) ^ 0x9C6383C5;
  LODWORD(v71) = (v21 + 342877764 - ((2 * v21) & 0x28DFCC88)) ^ *&v77[4 * BYTE3(v36)];
  LODWORD(v66) = *&v73[4 * v20];
  LODWORD(v73) = BYTE1(v36);
  LODWORD(v36) = (v64 + 875618975 + ~((2 * v64) & 0x6861C53C)) ^ v66;
  LODWORD(v66) = *&v70[4 * v73];
  LODWORD(v73) = v71 ^ 0xF4B67A5B;
  LODWORD(v51) = v128 ^ 0xC5E485D;
  LOBYTE(v64) = v36 ^ 0x47;
  v130 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xC7A)) - 4;
  v131 = *&v130[4 * (HIBYTE(v128) ^ 0x6A)];
  DWORD1(v33) = v131 ^ 0x93921;
  LODWORD(v33) = v131 ^ 0x76000000;
  LODWORD(v66) = v66 ^ 0x5D479BEB ^ (v129 - 159836115 - ((2 * v129) & 0xECF2305A));
  v132 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xDE7)) - 12;
  LODWORD(v21) = *&v132[4 * ((v71 ^ 0x7A5B) >> 8)];
  v133 = (*&v132[4 * (((v36 ^ 0xD247) >> 8) ^ 0x1C)] + 737362981) ^ (v33 >> 24);
  v134 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3260) - 4;
  LODWORD(v21) = (v21 - ((2 * v21 + 400984138) & 0x26CE1392) + 1062882798) ^ *&v134[4 * v51];
  v135 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xDFA));
  v136 = (v133 + 325519817 - ((2 * v133) & 0x26CE1392)) ^ *&v134[4 * (v71 ^ 0x8F)];
  v137 = *(v135 + 4 * ((v71 ^ 0xF4B67A5B) >> 16)) ^ (*&v132[4 * BYTE1(v51)] - ((2 * *&v132[4 * BYTE1(v51)] + 1474725962) & 0x4E4232B4) + 1393843583);
  LODWORD(v71) = *&v130[4 * BYTE3(v66)];
  DWORD1(v33) = v71 ^ 0x93921;
  LODWORD(v33) = v71 ^ 0x76000000;
  v138 = v36 ^ 0xF77FBA1D;
  LODWORD(v36) = (v21 + 656480602 - ((2 * v21) & 0x4E4232B4)) ^ *(v135 + 4 * ((v36 ^ 0xF77FBA1D) >> 16)) ^ (v33 >> 24);
  LODWORD(v51) = *&v134[4 * (v64 ^ 0x8E)] ^ *(v135 + 4 * BYTE2(v51)) ^ (*&v132[4 * BYTE1(v66)] + 737362981);
  LODWORD(v64) = *&v130[4 * HIBYTE(v138)];
  DWORD1(v33) = v64 ^ 0x93921;
  LODWORD(v33) = v64 ^ 0x76000000;
  LODWORD(v64) = *(v135 + 4 * BYTE2(v66)) ^ (v136 + 656480602 - ((2 * v136) & 0x4E4232B4));
  LODWORD(v77) = ((v137 ^ (v33 >> 24)) + 325519817 - ((2 * (v137 ^ (v33 >> 24))) & 0x26CE1392)) ^ *&v134[4 * v66];
  LODWORD(v66) = *&v130[4 * (v73 >> 24)];
  v139 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v17 ^ 0xF68)) - 8;
  v12[1] = v139[((v64 ^ 0xBD206F14) >> 16) ^ 0xC1] ^ 0x5C;
  v140 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3218) - 8;
  v141 = v51 ^ (v66 << 8) ^ BYTE3(v66);
  v142 = v141 ^ 0x45A4645Cu;
  v12[11] = (v140[v77 ^ 0x7ALL] + 101) ^ 0x21;
  v143 = v141 ^ 0x3275756u;
  v12[7] = (v140[v36 ^ 0xE7] + 101) ^ 0x35;
  v12[13] = v139[BYTE2(v142) ^ 0xADLL] ^ 0x72;
  v144 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3293) - 12;
  v12[14] = ((BYTE1(v143) ^ 0x1E) + v144[BYTE1(v143) ^ 0xC2] - 124) ^ 0x9C;
  v12[3] = (v140[v64 ^ 0x6ALL] + 101) ^ 0x67;
  v12[2] = ((BYTE1(v64) ^ 0xDE) + v144[BYTE1(v64) ^ 2] - 124) ^ 0x1E;
  v12[15] = (v140[v141 ^ 0x94] + 101) ^ 0x40;
  v12[6] = ((BYTE1(v36) ^ 4) + v144[BYTE1(v36) ^ 0xD8] - 124) ^ 0xB7;
  v145 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v17 - 3087) - 4;
  *v12 = v145[BYTE3(v64) ^ 0x9BLL] ^ 0xA7;
  v12[12] = v145[v143 >> 24] ^ 0x74;
  v12[5] = v139[((v36 ^ 0xC7D34C0C) >> 16) ^ 0x35] ^ 0x40;
  v12[9] = v139[((v77 ^ 0x80B39E4B) >> 16) ^ 5] ^ 0x1D;
  v12[*(v15 - 184)] = v145[BYTE3(v36) ^ 0xB1] ^ 0xAC;
  v12[*(v15 - 176)] = ((BYTE1(v77) ^ 0x87) + v144[BYTE1(v77) ^ 0x5BLL] - 124) ^ 0x43;
  v146 = v145[(v77 >> 24) ^ 0xBBLL];
  v147 = *(v15 - 164);
  v12[8] = v146 ^ 0x83;
  v148 = (HIDWORD(a5) < 0x816777D8) ^ ((v147 - 2123925528) < 0x816777D8);
  v149 = (v147 - 2123925528) < HIDWORD(a5);
  if (v148)
  {
    v149 = HIDWORD(a5) < 0x816777D8;
  }

  return (*(a1 + 8 * ((6147 * v149) ^ v17)))(v148, HIDWORD(a5), 8, v147, 1476395008, 167, v142, 222, a3, v12, a5, v151, v152, v153, v18, a1, a11, v155, v156, v157, 13, 14, 1, 11, 3);
}

void fp_dh_86e2adcad84accda1b024ccf27d2a004(_DWORD *a1)
{
  v1 = *a1 + 1575331711 * ((-2 - ((a1 | 0x759404E7) + (~a1 | 0x8A6BFB18))) ^ 0xE6306E1A);
  __asm { BRAA            X10, X17 }
}

void sub_1969D8E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, int a17, int a18, _DWORD *a19, unsigned int a20, unsigned int a21)
{
  v25 = 1825732043 * (((&a16 | 0xBB4EC92D) + (~&a16 | 0x44B136D2)) ^ 0xBBD89A1B);
  a17 = v25 + 1865116605;
  a18 = (v24 + 4718) ^ v25;
  (*(v22 + 8 * (v24 + 5926)))(&a16);
  v26 = 489239129 * (&a16 ^ 0xB9282336);
  a20 = v26 + 426488402;
  a21 = v26 ^ 0x99603FFC;
  a17 = v26 + v24 + 3259;
  a16 = &a12;
  a19 = v23;
  (*(v22 + 8 * (v24 ^ 0x195A)))(&a16);
  v27 = v21[1];
  *v21 += a12;
  v21[1] = v27 + a13;
  v28 = v21[3];
  v21[2] += a14;
  v21[3] = v28 + a15;
  a19 = v21;
  a16 = v23;
  a17 = v24 + 1068996913 * (((&a16 | 0x7A9110D) + (~&a16 | 0xF856EEF2)) ^ 0xD247F09D) + 1738598562;
  (*(v22 + 8 * (v24 + 5914)))(&a16);
  JUMPOUT(0x1969D8FC8);
}

uint64_t fp_dh_8727a287289976df26426e77d5ec12ff(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = 654144011 * ((-2 - ((a1 | 0xD8E7D8F6) + (~a1 | 0x27182709))) ^ 0xBCC5A95);
  v3 = *(a1 + 4) + v2;
  v4 = *(a1 + 8);
  v5 = 1385229187 * (*(a1 + 16) ^ v2) - 2118216123;
  v6 = 489239129 * ((710952839 - (&v8 | 0x2A604787) + (&v8 | 0xD59FB878)) ^ 0x6CB79B4E);
  v10 = v5 ^ ((v5 ^ 0xCD56D3D8) + 2085333504) ^ ((v5 ^ 0x46BC35A4) - 140423292) ^ ((v5 ^ 0xB9E79C5B) + 150660733) ^ ((v5 ^ 0x7CEFFFFF) - 839744039) ^ v6 ^ 0xAFE037F7;
  v11 = v3 + v6 - 418961162;
  v9 = v4;
  v8 = v6 + 30873476;
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x18F8EF1F)) + 8 * (v3 ^ 0x18F8F620) - 4))(&v8);
  *a1 = v12;
  return result;
}

void sub_1969D942C()
{
  v3 = *(v0 + 16);
  v2 = (v0 + 16);
  v1[16] = *v1 ^ v3;
  v4 = v1 + 16;
  v4[1] = *(v4 - 15) ^ v2[1];
  v4[2] = *(v4 - 14) ^ v2[2];
  v4[3] = *(v4 - 13) ^ v2[3];
  v4[4] = *(v4 - 12) ^ v2[4];
  v4[5] = *(v4 - 11) ^ v2[5];
  v4[6] = *(v4 - 10) ^ v2[6];
  v4[7] = *(v4 - 9) ^ v2[7];
  v4[8] = *(v4 - 8) ^ v2[8];
  v4[9] = *(v4 - 7) ^ v2[9];
  v4[10] = *(v4 - 6) ^ v2[10];
  v4[11] = *(v4 - 5) ^ v2[11];
  v4[12] = *(v4 - 4) ^ v2[12];
  v4[13] = *(v4 - 3) ^ v2[13];
  v4[14] = *(v4 - 2) ^ v2[14];
  v4[15] = *(v4 - 1) ^ v2[15];
  JUMPOUT(0x1969D9640);
}

void fp_dh_92ea1664e8e073594bfcc4623b11aab8(_DWORD *a1)
{
  v1 = *a1 ^ (1575331711 * ((-2 - ((a1 | 0x447E73FC) + (~a1 | 0xBB818C03))) ^ 0xD7DA1901));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969D9E64()
{
  v5 = (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCELL) << 24) | (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCDLL) << 16) | (*(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCCLL) << 8);
  v6 = *(((2 * (v0 + 6)) & 0x7F778277E5E3FF9CLL) + ((v0 + 6) ^ 0x7FBBC13BF2F1FFCELL) + v1 - 0x7FBBC13BF2F1FFCBLL);
  return (*(v4 + 8 * ((100 * ((((v5 | v6) - 1720256293 - 2 * ((v5 | v6) & 0x1976F8DF ^ v6 & 4)) ^ 0x9976F8DB) + v0 + 10 > v2)) ^ v3)))();
}

void sub_1969D9F64(char a1@<W3>, char a2@<W4>, unsigned __int8 *a3@<X8>)
{
  v5 = v3 ^ 0x1238;
  v6 = a3;
  LODWORD(STACK[0x340]) = 0;
  v7 = *(v4 + 8 * (v5 - 4909)) - 8;
  v8 = *(v7 + (a3[13] ^ 0x7DLL));
  v9 = v8 ^ (v8 >> 5) ^ (v8 >> 3);
  v10 = *(v4 + 8 * (v5 - 5153)) - 8;
  v11 = *(v10 + (v6[4] ^ 0x50));
  v12 = *(v10 + (*v6 ^ 0xB6));
  v13 = *(v4 + 8 * (v5 ^ 0x17A4)) - 8;
  v14 = v5 - 217 + *(v13 + (v6[7] ^ 0x8CLL)) + 122;
  v15 = v14 & 0xFFCD ^ 0xFF85;
  v16 = v14 ^ (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 0x42) & (2 * ((v14 ^ 2) & (2 * (((2 * (v14 & 3)) ^ 0xE) & (v14 ^ 2) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v17 = ((v12 >> 7) | (2 * v12)) ^ 0x7D;
  v18 = (v17 >> 1) | (v17 << 7);
  v19 = *(v7 + (v6[5] ^ 0x30));
  v20 = (v17 >> 3) & 0x1A;
  v21 = (v16 & 0x1FE ^ 0xFFFFFE03) & ((((v11 >> 2) & 0x1A ^ v11) << 24) ^ 0xE1909A86) | v16 & 0x79;
  v22 = v20 ^ v18;
  v23 = *(v4 + 8 * (v5 ^ 0x142E)) - 4;
  v24 = v6[6];
  LOBYTE(v5) = *(v23 + (v24 ^ 0x5E));
  LOBYTE(v16) = ((v24 ^ 0xCE) - 107) ^ ((v24 ^ 0xA4) - 1) ^ ((v24 ^ a1) + 98);
  LOBYTE(v20) = v16 - (((v5 ^ v24 ^ 0x59) + 91) ^ ((v5 ^ v24 ^ 0x43) + 65) ^ ((v5 ^ v24 ^ 0x55) + 87)) + 112;
  v25 = v20 & 0x1B ^ 0xA5;
  v26 = 46 - (((v5 ^ 0x77) - 119) ^ ((v5 ^ 0xBE) + 66) ^ ((v5 ^ 0xD7) + 41));
  v27 = v26 & 0x42 ^ 0x4F;
  v28 = v26 ^ a2;
  LOBYTE(v5) = v26 ^ v5 ^ v20 ^ (2 * (v25 ^ v27 ^ v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & (2 * (v28 & 0x36 ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ (v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * ((v20 ^ 0x50) & (2 * (((2 * v20) & 0x22 ^ 0x4A) & v20 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))));
  LOBYTE(v16) = v16 + (((v5 ^ 0x3B) + 46) ^ ((v5 ^ 0x14) + 3) ^ ((v5 ^ 0x68) + 127)) + 4;
  LOBYTE(v5) = v16 & 6 ^ 0xD4;
  v29 = (v16 ^ (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * ((v16 ^ 0x1C) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5))) << 8;
  v30 = (*(v23 + (v6[2] ^ 0x4ELL)) ^ v6[2]) << 8;
  v31 = (v30 ^ 0xFFFFE7FF) & ((v22 << 24) ^ 0x2124A8B6) | v30 & 0x5700;
  v32 = (v29 ^ 0xFFFF68FF) & (v21 & 0x2D80801B ^ 0x22201869 ^ (v21 ^ 0x806F6120) & (((v19 ^ (v19 >> 5) ^ (v19 >> 3)) << 16) ^ 0xD2BD69E4));
  v33 = *(v10 + (v6[12] ^ 0x59));
  LOBYTE(v24) = *(v13 + (v6[3] ^ 0xB3)) + 124;
  LOWORD(v30) = *(v13 + (v6[15] ^ 0x48)) + 17;
  v34 = v24 & 0xA0 | 0x1C;
  LOBYTE(v24) = v24 ^ (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * ((v24 ^ 8) & (2 * (v24 & (2 * (v24 & 0xA0)) | v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = (v24 & 0x7F ^ 0xFF7FFF57) & (v31 ^ 0x435B62C1);
  v36 = *(v7 + (v6[1] ^ 0x7ELL));
  LOWORD(v31) = v30 & 0xFFEB ^ 0xFF9C;
  LOWORD(v30) = v30 ^ (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * ((v30 ^ 0x72) & (2 * v30) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31));
  v37 = (v30 & 0x1FE ^ 0xFFFFD604) & (((((v33 ^ 0xE2 ^ (v33 >> 2) & 0x1A) << 24) ^ 0x1AFC93A6) & ((v9 << 16) ^ 0xFF33D7BF) & 0xFFFCFFFF | ((v9 & 3) << 16)) ^ 0x59F04580);
  v38 = (v36 ^ (v36 >> 5) ^ (v36 >> 3)) << 16;
  v39 = ((v24 & 0x88 | 0xF32FD425) ^ v35) & (v38 ^ 0xFF98FFFF);
  LOBYTE(v33) = *(v13 + (v6[11] ^ 0x1ALL)) + 10;
  LOBYTE(v24) = v33 & 0xB0 ^ 0x6F;
  LOBYTE(v24) = (v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & (2 * ((v33 ^ 0x7A) & 0xA ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24;
  v40 = (v33 ^ ~(2 * v24) | 0xFFFFFF00) & (((*(v23 + (v6[10] ^ 0x54)) ^ v6[10]) << 8) ^ 0x582C7249) | (v33 ^ (2 * v24)) & 0xB6;
  LODWORD(v24) = ((v30 & 0xD9 | v37) ^ 0x2D922910) & (((*(v23 + (v6[14] ^ 0x14)) ^ v6[14]) << 8) ^ 0x2D939ADB);
  v41 = *(v10 + (v6[8] ^ 0x99));
  v42 = v6[9];
  LODWORD(v6) = ((2 * v42) & 0x15C) + (v42 ^ 0x97B36EAE);
  v43 = v6 - (((v42 ^ 0xA930A1F3) + 1456430837) ^ ((v42 ^ 0xDFFBEEF1) + 537137655) ^ ((v42 ^ 0x76CB4F07) - 1993035775)) - 1910325593;
  v44 = ((v43 ^ 0x1654DC87) - 864219861) ^ v43 ^ ((v43 ^ 0xB2A7555D) + 1754170609) ^ ((v43 ^ 0x3EDA5867) - 453801525) ^ ((v43 ^ 0xBFFFFFEF) + 1708535363);
  v45 = v6 + 543298872 + (((v44 ^ 0x5B85539B) + 1045195368) ^ ((v44 ^ 0x4AB220) + 1703119837) ^ ((v44 ^ 0x81E63017) - 466679316));
  v46 = *(v7 + (v45 ^ ((v45 ^ 0xF1F4FD79) + 2046652082) ^ ((v45 ^ 0xCFF04BD1) + 1207556122) ^ ((v45 ^ 0xB38D2520) + 998553321) ^ ((v45 ^ 0xFA7FFFBF) + 1920363640) ^ 0x77F66C01));
  v47 = (v40 ^ 0xA7022000) & ((((v41 >> 2) & 0x1A ^ v41) << 24) ^ 0x1902AA29) ^ v40 & 0x102C55D6;
  LODWORD(STACK[0x310]) = v37 & 0xD26CD624 ^ 0xB1024E6 ^ v24;
  LODWORD(STACK[0x330]) = v29 & 0xE00 ^ 0xB1456508 ^ v32;
  LODWORD(STACK[0x308]) = v47 & 0xAD0AE0E4 ^ 0x7F14A74B ^ (v47 ^ 0x2D11502) & (((v46 ^ (v46 >> 3) ^ ((v46 >> 5) | 0x10)) << 16) ^ 0x52FB1F1B);
  LODWORD(STACK[0x300]) = v38 & 0xAF0000 ^ 0x7276AD55 ^ v39;
  STACK[0x338] = STACK[0x650] + 7;
  JUMPOUT(0x1969DA808);
}

void sub_1969DCC8C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x1969BEC54);
}

void fp_dh_508eb57fce10dacf8b941e5ebb67f3df(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *a1 + 1825732043 * ((-2 - ((~a1 | 0x68310354) + (a1 | 0x97CEFCAB))) ^ 0x68A75063);
  __asm { BRAA            X9, X17 }
}

_DWORD *sub_1969DCDEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = v4[5];
  v10 = v4[6] - ((2 * v4[6] + 2) & 0x9A) + 78;
  v11 = ((v8 - 144) ^ 0x2CD47D9C) * a4;
  *(v8 - 136) = ((v4[4] ^ 0x7F) + (v4[4] << (((v5 - 31) | 0x1A) - 26)) - 71) ^ (((v8 + 112) ^ 0x9C) * a4);
  *(v8 - 135) = ((v8 + 112) ^ 0x9C) * a4 + v9 - ((2 * v9) & 0x66) - 77;
  *(v8 - 128) = a3;
  *(v8 - 120) = v10 ^ (((v8 + 112) ^ 0x9C) * a4);
  *(v8 - 116) = (v7 ^ ((v7 ^ 0x96976D5B) + 418848337) ^ ((v7 ^ 0x43F2B3E8) - 846020380) ^ ((v7 ^ 0x9985ADB8) + 400940724) ^ ((v7 ^ 0x3D7FFFFF) - 1289777931) ^ 0xE6B4FC2E) + v11;
  *(v8 - 112) = (v5 + 1009) ^ v11;
  *(v8 - 144) = a2;
  (*(v6 + 8 * (v5 + 2809)))(v8 - 144);
  result = v14;
  *v13 = -1;
  *v14 = v7;
  return result;
}

uint64_t sub_1969DCF64@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a2 + v5) ^ 0xEC;
  return (*(a1 + 8 * (((v5 == 0) * (((v3 + 2646) | 0x268) + 2470)) ^ v3)))();
}

uint64_t sub_1969DCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, char a17, uint64_t a18, char *a19, uint64_t a20, uint64_t *a21, int a22, unsigned int a23, int *a24, int a25, int *a26)
{
  a16 = 1304194923;
  v29 = 1621291457 * ((((2 * &a19) | 0xAD1EE2B4) - &a19 + 695242406) ^ 0xE098F0C3);
  a20 = a18;
  a21 = &a18;
  a25 = v29 + v26 + 2575;
  a26 = &a16;
  a24 = &a15;
  a19 = &a17;
  a23 = v29 + a15 + 273767718;
  v30 = (*(v28 + 8 * (v26 ^ 0x19E2)))(&a19);
  return (*(v28 + 8 * (((a22 == 1906281716) * ((233 * (v26 ^ 0x326)) ^ 0x3B0)) | v26)))(v30, v27);
}

uint64_t sub_1969DD590@<X0>(int a1@<W8>)
{
  STACK[0xA08] = v1;
  v3 = STACK[0x690];
  STACK[0xA10] = STACK[0x690];
  return (*(v2 + 8 * (((v1 - v3 > 9) ^ (93 * ((a1 - 62) & 0xDD ^ 0x1F))) & 1 | a1)))();
}

uint64_t sub_1969DD5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x6C8];
  STACK[0x7A8] = STACK[0x6C8];
  return (*(a6 + 8 * (((((13 * ((148 * (v6 ^ 0xED1)) ^ 0x33D) + 660) | 0x1048) ^ 0x16A4) * (v7 == 0)) ^ (148 * (v6 ^ 0xED1)))))();
}

uint64_t sub_1969DD698()
{
  v1 = STACK[0x228];
  v2 = (STACK[0x228] ^ 0xB5) - 3644;
  v3 = STACK[0x228] + 1939;
  v4 = STACK[0x760];
  v5 = STACK[0x6B0];
  v6 = STACK[0xB18];
  v7 = STACK[0x228] - 2283;
  v8 = 1068996913 * ((v0 + 302691337 - 2 * ((v0 - 224) & 0x120AB4E9)) ^ 0xC7E45578);
  *(v0 - 184) = -1482410190 - v8;
  *(v0 - 208) = v5;
  *(v0 - 200) = v7 ^ v8;
  *(v0 - 192) = v6;
  *(v0 - 224) = v4;
  *(v0 - 216) = 1230483497 - v8;
  v9 = STACK[0x248];
  v10 = (*(STACK[0x248] + 8 * (v1 + 3285)))(v0 - 224);
  v11 = *(v0 - 180);
  LODWORD(STACK[0x9B8]) = v11;
  return (*(v9 + 8 * (((v11 != 1906281716) * (v2 ^ 0x70)) ^ v3)))(v10);
}

uint64_t sub_1969DDA28@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v4 = (((*(v2 + 16) ^ 0x255645CE) + 1909653148) ^ ((*(v2 + 16) ^ ((v3 ^ 0x1BF0) - 781209446)) - 2048164445) ^ ((*(v2 + 16) ^ 0xBC67CC6) + 1598211988)) - 1244536922;
  v5 = (a2 > 0x9EB2DBAE) ^ (v4 < 0x614D2451);
  v6 = a2 + 1632445521 > v4;
  if (v5)
  {
    v6 = a2 > 0x9EB2DBAE;
  }

  return (*(a1 + 8 * ((28 * !v6) ^ v3)))();
}

uint64_t sub_1969DDAF4(uint64_t a1, uint64_t a2)
{
  v45 = STACK[0x300];
  v2 = *v43;
  v3 = *v43 + 4;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x2AF7234D0CC131D4 - v4) & 0x2A199E3A6C7C6131 | (v4 - 0x6AF7234D0CC131D5) & 0xD1E661C593839ECELL;
  v6 = v5 ^ 0x67F0DC01036A86E3;
  v5 ^= 0xCFB639969A9CF7BFLL;
  v7 = __ROR8__(v6, 8);
  v8 = (((2 * (v7 + v5)) | 0x1ED977F0C520FDA0) - (v7 + v5) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0xAB878F6F884E2F0ELL) - (v10 + v9) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((a2 - ((v13 + v12) | a2) + ((v13 + v12) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v15 = (a2 - ((v13 + v12) | a2) + ((v13 + v12) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) | 0xC9AD8CEC88B7F32) - (v14 + v15) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v40;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = *(STACK[0x370] + 8 * (v44 - 5613));
  v22 = (((v20 + v19) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v20 + v19) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = __ROR8__(v22, 8);
  *(v2 + 4) = BYTE1(LODWORD(STACK[0x300])) ^ v42 ^ (((v41 - ((v24 + v23) | v41) + ((v24 + v23) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * (v3 & 7u)));
  v25 = __ROR8__((v2 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = (v25 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v27 = (__ROR8__((v25 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v26) ^ 0xE49D77DF873DBF7ELL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xF5A2F1B9B5D0B209;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v39;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v40;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  *(v2 + 5) = v45 ^ (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v2 + 5) & 7))) ^ 0x8F;
  return v21();
}

uint64_t sub_1969DDB10@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = v4 + v2;
  *(v6 + 24) = a2;
  *(v6 + 40) = a2;
  return (*(v5 + 8 * (v3 ^ (2 * (v2 + a1 != 2942)))))();
}

uint64_t sub_1969DDB3C()
{
  STACK[0x4C8] = 0;
  STACK[0x788] = 0;
  v1 = STACK[0x958];
  v2 = &STACK[0xB70] + STACK[0x958];
  STACK[0x7E0] = (v2 + 32);
  STACK[0x5F8] = (v2 + 48);
  STACK[0x958] = v1 + 128;
  v3 = STACK[0x248];
  v4 = (*(STACK[0x248] + 8 * (v0 + 3283)))(v2, 0, 32);
  STACK[0x4A0] = 0;
  STACK[0x558] = 0;
  return (*(v3 + 8 * (((2 * ((((v0 - 1882) ^ 1) & 1) == 0)) & 0xFB | (4 * (((v0 - 90) ^ 0xFE) & 1))) ^ (v0 + 2191))))(v4);
}

uint64_t sub_1969DDB78()
{
  v2 = *(STACK[0x7F8] + 24);
  STACK[0x748] = v2;
  return (*(v0 + 8 * ((25 * (((v2 == 0) ^ (v1 - 95)) & 1)) ^ (v1 + 1585))))();
}

uint64_t sub_1969DDC7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = v56 + 1846;
  STACK[0x3C0] = 0xF946EE33624040D0;
  STACK[0x3C8] = 0xF0A7A75405519CB3;
  v59 = *a1;
  v60 = 283 * ((v56 + 1846) ^ 0xC70);
  if (v57)
  {
    v61 = v59 == 0;
  }

  else
  {
    v61 = 1;
  }

  v62 = v61;
  HIDWORD(a13) = -42900;
  return (*(a52 + 8 * ((((v58 ^ v62) & 1) * (v60 ^ 0x19CF)) ^ v58)))(v59, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1969DDD3C(int a1)
{
  v4 = v1 + (a1 ^ 0x8CCu) - 1782;
  v5 = v1 + 4199121863 + ((a1 - 3505) | 0x200u) - 649 < v2;
  if (v2 < 0xFA4983C7 != v4 > 0xFFFFFFFF05B67C38)
  {
    v5 = v2 < 0xFA4983C7;
  }

  return (*(v3 + 8 * ((114 * v5) ^ a1)))();
}

uint64_t sub_1969DDDB0()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x738];
    v5 = *(STACK[0x738] + 8);
    v6 = STACK[0x520];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((v5 == 0) * ((v2 ^ 0x31) - 3417)) ^ (v2 + 2337))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * (((*(STACK[0x470] + 8) != 0) * (((v2 - 1281146435) & 0x4C5CBF3F ^ 0xFFFFF3C9) + 20 * (v2 ^ 0xE35))) ^ (v2 - 2875))))();
  }

  else
  {
    return (*(v1 + 8 * ((79 * (((*(STACK[0x520] + 24) == 0) ^ (v2 - 1)) & 1)) ^ (v2 + 2074))))();
  }
}

uint64_t sub_1969DDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  v27 = &a23 + v25 + 8;
  *(v27 - 1) = 0xECECECECECECECECLL;
  *v27 = 0xECECECECECECECECLL;
  return (*(v26 + 8 * ((((v24 & 0xFFFFFFFFFFFFFFF0) == 16) * ((3 * (v23 ^ 0xDBC)) ^ 0x3B)) ^ v23)))();
}

void sub_1969DE000(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x19692C4B0);
}

uint64_t sub_1969DE1DC@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  v14 = (v11 + 4 * v10);
  v15 = HIDWORD(v5) + v13 * (v3 ^ v9 ^ (a2 + 1864) ^ *(v7 + 4 * v10)) + (*v14 ^ a2) + HIDWORD(v12) + v6 * (*(v2 + 4 * v10) ^ a2);
  *(v14 - 1) = v15 + a2 - (a1 & (2 * v15));
  return (*(v8 + 8 * ((504 * (v10 + 1 == v4)) ^ v3)))();
}

uint64_t sub_1969DE25C(uint64_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v16 = (a12 + (v12 + v14));
  v17 = *v16;
  v18 = v16[1];
  v19 = (a1 + v12);
  *v19 = vaddq_s8(vsubq_s8(v17, vandq_s8(vaddq_s8(v17, v17), a5)), a2);
  v19[1] = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a2);
  return (*(v15 + 8 * (((v12 == 32) * a11) ^ (a8 + v13 - 2430))))();
}

uint64_t sub_1969DE2B8@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + 8);
  v9 = ((2 * (v8[((a1 << 32) + 0x100000000) >> ((v4 + 93) ^ 0xE3u)] ^ v1)) << ~(v5 ^ 1)) | ((v8[a1] ^ v1) >> (v5 ^ 1));
  *v8 = v9 + v1 - (v2 & (2 * v9));
  return (*(v7 + 8 * ((2964 * (v3 == 1)) ^ v4)))();
}

uint64_t sub_1969DE628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = vrev64q_s8(**(v8 + 32));
  v10 = vextq_s8(v9, v9, 8uLL);
  v11.i64[0] = 0x9D9D9D9D9D9D9D9DLL;
  v11.i64[1] = 0x9D9D9D9D9D9D9D9DLL;
  v12 = vorrq_s8(vaddq_s8(v10, v10), v11);
  v11.i64[0] = 0xB1B1B1B1B1B1B1B1;
  v11.i64[1] = 0xB1B1B1B1B1B1B1B1;
  v13 = veorq_s8(v10, v11);
  v11.i64[0] = 0x7878787878787878;
  v11.i64[1] = 0x7878787878787878;
  v14 = vrev64q_s8(veorq_s8(vaddq_s8(vaddq_s8(v13, v11), v12), xmmword_196EBFB90));
  *(v7 - 104) = vextq_s8(v14, v14, 8uLL);
  return (*(v6 + 8 * (a5 ^ (55 * (v5 != 0)))))(a1, a2, a3);
}

void sub_1969DE6A0(unint64_t a1@<X8>)
{
  v4 = (((2 * v2) & 0x7EBB7948F2FDFDAALL) + (v2 ^ 0x7F5DBCA4797EFED5) + v1 - 0x7F5DBCA4797EFED5);
  v5 = (*v4 << ((v3 - 105) ^ 0x8Bu)) | (v4[1] << 48) | (v4[2] << 40) | (v4[3] << 32) | (v4[4] << 24) | (v4[5] << 16) | (v4[6] << 8);
  STACK[0x448] = v5 & 0x1866823ABA9E5CB8 ^ 0xC22B8C6F29C45DA5 ^ ((v4[7] - ((2 * v4[7]) & 0x15E) + 0x744D802FB498DEAFLL) ^ 0x93D4FDEAF1F97DE8) & (v5 ^ 0xEF997DCD65F3BFFFLL);
  STACK[0x918] = a1;
  JUMPOUT(0x1969C5E18);
}

uint64_t sub_1969DE8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x248];
  STACK[0x4D0] = *(STACK[0x248] + 8 * v2);
  LODWORD(STACK[0xB64]) = 1643602487;
  STACK[0xB68] = &STACK[0x438];
  return (*(v3 + 8 * (((((a1 == 0) ^ (((v2 - 8) | 4) - 1)) & 1) * (((((v2 - 8) | 0x804) - 2374) | 0xE14) - 3562)) ^ ((v2 - 8) | 0x804))))();
}

void sub_1969DE9F4()
{
  LOWORD(STACK[0x9CA]) = v0;
  LODWORD(STACK[0x3A0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969DEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  v20 = 1068996913 * ((v19 - 2 * (v19 & 0x3DDF36851CD92E2) + 0x3DDF36851CD92E2) ^ 0x97BCC7FB84237373);
  a15 = 6365 - v20;
  a14 = ((v16 ^ 0xFD1FB533AE7FBFF5) + 0x7EF6FFFFD796CADBLL + ((2 * v16) & 0xFA3F6A675CFF7FEALL)) ^ v20;
  a16 = a9;
  v21 = (*(v17 + 54528))(&a13);
  return (*(v17 + 8 * ((2156 * (a13 == v18)) ^ 0x7E8u)))(v21);
}

uint64_t sub_1969DEC34()
{
  v10 = *(v0 + 8);
  *(v9 - 120) = v8 ^ (((((2 * v7) | 0xF527CCAA) - v7 + 90970539) ^ 0xCC8467CC) * v3);
  *(v9 - 112) = v6;
  *(v9 - 96) = v5 + v10 + ((((2 * v7) | 0x51520179F527CCAALL) - v7 - 0x28A900BCFA93E655) ^ 0x55DF5A51CC8467CCLL) * v3 - ((2 * v10) & 0x8889B80CB23BF32ELL) + 5;
  v11 = (*(v1 + 8 * (v2 + 5029)))(v9 - 120);
  return (*(v1 + 8 * ((3073 * (*(v9 - 104) == v4)) ^ v2)))(v11);
}

uint64_t sub_1969DED9C()
{
  v2 = *(v1 + 56024);

  return v2(v0);
}

uint64_t sub_1969DEDCC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA70] = v1 ^ 0x9976F8DB;
  *(a1 + 16) = (((v1 ^ 0x2025E4D1 ^ (4 * (v2 ^ 0x9DD))) - 539355853) ^ ((v1 ^ 0x4D3D4ED4) - 1295863508) ^ ((((v2 ^ 0x9DD) - 194094789) ^ v1) + 194093886)) - 1720256283;
  v4 = STACK[0x248];
  v5 = (*(STACK[0x248] + 8 * (v2 ^ 0x10D7)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((61 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_1969DEFB0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  a10 = a1;
  a12 = v12 - 489239129 * ((((2 * (&a10 ^ 0xE6292363)) | 0x4EA606E8) - (&a10 ^ 0xE6292363) + 1487731852) ^ 0xF8520321) - 45;
  v14 = (*(v13 + 8 * (v12 + 5882)))(&a10);
  return (*(v13 + 8 * ((4909 * (a11 == ((v12 + 1906626593) ^ 0x3BAA75) + ((v12 + 1906626593) & 0x8E5B3F7A))) ^ v12)))(v14);
}

uint64_t sub_1969DF078@<X0>(uint64_t a1@<X6>, char a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (a2 ^ 0xA1 ^ (-97 * (v3 ^ 0xD7))) * (a2 + 17);
  return (*(v4 + 8 * ((1999 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1969DF0C4@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, int a5, char a6, char *a7, char *a8, unsigned int a9, int a10, uint64_t a11)
{
  v13 = a1 ^ 0xC84;
  v14 = 1283153057 * ((114627002 - (&a7 | 0x6D511BA) + (&a7 | 0xF92AEE45)) ^ 0xB6F2ED72);
  a7 = &a6;
  a8 = &a3;
  a11 = v11;
  a9 = 1322676486 - v14;
  a10 = v14 + v13 + 91;
  v15 = (*(v12 + 8 * (v13 ^ 0x1F51)))(&a7);
  return (*(v12 + 8 * (((*(v11 + 24) == 1906281716) * ((((v13 + 729191257) ^ 0x2B769F5F) + 4207) ^ (v13 + 729191257) & 0xD489787D)) ^ v13)))(v15);
}

uint64_t fp_dh_194e96975d917a8245329fdebbcb9177(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1575331711 * ((2 * (a1 & 0x32AD849B) - a1 - 850232476) ^ 0xA109EE66);
  v2 = *(a1 + 8);
  v4 = v1 + 998242381 * ((2 * (&v4 & 0x3C439230) - &v4 - 1011061300) ^ 0x69D3F51A) - 1243683594;
  v5 = v2;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 & 0x722142FD)) + 8 * (v1 ^ 0x8DCE25E8) - 4))(&v4);
}

void FIUPqPyosF()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55))] ^ 0x5C]) + 8);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))] ^ 0x16]) + 440);
  v3 = &v5[v1 + *(v2 - 4)];
  *(v0 - 4) = 810526117 * v3 - 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((v6 + 925849200 - 2 * (v6 & 0x372F5670)) ^ 0x5B74C372) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a1e2cc82a4e87005a049de320e25edbd) ^ 0x55))] ^ 0x7F]) + 583) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0x16u) - 12) ^ v2) + 53320])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969DF670(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LOWORD(STACK[0x82E]) = a2;
  LODWORD(STACK[0x310]) = a2;
  return (*(STACK[0x370] + 8 * (a8 - 5394)))();
}

uint64_t sub_1969DF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24)
{
  v26 = 1012216201 * ((((&a19 ^ 0xD510847A) & 0xD550947A) + (&a19 ^ 0x28637101) - ((&a19 ^ 0x28637101) & 0xD550947A)) ^ 0x799A6D97);
  a22 = a16;
  a23 = &a14;
  a24 = v26 + v24 - 1795306622;
  a19 = v26 ^ 0x80F33AA;
  a21 = v26 - 1402624577;
  v27 = (*(v25 + 8 * (v24 + 3429)))(&a19);
  return (*(v25 + 8 * ((78 * (((v24 - 35) ^ (a20 == ((v24 - 604312099) & 0xBC2F3F7D) - 646622601)) & 1)) ^ v24)))(v27);
}

uint64_t sub_1969DF830(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4 + 1291453940;
  v9 = v7 + v5 + 1038;
  v10 = v6 < v8;
  if (v8 < v6)
  {
    v10 = 1;
  }

  return (*(v4 + 8 * ((2611 * v10) ^ v9)))(2575459919, a2, 0);
}

uint64_t sub_1969DF968@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = a2 + 1408;
  v8 = a2 - 3182;
  v9 = *(v5 + 8);
  STACK[0x6E0] = *(v6 + 8 * v8);
  STACK[0x428] = &STACK[0x79C];
  STACK[0x608] = 0;
  LODWORD(STACK[0x7BC]) = -1720256293;
  STACK[0x5D0] = 0;
  if (v9)
  {
    v2 = &STACK[0x79C] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(v6 + 8 * ((v3 * ((28 * (v7 ^ 0x131D)) ^ (14 * (v7 ^ 0x1381)) ^ 0xF89)) ^ v7)))(a1, 1906239693);
}

void sub_1969DF9D0()
{
  if (v0 == 548573665)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 32) = v2;
}

void fp_dh_e1b5bf2d5894ad6727d58541d9525698(uint64_t a1)
{
  v3 = *(*(a1 + 8) + 4) == 676339932 || *(*(a1 + 16) + 4) == 676339932;
  v1 = *a1 + 1012216201 * ((a1 & 0x6E694478 | ~(a1 | 0x6E694478)) ^ 0x153F336B);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969DFB48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x390] = vdupq_n_s64(0x38uLL);
  *&STACK[0x410] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x360] = vdupq_n_s64(v10);
  *&STACK[0x370] = vdupq_n_s64(0xC15EB2CB1F9E4465);
  v18 = 157 * (a8 ^ 0x82C);
  *&STACK[0x340] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(a7);
  *&STACK[0x290] = vdupq_n_s64(v13);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x300] = vdupq_n_s64(a2);
  *&STACK[0x310] = vdupq_n_s64(a1);
  *&STACK[0x2E0] = vdupq_n_s64(a4);
  *&STACK[0x2F0] = vdupq_n_s64(a3);
  *&STACK[0x400] = vdupq_n_s64(a5);
  *&STACK[0x2C0] = vdupq_n_s64(v16);
  *&STACK[0x2D0] = vdupq_n_s64(a6);
  *&STACK[0x2A0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2B0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x3A0] = xmmword_196EBFA60;
  v19 = *&STACK[0x350];
  v20 = *&STACK[0x330];
  v21 = *&STACK[0x290];
  v22 = *&STACK[0x2A0];
  v24 = *&STACK[0x2B0];
  v23 = *&STACK[0x2C0];
  *&v25 = v8 + v9 - 5;
  *(&v25 + 1) = v8 + v9 - 6;
  *&STACK[0x3F0] = v25;
  *&v25 = v8 + v9 - 3;
  *(&v25 + 1) = v8 + v9 - 4;
  *&STACK[0x3E0] = v25;
  v26.i64[0] = v8 + v9 + 5;
  v26.i64[1] = v8 + v9 + 4;
  v27.i64[0] = v8 + v9 + 7;
  v27.i64[1] = v8 + v9 + 6;
  v28.i64[0] = v8 + v9 + 9;
  v28.i64[1] = v8 + v9 + 8;
  v29.i64[0] = 129 * (v18 ^ 0x7E5u) + v9 + v8 - 3609;
  v29.i64[1] = v8 + v9 + 2;
  v30 = *&STACK[0x3B0];
  v31 = vandq_s8(v29, *&STACK[0x3B0]);
  v32 = vandq_s8(v28, *&STACK[0x3B0]);
  v33 = vandq_s8(v27, *&STACK[0x3B0]);
  v34 = vandq_s8(v26, *&STACK[0x3B0]);
  v35 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v40 = *&STACK[0x370];
  v39 = *&STACK[0x380];
  v41 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v35), vaddq_s64(v35, *&STACK[0x380]));
  v42 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v36), vaddq_s64(v36, *&STACK[0x380]));
  v43 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v37), vaddq_s64(v37, *&STACK[0x380]));
  v44 = vbslq_s8(*&STACK[0x370], vsubq_s64(*&STACK[0x410], v38), vaddq_s64(v38, *&STACK[0x380]));
  v45 = *&STACK[0x360];
  v46 = veorq_s8(v42, *&STACK[0x360]);
  v47 = veorq_s8(v41, *&STACK[0x360]);
  v48 = veorq_s8(v41, v19);
  v49 = veorq_s8(v42, v19);
  v50 = *&STACK[0x340];
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), *&STACK[0x340]);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), *&STACK[0x340]);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53);
  v58 = *&STACK[0x310];
  v57 = *&STACK[0x320];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, v20), vorrq_s8(v55, v21)), v21), *&STACK[0x320]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v20), vorrq_s8(v56, v21)), v21), *&STACK[0x320]);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = *&STACK[0x300];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v70 = *&STACK[0x2F0];
  v71 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v73 = veorq_s8(v68, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v78 = *&STACK[0x2D0];
  v77 = *&STACK[0x2E0];
  v79 = *&STACK[0x400];
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x2E0]), v76), *&STACK[0x400]), *&STACK[0x2D0]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v75, v75), *&STACK[0x2E0]), v75), *&STACK[0x400]), *&STACK[0x2D0]);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v23);
  v87 = veorq_s8(v85, v23);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = veorq_s8(vaddq_s64(v91, v89), v24);
  v94 = veorq_s8(v92, v24);
  v95.i64[0] = v8 + v9 - 1;
  v95.i64[1] = v8 + v9 - 2;
  *&STACK[0x3C0] = v95;
  v96 = *&STACK[0x390];
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), *&STACK[0x390])));
  v197.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), *&STACK[0x390])));
  v97 = veorq_s8(v43, v45);
  v98 = veorq_s8(v43, v19);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v50);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = v57;
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v20), vorrq_s8(v101, v21)), v21), v57);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = v58;
  v107 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v58)), v67);
  v108 = v70;
  v109 = veorq_s8(v107, v70);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = v79;
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v77), v111), v79), v78);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v24);
  v79.i64[0] = v8 + v9 + 1;
  v79.i64[1] = v8 + v9;
  *&STACK[0x3D0] = v79;
  v118 = vandq_s8(v79, v30);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v96)));
  v119 = veorq_s8(v44, v45);
  v120 = veorq_s8(v44, v19);
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v50);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v20), vorrq_s8(v123, v21)), v21), v102);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), v106)), v67), v108);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v77), v129), v112), v78);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v23);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v24);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v137 = vandq_s8(v95, v30);
  v138 = vaddq_s64(v136, v135);
  v139 = vandq_s8(*&STACK[0x3E0], v30);
  v197.val[3] = vshlq_u64(veorq_s8(v138, v22), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v96)));
  v140 = vandq_s8(*&STACK[0x3F0], v30);
  v141 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v145 = v40;
  v146 = vbslq_s8(v40, vsubq_s64(*&STACK[0x410], v141), vaddq_s64(v141, v39));
  v147 = vbslq_s8(v40, vsubq_s64(*&STACK[0x410], v142), vaddq_s64(v142, v39));
  v148 = vbslq_s8(v145, vsubq_s64(*&STACK[0x410], v143), vaddq_s64(v143, v39));
  v149 = vbslq_s8(v145, vsubq_s64(*&STACK[0x410], v144), vaddq_s64(v144, v39));
  v142.i64[0] = vqtbl4q_s8(v197, *&STACK[0x3A0]).u64[0];
  v150 = veorq_s8(v147, v45);
  v197.val[0] = veorq_s8(v146, v45);
  v197.val[1] = veorq_s8(v146, v19);
  v197.val[2] = veorq_s8(v147, v19);
  v197.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[1]), v50);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v197.val[2]), v50);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(v197.val[3], v197.val[1]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, v20), vorrq_s8(v152, v21)), v21), v102);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197.val[0], v20), vorrq_s8(v197.val[0], v21)), v21), v102);
  v197.val[1] = veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL));
  v197.val[2] = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[1]);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v197.val[0], vandq_s8(vaddq_s64(v197.val[0], v197.val[0]), v106)), v67), v108);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(v154, vandq_s8(vaddq_s64(v154, v154), v106)), v67), v108);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = vaddq_s64(v197.val[3], v197.val[1]);
  v197.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197.val[0], v197.val[0]), v77), v197.val[0]), *&STACK[0x400]), v78);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v77), v156), *&STACK[0x400]), v78);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = veorq_s8(vaddq_s64(v197.val[3], v197.val[1]), v23);
  v159 = veorq_s8(v158, v23);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL);
  v197.val[1] = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL));
  v197.val[2] = veorq_s8(v197.val[0], v197.val[3]);
  v197.val[3] = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), v197.val[2]);
  v197.val[0] = veorq_s8(vaddq_s64(v197.val[3], v197.val[1]), v24);
  v161 = veorq_s8(v160, v24);
  v197.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197.val[0], 0x38uLL), v197.val[0], 8uLL), veorq_s8(v197.val[0], vsraq_n_u64(vshlq_n_s64(v197.val[1], 3uLL), v197.val[1], 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), v96)));
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v197.val[2], 3uLL), v197.val[2], 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v96)));
  v162 = veorq_s8(v148, v45);
  v163 = veorq_s8(v148, v19);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v50);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v20), vorrq_s8(v166, v21)), v21), v102);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(v169, vandq_s8(vaddq_s64(v169, v169), v106)), v67), v108);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v77), v172), *&STACK[0x400]), v78);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v23);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v24);
  v197.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v96)));
  v178 = veorq_s8(v149, v45);
  v179 = veorq_s8(v149, v19);
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v50);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v20), vorrq_s8(v182, v21)), v21), v102);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(v185, v185), v106)), v67), v108);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v77), v188), *&STACK[0x400]), v78);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v23);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v24);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL))), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v96)));
  v142.i64[1] = vqtbl4q_s8(v197, *&STACK[0x3A0]).u64[0];
  v194 = vrev64q_s8(*(v11 - 15 + v9 - 1));
  v197.val[0].i64[0] = 0xECECECECECECECECLL;
  v197.val[0].i64[1] = 0xECECECECECECECECLL;
  v195 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v194, v194, 8uLL), v197.val[0]), v142));
  *(v8 + v9 - 6) = vextq_s8(v195, v195, 8uLL);
  return (*(v17 + 8 * ((4056 * (v9 != 16)) ^ v18)))();
}

uint64_t sub_1969E0758()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x321)))(*v2, *(v0 + 8 * (v3 ^ 0x18F4)) - 4);
  *(*(v0 + 8 * (v3 - 5923)) - 4) = v4;
  return (*(v1 + 8 * (((v4 == 0) * ((v3 - 1440594750) & 0x55DDB7F9 ^ 0x166B)) | v3)))();
}

void sub_1969E07D4(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, char a4@<W4>, unsigned int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = ((a5 ^ 0x6848F28AF3A0BB60) - 0x6848F28AF3A0BB60) ^ ((a5 ^ 0x8E8E800145EFC208) + 0x71717FFEBA103DF8) ^ (((((v14 - 489) ^ (v9 + 499)) - 0x19398D752AF95B8ALL) ^ a5) + 0x19398D749C32B890);
  v20 = (v19 + 0x73952D786F340D98) * (v19 + 0x79BAAA413C0A40FLL) + ((v19 + 0x73952D786F340D98) * v15 - 0x40FA00647BF6C2FFLL * (v19 + 0x79BAAA413C0A40FLL)) * v16 + v17;
  v21 = v20 - (((v20 * v18) >> 64) >> 31) * a6;
  v22 = v21 * a1 + (a2 ^ v10) * (a2 ^ v10) + a7;
  v23 = v22 - (((v22 * v11) >> 64) >> 31) * v12;
  *(v8 + a3) = (((v23 * v21) >> 15) - (a4 & (2 * ((v23 * v21) >> 15))) - 20) ^ *(a8 + a3);
  *(v8 + (a3 | 1)) = (((v23 * v21) >> 23) - (a4 & (2 * ((v23 * v21) >> 23))) - 20) ^ *(a8 + (a3 | 1));
  *(v8 + (a3 | 2)) = (((v23 * v21) >> 31) - (a4 & (2 * ((v23 * v21) >> 31))) - 20) ^ *(a8 + (a3 | 2));
  *(v8 + (a3 | 3)) = (((v23 * v21) >> 39) + (v13 | ~(2 * ((v23 * v21) >> 39))) - 19) ^ *(a8 + (a3 | 3));
  JUMPOUT(0x1969DF8B8);
}

uint64_t sub_1969E0EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = v16 + ((((v17 - 128) | 0x33D0DDCB) - (v17 - 128) + ((v17 - 128) & 0xCC2F2230)) ^ 0x56CA2680) * v14 - 438;
  *(v17 - 128) = a12;
  *(v17 - 120) = &a13;
  v18 = (*(v13 + 8 * (v16 ^ 0x101C)))(v17 - 128);
  v19 = *(v17 - 108) > (((v16 - 2426) | 0x688) ^ (v15 + 3841));
  return (*(v13 + 8 * (((4 * v19) | (32 * v19)) ^ v16)))(v18);
}

uint64_t sub_1969E0FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21)
{
  v24 = 1012216201 * ((-1112929448 - (&a16 | 0xBDAA0B58) + (&a16 | 0x4255F4A7)) ^ 0xC6FC7C4B);
  a16 = v24 ^ 0x80F33AA;
  a18 = v24 + 947593057;
  a21 = v24 + v23 - 1795305092;
  a19 = a11;
  a20 = &a14;
  v25 = (*(v22 + 8 * (v23 ^ 0x1DAFu)))(&a16);
  return (*(v22 + 8 * (((a17 == v21) * (10 * (v23 ^ 0x668) - 3174)) ^ v23)))(v25);
}

uint64_t sub_1969E1084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v19 - ((((2 * &a14) | 0xA6BAAB8) - &a14 + 2060069540) ^ 0xE96E405E) * v18 - 1131;
  a15 = a10;
  a16 = &a13;
  (*(v16 + 8 * (v19 ^ 0x1782)))(&a14);
  HIDWORD(a15) = v19 - 489239129 * ((-911629896 - (&a14 | 0xC9A9A1B8) + (&a14 | 0x36565E47)) ^ 0x8F7E7D71) - 2467;
  a14 = a10;
  v20 = (*(v16 + 8 * (v19 ^ 0x179C)))(&a14);
  return (*(v16 + 8 * ((19 * (a15 == (v19 ^ 0x1DE9 ^ (v17 + 3901)))) | v19)))(v20);
}

uint64_t sub_1969E117C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62)
{
  STACK[0x240] = v63;
  STACK[0x248] = v62;
  v67 = (((LODWORD(STACK[0x65C]) ^ 0xBA0AF0AD) + 1173688147) ^ ((LODWORD(STACK[0x65C]) ^ 0x1947CD48) - 424136008) ^ ((LODWORD(STACK[0x65C]) ^ 0xA698E44C) + 1499929524)) + 195801938 + (((v64 ^ 0x838E9663) + 2087807389) ^ ((v64 ^ 0x63FD346C) - 1677538412) ^ ((v64 ^ a61) + 442074202));
  *(v66 + 52) = ((v67 % 0x2710) ^ 0xDFF9FF3D) + 726036704 + ((2 * (v67 % 0x2710)) & 0x7E7A);
  v68 = STACK[0x68C];
  STACK[0x590] -= 1616;
  LODWORD(STACK[0x380]) = v68;
  return (*(v65 + 8 * ((3891 * (v68 == a2)) ^ a62)))();
}

uint64_t fp_dh_4dd2d88c2c1474a21063396b956ce924(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_1969E15AC()
{
  LODWORD(STACK[0x37C]) = 1583367960;
  LODWORD(STACK[0x494]) = 128;
  v3 = STACK[0x480] + 528;
  v4 = STACK[0x480] + 800;
  v5 = STACK[0x538];
  v6 = STACK[0x390];
  v7 = 998242381 * ((((2 * (v2 - 208)) | 0xC00AB594) - (v2 - 208) - 1610963658) ^ 0xCA6AC21C);
  *(v2 - 192) = &STACK[0x494];
  *(v2 - 184) = 0;
  *(v2 - 172) = (v0 + 4233) ^ v7;
  *(v2 - 144) = v7 + 855519640;
  *(v2 - 208) = v3;
  *(v2 - 200) = 0;
  *(v2 - 168) = v5;
  *(v2 - 160) = v6;
  *(v2 - 152) = v4;
  v8 = (*(v1 + 8 * (v0 + 5804)))(v2 - 208);
  return (*(v1 + 8 * (((*(v2 - 176) == 1906281716) * ((((v0 - 1260364950) & 0x4B1FB7FB) + 1934) ^ (v0 + 984))) ^ v0)))(v8);
}

uint64_t sub_1969E16B0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + (v3 - 7) % v1);
  v6 = *(a1 + (v3 - 37) % v1);
  v7 = *(a1 + (v3 - 177) % v1);
  *(a1 + v3 % v1) ^= (((v5 >> 7) | (2 * v5)) - ((4 * v5) & 0xCF) - 26) ^ (((v6 >> 2) | (v6 << 6)) + ((111 * (v2 ^ 0xB0)) ^ 0x3C) - ((2 * ((v6 >> 2) | (v6 << 6))) & 0xE3)) ^ (((v7 >> 3) | (32 * v7)) - ((2 * ((v7 >> 3) | (32 * v7))) & 0xBC) - 34) ^ 0x49;
  return (*(v4 + 8 * ((4653 * (v3 == 255)) ^ v2)))();
}

void fp_dh_e18a4b094e5126d61837dc8f2c3b752b(uint64_t a1)
{
  v3 = (*(a1 + 8) - 53 * ((-2 - ((~a1 | 0xB) + (a1 | 0xF4))) ^ 0x3C)) != 86 && *a1 != 0;
  v1 = *(a1 + 24) + 1825732043 * ((-2 - ((~a1 | 0x7428030B) + (a1 | 0x8BD7FCF4))) ^ 0x74BE503C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1969E187C@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  v8 = v7 == ((v5 + a3) ^ 0x1755);
  return (*(v6 + 8 * ((4 * v8) | (8 * v8) | (a2 + v5 + 3495))))();
}

uint64_t sub_1969E18BC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W8>)
{
  v10 = v5 < a1;
  v11 = *(v7 + v3);
  v12 = v3 + 1;
  *(v9 - 220 + a3) = v11 - ((2 * v11) & 0xD8) - 20;
  if (v10 == v12 > a2)
  {
    v10 = v12 + a1 < v5;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

uint64_t sub_1969E1980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v58 = STACK[0x560];
  v59 = STACK[0x498];
  STACK[0x220] = STACK[0x550];
  STACK[0x2A0] = v56;
  STACK[0x2E8] = &STACK[0x6E0] + v56;
  STACK[0x228] = v59;
  if (v58)
  {
    v60 = v59 == 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v60;
  LODWORD(STACK[0x330]) = v61;
  STACK[0x340] = v58 + 236;
  STACK[0x338] = v59 + 32;
  STACK[0x2E0] = v59 + 1168;
  STACK[0x300] = v59 + 1432;
  STACK[0x298] = v58 + 528;
  STACK[0x290] = v58 + 800;
  STACK[0x230] = v59 + 1448;
  STACK[0x310] = v58;
  LODWORD(STACK[0x2F8]) = 1858236863;
  STACK[0x308] = v59;
  return (*(v57 + 8 * (((2 * (a56 ^ 0x65C) - 2337) * LODWORD(STACK[0x330])) ^ (2 * (a56 ^ 0x65C) + 827))))(2755106247, 2216694019, 29, a4, 3221241675, 0x100110000, 3594501091, 4224);
}

uint64_t sub_1969E1AA0(int a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v12 = *(STACK[0x308] + 1428);
  if (v12 <= 0x20 && ((1 << v12) & a6) != 0)
  {
    return (*(v10 + 8 * ((6777 * (*(STACK[0x310] + 476) == ((v11 - 3969) ^ 0x87B))) ^ (v11 - 3969))))();
  }

  v14 = ((a7 + 700522532) ^ ((v7 ^ 0x719EE8CD) + a5) ^ 0xFFFE9BF6) & (v9 & 0x8DF4E8D3 ^ (v9 ^ 0xDE9627B9) & (v8 ^ 0x5FEE63C1) ^ 0x28A3B556) ^ ((a7 + 700522532) ^ ((v7 ^ 0x719EE8CD) + a5) ^ 0x719EE8FD) & a1;
  if (((~((v14 ^ a2) & (v14 >> 4)) | (((v14 ^ a2) & (v14 >> 4) ^ 0xBFFFFFFF) >> 2)) & 3) != 0)
  {
    v15 = a4 + 2;
  }

  else
  {
    v15 = 1906281716;
  }

  if (LODWORD(STACK[0x2F8]) == -1565517838)
  {
    JUMPOUT(0x1969E1CB8);
  }

  if (LODWORD(STACK[0x2F8]) != 1858236863)
  {
    JUMPOUT(0x1969E1A74);
  }

  return (*(v10 + 8 * ((23 * (v15 == ((v11 - 1529748548) ^ 0xD54E7465 ^ (v11 - 1529748548) & 0x5B2E076E))) ^ (v11 - 1869))))();
}

void sub_1969E1D58()
{
  STACK[0x948] = 0;
  STACK[0x900] = 0;
  STACK[0x4D0] = *(v1 + 8 * v0);
  JUMPOUT(0x1969763E4);
}

uint64_t sub_1969E1D7C@<X0>(uint64_t a1@<X5>, unsigned int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v42 = ((2 * a2) & 0x1FCFFBFFALL) + (a2 ^ 0xF72BF7DFFE7FDFFDLL) + a42;
  *(v42 + 0x8D4082001802003) = 0;
  *(v42 + 0x8D4082001802005) = 0;
  *(v42 + ((a3 - 636210975) & 0x25EBCB75 ^ 0x8D4082001802352)) = 0;
  *(((2 * (a2 + 4)) & 0x1FD3DDE66) + ((a2 + 4) ^ 0xCF360F7AFE9EEF33) + a42 + 0x30C9F085016110CDLL) = -9392;
  v43 = a2 + 6;
  v44 = v43 ^ 0xBCFBEEE9FE69FFB5;
  v45 = (2 * v43) & 0x1FCD3FF6ALL;
  v46 = (a34 ^ 0xC10C8264) & (2 * (a34 & 0x25)) | a34 & 0x25;
  LODWORD(v43) = ((2 * (a34 ^ 0x491586E6)) ^ 0x12A20A06) & (a34 ^ 0x491586E6) ^ (2 * (a34 ^ 0x491586E6)) & 0x85490482;
  v47 = v43 ^ 0x85490481;
  LODWORD(v43) = (v43 ^ 0x100) & (4 * v46) ^ v46;
  v48 = ((4 * v47) ^ 0x3564160C) & v47 ^ (4 * v47) & 0x8D590580;
  LODWORD(v43) = (v48 ^ 0x5400400) & (16 * v43) ^ v43;
  v49 = ((16 * (v48 ^ 0x88190183)) ^ 0xD5905830) & (v48 ^ 0x88190183) ^ (16 * (v48 ^ 0x88190183)) & 0x8D590580;
  v50 = v49 ^ 0x8490583;
  v51 = v43 ^ 0x8D590583 ^ (v49 ^ 0x85100000) & (v43 << 8);
  v52 = a34 ^ (2 * ((v51 << 16) & 0xD590000 ^ v51 ^ ((v51 << 16) ^ 0x5830000) & ((v50 << 8) & 0x8D590000 ^ 0x4580000 ^ ((v50 << 8) ^ 0x59050000) & v50)));
  v53 = (v45 + v44 + a42 + 0x430411160196004BLL);
  *v53 = HIBYTE(v52) ^ 0xD4;
  v53[1] = BYTE2(v52) ^ 0xFC;
  v53[2] = BYTE1(v52) ^ 0x88;
  v53[3] = v52 ^ 0x63;
  return (*(a1 + 8 * ((487 * ((LODWORD(STACK[0x7D4]) | ((LODWORD(STACK[0x7D4]) < 0x3BB37C9B) << 32)) != 1001618587)) ^ a3)))();
}

uint64_t sub_1969E206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 454622246) & 0xE4E70DF6 ^ 0xFFFFFFFFFFFFF3A9) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((477 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1969E20F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v8 == 1906239664)
  {
    return (*(a6 + 8 * (((*(STACK[0x530] + 97) == (a8 - 26)) * ((a8 - 5724) ^ 0xE8C)) ^ (a8 - 4847))))();
  }

  if (v8 != 1906281716)
  {
    JUMPOUT(0x1969E2524);
  }

  v9 = *(STACK[0x7B8] + 24);
  STACK[0x468] = v9;
  return (*(a6 + 8 * (((v9 == 0) * (((a8 - 5197) | 8) ^ 0x20A)) ^ (a8 - 1270))))();
}

uint64_t sub_1969E21AC@<X0>(uint64_t a1@<X5>, int a2@<W7>, unint64_t a3@<X8>)
{
  v5 = LOWORD(STACK[0x83E]);
  if (v5 != 26075)
  {
    if (v5 == 45445 || v5 == 41591)
    {
      STACK[0x7F8] = a3;
      LODWORD(STACK[0x48C]) = v4;
    }

    goto LABEL_9;
  }

  v6 = STACK[0x468];
  STACK[0x7F8] = a3;
  LODWORD(STACK[0x48C]) = v4;
  STACK[0x418] = v6 + v3;
  v7 = *(STACK[0x530] + 20);
  if (v7 == 1)
  {
    v9 = 723 * (a2 ^ 0x1654);
    LODWORD(STACK[0x310]) = a2 - 1148;
    LODWORD(STACK[0x2F0]) = v9;
    LODWORD(STACK[0x300]) = v9 ^ 0x197D;
    LODWORD(STACK[0x330]) = a2 - 5165;
    LODWORD(STACK[0x340]) = (a2 + 1849324962) & 0x91C577FE;
    LODWORD(STACK[0x320]) = a2 - 4714;
    LODWORD(STACK[0x2E0]) = -1720254567;
    JUMPOUT(0x1969C311CLL);
  }

  if (v7)
  {
LABEL_9:
    JUMPOUT(0x1969E2524);
  }

  return (*(a1 + 8 * ((112 * (*(STACK[0x530] + 97) == ((a2 - 69) ^ 0x5B))) ^ (a2 - 1577))))();
}

uint64_t sub_1969E2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  v20 = 1068996913 * (((v19 | 0x2BB7B0271C50854) - (v19 & 0x2BB7B0271C50854)) ^ 0x96DA4F91A42BE9C5);
  a15 = 6365 - v20;
  a16 = a9;
  a14 = ((v16 ^ 0xFFDEFDBBB696CBF3) + 0x7C37B777CF7FBEDDLL + ((2 * v16) & 0xFFBDFB776D2D97E6)) ^ v20;
  v21 = (*(v17 + 54528))(&a13);
  return (*(v17 + 8 * ((7275 * (a13 == ((v18 - 1272) ^ 0xB08))) ^ 0xB0Du)))(v21);
}

uint64_t sub_1969E27A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v8 + 305;
  v11 = *(v9 + 8 * ((6630 * ((v10 ^ 0xFC4) == (v7 & 0x7FFFFFF8))) ^ v8));
  return v11(v10, 4036, 6630, v11, a5, a6, a7);
}

uint64_t sub_1969E2834(uint64_t a1, uint64_t a2, int a3)
{
  v10 = (v6 - 1) & 0xF;
  v11 = -v8 - v6;
  v13 = (v11 + v5 + v10 + 1) >= 0x10 && v7 >= (13 * (a3 ^ 0x1687u)) - 5457 && v11 + v4 + v10 + ((a3 - 5793) | 0x100Au) - 4227 >= 0x10;
  v14 = v11 + v3 + v10 + 6;
  v16 = !v13 || v14 < 0x10;
  return (*(v9 + 8 * ((116 * v16) ^ a3)))(v6);
}

uint64_t sub_1969E2958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v69 = v57 - a3 - 3;
  v70 = v57 - a3 - 5;
  v71 = v57 - a3 - 6;
  v72.i64[0] = v56 + v70;
  v72.i64[1] = v56 + v71;
  v73 = v57 - a3 - 4;
  v74.i64[0] = v56 + v69;
  v74.i64[1] = v56 + v73;
  v75.i64[0] = a5 + v70;
  v75.i64[1] = a5 + v71;
  v76.i64[0] = a5 + v69;
  v76.i64[1] = a5 + v73;
  v77 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v78 = vandq_s8(v74, v77);
  v79 = vandq_s8(v72, v77);
  v80 = v77;
  v81 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vdupq_n_s64(v66);
  *&STACK[0x300] = v83;
  v84 = vdupq_n_s64(v60);
  v85 = vdupq_n_s64(v61);
  v86 = vbslq_s8(v85, vsubq_s64(v84, v81), vaddq_s64(v81, v83));
  v87 = vdupq_n_s64(0x888A2F91047ADD13);
  v88 = vbslq_s8(v85, vsubq_s64(v84, v82), vaddq_s64(v82, v83));
  v89 = veorq_s8(v88, v87);
  v90 = veorq_s8(v86, v87);
  v91 = vdupq_n_s64(v62);
  v92 = veorq_s8(v86, v91);
  v93 = veorq_s8(v88, v91);
  v94 = vdupq_n_s64(a1);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v92), v94);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93), v94);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v99 = veorq_s8(v95, v96);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = vaddq_s64(v100, v98);
  v103 = vdupq_n_s64(a2);
  v104 = vdupq_n_s64(0x24D8912177D70596uLL);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v103), v101), v104);
  v106 = vdupq_n_s64(0x82D0DE87C71DD9F3);
  v107 = v104;
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v103), v102), v104), v106);
  v109 = v106;
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v112 = veorq_s8(v105, v109);
  v113 = v109;
  v114 = veorq_s8(v112, v111);
  v115 = veorq_s8(v108, v110);
  v116 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v115);
  v118 = vaddq_s64(v116, v114);
  v119 = vdupq_n_s64(0xA6F455365512A6E1);
  *&STACK[0x3C0] = v119;
  v120 = veorq_s8(v118, v119);
  v121 = veorq_s8(v117, v119);
  v122 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v124 = veorq_s8(v120, v122);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v124);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123);
  v127 = vdupq_n_s64(0xD2F19E5B011E36EELL);
  *&STACK[0x2F0] = v127;
  v128 = vdupq_n_s64(0x968730D27F70E488);
  v129 = vdupq_n_s64(0x7378066E86DAB11DuLL);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v127), v126), v128), v129);
  v131 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v127), v125), v128), v129);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v134 = veorq_s8(v130, v131);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v134);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v137 = vdupq_n_s64(0x2EAA180CCDADE282uLL);
  v138 = vdupq_n_s64(0x97550C0666D6F141);
  *&STACK[0x3B0] = v138;
  v139 = vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(v135, v135), v137)), v138);
  v140 = vdupq_n_s64(0xC67D2DBDAC7FC91DLL);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v137)), v138), v140);
  v142 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v144 = veorq_s8(v139, v140);
  v145 = veorq_s8(v144, v143);
  v146 = veorq_s8(v141, v142);
  v147 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v146);
  v149 = vdupq_n_s64(0xCDE7FE8E73F8F117);
  *&STACK[0x390] = v140;
  *&STACK[0x3A0] = v149;
  v150 = veorq_s8(vaddq_s64(v147, v145), v149);
  v151 = veorq_s8(v148, v149);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v153 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v154 = vandq_s8(v76, v80);
  v155 = vandq_s8(v75, v80);
  v156 = v80;
  v157 = vdupq_n_s64(v65);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v157);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v157);
  v161 = vdupq_n_s64(0x9AD5F752899AD369);
  *&STACK[0x380] = v161;
  v162 = vdupq_n_s64(v58);
  v163 = vsubq_s64(vorrq_s8(v158, v161), vorrq_s8(v158, v162));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v153);
  v165 = vaddq_s64(vsubq_s64(vorrq_s8(v160, v161), vorrq_s8(v160, v162)), v162);
  v166 = vdupq_n_s64(0xD33CB569E68C34BBLL);
  v167 = veorq_s8(v165, v166);
  v168 = v166;
  *&STACK[0x370] = v166;
  v169 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v170 = vaddq_s64(v163, v162);
  v171 = veorq_s8(v170, v168);
  v172 = vdupq_n_s64(0x7B7A50FE7F7A45E7uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v174 = veorq_s8(v165, v172);
  v175 = vaddq_s64(v169, v174);
  v176 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v177 = vaddq_s64(v159, v152);
  v178 = veorq_s8(v170, v172);
  v179 = vaddq_s64(v173, v178);
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v181 = vdupq_n_s64(v64);
  v182 = veorq_s8(v179, v181);
  *&STACK[0x3E0] = v181;
  v183 = veorq_s8(v182, v180);
  v184 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v185 = veorq_s8(v175, v181);
  v186 = veorq_s8(v185, v176);
  v187 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v188 = vaddq_s64(v184, v183);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v190 = vaddq_s64(v187, v186);
  v191 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v192 = vdupq_n_s64(v67);
  v193 = veorq_s8(v190, v192);
  v194 = v192;
  *&STACK[0x3D0] = v192;
  v195 = veorq_s8(v193, v191);
  v196 = vdupq_n_s64(0xAC1351F25BD82AF2);
  *&STACK[0x350] = v196;
  v197 = vdupq_n_s64(0x38uLL);
  v198 = vshlq_u64(veorq_s8(v164, v196), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v197)));
  v199 = veorq_s8(v188, v194);
  v200 = veorq_s8(v199, v189);
  v201 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v195);
  v203 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v204 = vshlq_u64(veorq_s8(v177, v196), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v197)));
  v205 = vaddq_s64(v201, v200);
  v206 = vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL);
  v207 = vdupq_n_s64(v59);
  v208 = veorq_s8(v205, v207);
  v209 = veorq_s8(v208, v206);
  v210 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v211 = veorq_s8(v202, v207);
  v212 = veorq_s8(v211, v203);
  v213 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v214 = vaddq_s64(v210, v209);
  v215 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v216 = vaddq_s64(v213, v212);
  v217 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v218 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v219 = veorq_s8(v216, v218);
  *&STACK[0x320] = v207;
  *&STACK[0x330] = v218;
  v220 = veorq_s8(v219, v217);
  v221 = vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL);
  v222 = veorq_s8(v214, v218);
  v223 = veorq_s8(v222, v215);
  v224 = vaddq_s64(v221, v220);
  v225 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v226 = vdupq_n_s64(v63);
  v227 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v226);
  *&STACK[0x2E0] = v226;
  v229 = veorq_s8(v228, v227);
  v230 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v231 = veorq_s8(v224, v226);
  v232 = veorq_s8(v231, v225);
  v233 = vaddq_s64(v230, v229);
  v234 = vdupq_n_s64(0x3B0800F1971F3628uLL);
  *&STACK[0x340] = v234;
  v235 = vsubq_s64(v233, vandq_s8(vaddq_s64(v233, v233), v234));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v237 = vsubq_s64(v236, vandq_s8(vaddq_s64(v236, v236), v234));
  v238 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v239 = vdupq_n_s64(0x1D840078CB8F9B14uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v241 = vaddq_s64(v237, v239);
  *&STACK[0x410] = v239;
  v242 = vdupq_n_s64(0x7AEEB9C89DC3417uLL);
  v243 = veorq_s8(v241, v242);
  v244 = v242;
  *&STACK[0x400] = v242;
  v245 = veorq_s8(v243, v240);
  v246 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v247 = veorq_s8(vaddq_s64(v235, v239), v244);
  v248 = vdupq_n_s64(v68);
  *&STACK[0x3F0] = v248;
  *&STACK[0x310] = v197;
  v598.val[2] = veorq_s8(v204, vshlq_u64(veorq_s8(vaddq_s64(v246, v245), v248), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v197))));
  v598.val[1] = veorq_s8(v198, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), veorq_s8(v247, v238)), v248), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v197))));
  v249 = v57 - a3 - 1;
  v250 = v57 - a3 - 2;
  v251 = v56 + v249;
  v246.i64[0] = v56 + v249;
  v246.i64[1] = v56 + v250;
  v252 = v156;
  v594 = v156;
  v595 = v85;
  v253 = vandq_s8(v246, v156);
  v254 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v255 = *&STACK[0x300];
  v256 = vbslq_s8(v85, vsubq_s64(v84, v254), vaddq_s64(v254, *&STACK[0x300]));
  v257 = veorq_s8(v256, v87);
  *&STACK[0x2C0] = v94;
  *&STACK[0x2D0] = v91;
  v258 = veorq_s8(v256, v91);
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v94);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = v103;
  *&STACK[0x290] = v107;
  *&STACK[0x2A0] = v103;
  *&STACK[0x270] = v128;
  *&STACK[0x280] = v113;
  v263 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), v103), v261), v107), v113);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v265 = *&STACK[0x3C0];
  v266 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264), *&STACK[0x3C0]);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267);
  v269 = *&STACK[0x2F0];
  v270 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v268, v268), *&STACK[0x2F0]), v268), v128);
  *&STACK[0x260] = v129;
  v271 = veorq_s8(v270, v129);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272);
  v274 = *&STACK[0x380];
  v275 = veorq_s8(vaddq_s64(vsubq_s64(v273, vandq_s8(vaddq_s64(v273, v273), v137)), *&STACK[0x3B0]), *&STACK[0x390]);
  v276 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v277 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v278 = a5 + v249;
  v256.i64[0] = a5 + v249;
  v256.i64[1] = a5 + v250;
  v279 = vandq_s8(v256, v252);
  *&STACK[0x2B0] = v157;
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v157);
  *&STACK[0x250] = v162;
  v281 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v282 = vaddq_s64(v277, v276);
  v283 = vaddq_s64(vsubq_s64(vorrq_s8(v280, v274), vorrq_s8(v280, v162)), v162);
  v284 = veorq_s8(v283, *&STACK[0x370]);
  v285 = veorq_s8(v283, v172);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285);
  v287 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v288 = veorq_s8(v282, *&STACK[0x3A0]);
  v289 = veorq_s8(v288, v281);
  v290 = vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL);
  v291 = veorq_s8(v286, *&STACK[0x3E0]);
  v292 = veorq_s8(v291, v287);
  v293 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), *&STACK[0x3D0]);
  v294 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v295 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v296 = vaddq_s64(v290, v289);
  v297 = veorq_s8(vaddq_s64(v295, v294), v207);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), *&STACK[0x330]);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), *&STACK[0x2E0]);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v303, vandq_s8(vaddq_s64(v303, v303), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v598.val[0] = veorq_s8(vshlq_u64(veorq_s8(v296, *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x310]))));
  v305 = v57 - a3 - 7;
  v306 = (a56 + 13) + v57 - a3 - 3620;
  v246.i64[0] = v56 + v305;
  v246.i64[1] = v56 + v306;
  v307 = vandq_s8(v246, v594);
  v308 = vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL);
  v309 = vbslq_s8(v85, vsubq_s64(v84, v308), vaddq_s64(v308, v255));
  v310 = veorq_s8(v309, v87);
  v311 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v312 = veorq_s8(v309, v91);
  v313 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v314 = veorq_s8(vaddq_s64(v311, v312), v94);
  v315 = veorq_s8(v314, v313);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v315);
  v317 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v316, v316), v262), v316), v107), v113);
  v318 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL));
  v319 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL);
  v321 = veorq_s8(vaddq_s64(v319, v318), v265);
  v322 = veorq_s8(v321, v320);
  v323 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v324 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v325 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v323, v323), v269), v323), v128), v129);
  v326 = veorq_s8(v325, v324);
  v327 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326);
  v328 = v137;
  v329 = vsubq_s64(v327, vandq_s8(vaddq_s64(v327, v327), v137));
  v330 = vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL);
  v256.i64[0] = a5 + v305;
  v256.i64[1] = a5 + v306;
  v331 = vandq_s8(v256, v594);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v157);
  v333 = *&STACK[0x250];
  v334 = vaddq_s64(vsubq_s64(vorrq_s8(v332, v274), vorrq_s8(v332, *&STACK[0x250])), *&STACK[0x250]);
  v335 = veorq_s8(v334, *&STACK[0x370]);
  v336 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v337 = *&STACK[0x3B0];
  v338 = *&STACK[0x390];
  v339 = veorq_s8(vaddq_s64(v329, *&STACK[0x3B0]), *&STACK[0x390]);
  v340 = veorq_s8(v339, v330);
  v341 = vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL);
  v342 = veorq_s8(v334, v172);
  v343 = vaddq_s64(v336, v342);
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v345 = veorq_s8(v343, *&STACK[0x3E0]);
  v346 = veorq_s8(v345, v344);
  v347 = *&STACK[0x3D0];
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v346), *&STACK[0x3D0]);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL));
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v352 = vaddq_s64(v341, v340);
  v353 = vaddq_s64(v350, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL);
  v355 = *&STACK[0x320];
  v356 = veorq_s8(v353, *&STACK[0x320]);
  v357 = veorq_s8(v356, v354);
  v358 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v357), *&STACK[0x330]);
  v359 = veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL));
  v360 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v361 = veorq_s8(v352, *&STACK[0x3A0]);
  v362 = *&STACK[0x3A0];
  v363 = veorq_s8(v361, v351);
  v364 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v365 = veorq_s8(vaddq_s64(v360, v359), *&STACK[0x2E0]);
  v366 = *&STACK[0x2E0];
  v367 = veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v368 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v367);
  v369 = *&STACK[0x340];
  v370 = veorq_s8(vaddq_s64(vsubq_s64(v368, vandq_s8(vaddq_s64(v368, v368), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v371 = *&STACK[0x310];
  v372 = *&STACK[0x350];
  v598.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v364, v363), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL), veorq_s8(v370, vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), *&STACK[0x310]))));
  *&STACK[0x230] = vqtbl4q_s8(v598, *&STACK[0x360]);
  v373 = v57 - a3 - 13;
  v374 = v57 - a3 - 14;
  v375 = v57 - a3 - 15;
  v376 = v57 - a3 - 16;
  v360.i64[0] = v56 + v375;
  v360.i64[1] = v56 + v376;
  v207.i64[0] = v56 + v373;
  v207.i64[1] = v56 + v374;
  v377 = vandq_s8(v360, v594);
  v378 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v379 = vandq_s8(v207, v594);
  v598.val[0] = vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL);
  v380 = v57 - a3 - 11;
  v381 = v57 - a3 - 12;
  v363.i64[0] = v56 + v380;
  v363.i64[1] = v56 + v381;
  *&STACK[0x200] = v363;
  v382 = vandq_s8(v363, v594);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL);
  v383 = v57 - a3 - 9;
  v384 = v57 - a3 - 10;
  v363.i64[0] = v56 + v383;
  v363.i64[1] = v56 + v384;
  *&STACK[0x210] = v363;
  v385 = vandq_s8(v363, v594);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v386 = vbslq_s8(v595, vsubq_s64(v84, v378), vaddq_s64(v378, *&STACK[0x300]));
  v387 = vbslq_s8(v595, vsubq_s64(v84, v598.val[0]), vaddq_s64(v598.val[0], *&STACK[0x300]));
  v598.val[3] = vbslq_s8(v595, vsubq_s64(v84, v598.val[1]), vaddq_s64(v598.val[1], *&STACK[0x300]));
  *&STACK[0x300] = vbslq_s8(v595, vsubq_s64(v84, v598.val[2]), vaddq_s64(v598.val[2], *&STACK[0x300]));
  v388 = veorq_s8(v386, v87);
  v389 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v390 = veorq_s8(v387, v87);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v391 = veorq_s8(v386, *&STACK[0x2D0]);
  v392 = vaddq_s64(v389, v391);
  v393 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v394 = veorq_s8(v387, *&STACK[0x2D0]);
  v395 = vaddq_s64(v598.val[1], v394);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL);
  v396 = veorq_s8(v395, *&STACK[0x2C0]);
  v397 = veorq_s8(v396, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v398 = veorq_s8(v392, *&STACK[0x2C0]);
  v399 = veorq_s8(v398, v393);
  v400 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v401 = vaddq_s64(v598.val[1], v397);
  v402 = vaddq_s64(v400, v399);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v403 = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v402, v402), *&STACK[0x2A0]), v402), *&STACK[0x290]), *&STACK[0x280]);
  v405 = veorq_s8(v404, v403);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v401, v401), *&STACK[0x2A0]), v401), *&STACK[0x290]), *&STACK[0x280]);
  v408 = veorq_s8(v407, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v409 = vaddq_s64(v406, v405);
  v410 = vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL);
  v411 = veorq_s8(vaddq_s64(v598.val[1], v408), *&STACK[0x3C0]);
  v412 = veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  v413 = veorq_s8(v409, *&STACK[0x3C0]);
  v414 = veorq_s8(v413, v410);
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v416 = vaddq_s64(v598.val[1], v412);
  v417 = vaddq_s64(v415, v414);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v419 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v417, v417), v269), v417), *&STACK[0x270]), *&STACK[0x260]);
  v420 = veorq_s8(v419, v418);
  v421 = vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL);
  v422 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v416, v416), v269), v416), *&STACK[0x270]), *&STACK[0x260]);
  v423 = veorq_s8(v422, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v424 = vaddq_s64(v421, v420);
  v596 = v328;
  v425 = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v426 = vaddq_s64(v598.val[1], v423);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v427 = veorq_s8(vaddq_s64(vsubq_s64(v426, vandq_s8(vaddq_s64(v426, v426), v328)), v337), v338);
  v598.val[1] = veorq_s8(v427, v598.val[1]);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(v424, vandq_s8(vaddq_s64(v424, v424), v328)), v337), v338);
  v429 = veorq_s8(v428, v425);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429);
  v431 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v244.i64[0] = a5 + v375;
  v244.i64[1] = a5 + v376;
  v432 = vandq_s8(v244, v594);
  v433 = vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL);
  v256.i64[0] = a5 + v373;
  v256.i64[1] = a5 + v374;
  v434 = vandq_s8(v256, v594);
  v435 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL), *&STACK[0x2B0]);
  v436 = vsubq_s64(vorrq_s8(v435, *&STACK[0x380]), vorrq_s8(v435, v333));
  v437 = vaddq_s64(v433, *&STACK[0x2B0]);
  v438 = vsraq_n_u64(vshlq_n_s64(v598.val[1], 3uLL), v598.val[1], 0x3DuLL);
  v598.val[1] = vaddq_s64(v598.val[2], v598.val[1]);
  v439 = vaddq_s64(vsubq_s64(vorrq_s8(v437, *&STACK[0x380]), vorrq_s8(v437, v333)), v333);
  v598.val[2] = veorq_s8(v439, *&STACK[0x370]);
  v440 = vsraq_n_u64(vshlq_n_s64(v598.val[2], 0x38uLL), v598.val[2], 8uLL);
  v441 = vaddq_s64(v436, v333);
  v598.val[2] = veorq_s8(v441, *&STACK[0x370]);
  v442 = vsraq_n_u64(vshlq_n_s64(v598.val[2], 0x38uLL), v598.val[2], 8uLL);
  v443 = veorq_s8(v430, v362);
  v444 = veorq_s8(v443, v431);
  v598.val[2] = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v445 = veorq_s8(v439, v172);
  v446 = vaddq_s64(v440, v445);
  v447 = vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL);
  v448 = veorq_s8(v441, v172);
  v449 = vaddq_s64(v442, v448);
  v450 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v451 = veorq_s8(v598.val[1], v362);
  v598.val[1] = veorq_s8(v451, v438);
  v452 = vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL);
  v453 = veorq_s8(v449, *&STACK[0x3E0]);
  v454 = veorq_s8(v453, v450);
  v455 = vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL);
  v456 = veorq_s8(v446, *&STACK[0x3E0]);
  v457 = veorq_s8(v456, v447);
  v458 = vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL);
  v459 = vaddq_s64(v455, v454);
  v460 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v461 = vaddq_s64(v452, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL);
  v462 = veorq_s8(vaddq_s64(v458, v457), v347);
  v463 = veorq_s8(v462, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL);
  v464 = veorq_s8(v459, v347);
  v465 = veorq_s8(v464, v460);
  v466 = vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL);
  v467 = vaddq_s64(v598.val[1], v463);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL);
  v468 = vsraq_n_u64(vshlq_n_s64(v465, 3uLL), v465, 0x3DuLL);
  v469 = veorq_s8(vaddq_s64(v466, v465), v355);
  v470 = veorq_s8(v469, v468);
  v471 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v472 = veorq_s8(v467, v355);
  v473 = veorq_s8(v472, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL);
  v474 = vaddq_s64(v471, v470);
  v475 = vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL);
  v476 = vaddq_s64(v598.val[1], v473);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL);
  v477 = veorq_s8(v476, *&STACK[0x330]);
  v478 = veorq_s8(v477, v598.val[1]);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL);
  v479 = vaddq_s64(v598.val[2], v444);
  v480 = veorq_s8(v474, *&STACK[0x330]);
  v481 = veorq_s8(v480, v475);
  v482 = vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL);
  v483 = vaddq_s64(v598.val[1], v478);
  v598.val[1] = vsraq_n_u64(vshlq_n_s64(v478, 3uLL), v478, 0x3DuLL);
  v484 = vshlq_u64(veorq_s8(v461, v372), vnegq_s64(vandq_s8(vshlq_n_s64(v207, 3uLL), v371)));
  v485 = veorq_s8(vaddq_s64(v482, v481), v366);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v487 = vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL);
  v488 = veorq_s8(v483, v366);
  v489 = veorq_s8(v488, v598.val[1]);
  v490 = vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL);
  v491 = vaddq_s64(v487, v486);
  v492 = vaddq_s64(v490, v489);
  v493 = vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL);
  v494 = vsraq_n_u64(vshlq_n_s64(v489, 3uLL), v489, 0x3DuLL);
  v495 = veorq_s8(vaddq_s64(vsubq_s64(v492, vandq_s8(vaddq_s64(v492, v492), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v496 = veorq_s8(vaddq_s64(vsubq_s64(v491, vandq_s8(vaddq_s64(v491, v491), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[3] = veorq_s8(vshlq_u64(veorq_s8(v479, v372), vnegq_s64(vandq_s8(vshlq_n_s64(v360, 3uLL), v371))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), veorq_s8(v495, v494)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v244, 3uLL), v371))));
  v597.val[2] = veorq_s8(v484, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL), veorq_s8(v496, v493)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v256, 3uLL), v371))));
  v497 = veorq_s8(v598.val[3], v87);
  v498 = vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL);
  v499 = veorq_s8(v598.val[3], *&STACK[0x2D0]);
  v500 = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v501 = veorq_s8(vaddq_s64(v498, v499), *&STACK[0x2C0]);
  v502 = veorq_s8(v501, v500);
  v503 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL), v502);
  v504 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v503, v503), *&STACK[0x2A0]), v503), *&STACK[0x290]), *&STACK[0x280]);
  v505 = veorq_s8(v504, vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL));
  v506 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL), v505), *&STACK[0x3C0]);
  v507 = veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL));
  v508 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL), v507);
  v509 = vsraq_n_u64(vshlq_n_s64(v507, 3uLL), v507, 0x3DuLL);
  v598.val[3].i64[0] = a5 + v380;
  v598.val[3].i64[1] = a5 + v381;
  v510 = vandq_s8(v598.val[3], v594);
  v511 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510, 0x38uLL), v510, 8uLL), *&STACK[0x2B0]);
  v512 = vaddq_s64(vsubq_s64(vorrq_s8(v511, *&STACK[0x380]), vorrq_s8(v511, v333)), v333);
  v513 = veorq_s8(v512, *&STACK[0x370]);
  v514 = vsraq_n_u64(vshlq_n_s64(v513, 0x38uLL), v513, 8uLL);
  v515 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v508, v508), *&STACK[0x2F0]), v508), *&STACK[0x270]), *&STACK[0x260]);
  v516 = veorq_s8(v515, v509);
  v517 = vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL);
  v518 = veorq_s8(v512, v172);
  v519 = vaddq_s64(v514, v518);
  v520 = vsraq_n_u64(vshlq_n_s64(v518, 3uLL), v518, 0x3DuLL);
  v521 = veorq_s8(v519, *&STACK[0x3E0]);
  v522 = veorq_s8(v521, v520);
  v523 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), v522), *&STACK[0x3D0]);
  v524 = veorq_s8(v523, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL));
  v525 = vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL);
  v526 = vsraq_n_u64(vshlq_n_s64(v516, 3uLL), v516, 0x3DuLL);
  v527 = vaddq_s64(v517, v516);
  v528 = vaddq_s64(v525, v524);
  v529 = vsraq_n_u64(vshlq_n_s64(v524, 3uLL), v524, 0x3DuLL);
  v530 = vsubq_s64(v527, vandq_s8(vaddq_s64(v527, v527), v596));
  v531 = veorq_s8(v528, *&STACK[0x320]);
  v532 = veorq_s8(v531, v529);
  v533 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v531, 0x38uLL), v531, 8uLL), v532);
  v534 = vsraq_n_u64(vshlq_n_s64(v532, 3uLL), v532, 0x3DuLL);
  v535 = veorq_s8(vaddq_s64(v530, *&STACK[0x3B0]), *&STACK[0x390]);
  v536 = veorq_s8(v535, v526);
  v537 = vsraq_n_u64(vshlq_n_s64(v535, 0x38uLL), v535, 8uLL);
  v538 = veorq_s8(v533, *&STACK[0x330]);
  v539 = veorq_s8(v538, v534);
  v540 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538, 0x38uLL), v538, 8uLL), v539), v366);
  v541 = veorq_s8(v540, vsraq_n_u64(vshlq_n_s64(v539, 3uLL), v539, 0x3DuLL));
  v542 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL), v541);
  v543 = vsraq_n_u64(vshlq_n_s64(v536, 3uLL), v536, 0x3DuLL);
  v544 = vaddq_s64(v537, v536);
  v545 = vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL);
  v546 = veorq_s8(v544, *&STACK[0x3A0]);
  v547 = veorq_s8(v546, v543);
  v548 = vsraq_n_u64(vshlq_n_s64(v546, 0x38uLL), v546, 8uLL);
  v549 = veorq_s8(vaddq_s64(vsubq_s64(v542, vandq_s8(vaddq_s64(v542, v542), v369)), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v548, v547), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x200], 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v549, 0x38uLL), v549, 8uLL), veorq_s8(v549, v545)), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v598.val[3], 3uLL), *&STACK[0x310]))));
  v550 = veorq_s8(*&STACK[0x300], v87);
  v551 = veorq_s8(*&STACK[0x300], *&STACK[0x2D0]);
  v552 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v550, 0x38uLL), v550, 8uLL), v551), *&STACK[0x2C0]);
  v553 = veorq_s8(v552, vsraq_n_u64(vshlq_n_s64(v551, 3uLL), v551, 0x3DuLL));
  v554 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v552, 0x38uLL), v552, 8uLL), v553);
  v555 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v554, v554), *&STACK[0x2A0]), v554), *&STACK[0x290]), *&STACK[0x280]);
  v556 = veorq_s8(v555, vsraq_n_u64(vshlq_n_s64(v553, 3uLL), v553, 0x3DuLL));
  v557 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v555, 0x38uLL), v555, 8uLL), v556), *&STACK[0x3C0]);
  v558 = veorq_s8(v557, vsraq_n_u64(vshlq_n_s64(v556, 3uLL), v556, 0x3DuLL));
  v559 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v557, 0x38uLL), v557, 8uLL), v558);
  v560 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v559, v559), *&STACK[0x2F0]), v559), *&STACK[0x270]), *&STACK[0x260]);
  v561 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v558, 3uLL), v558, 0x3DuLL));
  v562 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL), v561);
  v563 = vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL);
  v564 = vaddq_s64(vsubq_s64(v562, vandq_s8(vaddq_s64(v562, v562), v596)), *&STACK[0x3B0]);
  v562.i64[0] = a5 + v383;
  v562.i64[1] = a5 + v384;
  v565 = vandq_s8(v562, v594);
  v566 = veorq_s8(v564, *&STACK[0x390]);
  v567 = veorq_s8(v566, v563);
  v568 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v565, 0x38uLL), v565, 8uLL), *&STACK[0x2B0]);
  v569 = vsraq_n_u64(vshlq_n_s64(v566, 0x38uLL), v566, 8uLL);
  v570 = vsubq_s64(vorrq_s8(v568, *&STACK[0x380]), vorrq_s8(v568, *&STACK[0x250]));
  v571 = vsraq_n_u64(vshlq_n_s64(v567, 3uLL), v567, 0x3DuLL);
  v572 = vaddq_s64(v569, v567);
  v573 = vaddq_s64(v570, *&STACK[0x250]);
  v574 = veorq_s8(v573, *&STACK[0x370]);
  v575 = veorq_s8(v573, v172);
  v576 = veorq_s8(v572, *&STACK[0x3A0]);
  v577 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v574, 0x38uLL), v574, 8uLL), v575), *&STACK[0x3E0]);
  v578 = veorq_s8(v577, vsraq_n_u64(vshlq_n_s64(v575, 3uLL), v575, 0x3DuLL));
  v579 = veorq_s8(v576, v571);
  v580 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v577, 0x38uLL), v577, 8uLL), v578), *&STACK[0x3D0]);
  v581 = vsraq_n_u64(vshlq_n_s64(v576, 0x38uLL), v576, 8uLL);
  v582 = veorq_s8(v580, vsraq_n_u64(vshlq_n_s64(v578, 3uLL), v578, 0x3DuLL));
  v583 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v582), *&STACK[0x320]);
  v584 = veorq_s8(v583, vsraq_n_u64(vshlq_n_s64(v582, 3uLL), v582, 0x3DuLL));
  v585 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v583, 0x38uLL), v583, 8uLL), v584), *&STACK[0x330]);
  v586 = vsraq_n_u64(vshlq_n_s64(v584, 3uLL), v584, 0x3DuLL);
  v587 = veorq_s8(vaddq_s64(v581, v579), *&STACK[0x350]);
  v588 = veorq_s8(v585, v586);
  v589 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v585, 0x38uLL), v585, 8uLL), v588), *&STACK[0x2E0]);
  v590 = veorq_s8(v589, vsraq_n_u64(vshlq_n_s64(v588, 3uLL), v588, 0x3DuLL));
  v591 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v589, 0x38uLL), v589, 8uLL), v590);
  v592 = veorq_s8(vaddq_s64(vsubq_s64(v591, vandq_s8(vaddq_s64(v591, v591), *&STACK[0x340])), *&STACK[0x410]), *&STACK[0x400]);
  v597.val[0] = veorq_s8(vshlq_u64(v587, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x210], 3uLL), *&STACK[0x310]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v592, 0x38uLL), v592, 8uLL), veorq_s8(v592, vsraq_n_u64(vshlq_n_s64(v590, 3uLL), v590, 0x3DuLL))), *&STACK[0x3F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v562, 3uLL), *&STACK[0x310]))));
  v597.val[0].i64[0] = vqtbl4q_s8(v597, *&STACK[0x360]).u64[0];
  v597.val[1] = *&STACK[0x230];
  v597.val[1].i64[1] = v597.val[0].i64[0];
  v597.val[1] = vrev64q_s8(v597.val[1]);
  *(v278 - 15) = veorq_s8(vextq_s8(v597.val[1], v597.val[1], 8uLL), *(v251 - 15));
  return (*(a4 + 8 * ((6477 * (a3 + 16 == v57)) ^ a56)))(a1, a2);
}

uint64_t sub_1969E4080(int a1)
{
  v3 = ((655 * (a1 ^ 0xFB8) + 1568258063) & 0xA286597F ^ 0xFFFFFFFFFFFFE6C3) + v1;
  v5 = v3 > 0xF || ((v1 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((120 * v5) ^ a1)))();
}

uint64_t sub_1969E4244@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  *v14 = 0;
  v16 = a1 ^ v12;
  v17 = v11 + a1 + 1598;
  a10 = a1 + 1575331711 * ((781537595 - (&a10 | 0x2E95513B) + (&a10 | 0xD16AAEC4)) ^ 0xBD313BC6) + 945431364;
  v18 = (*(v15 + 8 * (v13 + a1 + 475)))(&a10);
  return (*(v15 + 8 * (((a11 == 1906281716) * (v16 ^ 0x17CD)) | v17)))(v18);
}

uint64_t sub_1969E4350()
{
  *(v5 - 216) = 654144011 * ((365282197 - ((v5 - 224) | 0x15C5C395) + ((v5 - 224) | 0xEA3A3C6A)) ^ 0xC6EE41F6) + 86337211 + v0;
  v6 = (*(v3 + 8 * v1))(v5 - 224);
  *(v4 + 16) = *(v5 - 224) ^ v2;
  return (*(v3 + 8 * ((v0 - 2202) | 0x10)))(v6);
}

void fp_dh_de085629babfb6c2229160c92ba71af3(_DWORD *a1)
{
  v1 = 1012216201 * ((-2 - ((a1 | 0xF04D769A) + (~a1 | 0xFB28965))) ^ 0x8B1B0189);
  v2 = *(*a1 + 12) - 1555047569;
  v3 = a1[4] - v1 - 1379421910;
  v4 = (v3 < 0xFA1D8F9E) ^ (v2 < 0xFA1D8F9E);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0xFA1D8F9E;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969E4844()
{
  v6 = *v2;
  *(v4 - 1) = *(v2 - 1);
  *v4 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_1969E4958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x618];
  STACK[0x6B8] = *(a6 + 8 * v7);
  return (*(a6 + 8 * (((v8 != 0) * ((5 * ((v7 - 2132795572) & 0x7F1FF699 ^ 0x12E1)) ^ 0x1600)) ^ (v7 - 2132795572) & 0x7F1FF699)))();
}

void fp_dh_f33c966baf8c7b2c19d8f48bc4b56777(uint64_t a1)
{
  v1 = 753662761 * (a1 ^ 0x651AFB4B);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969E4B84@<X0>(int a1@<W8>)
{
  v4 = v2 - a1 - 514;
  *v1 = (v7 << ((v2 - a1 - 2) ^ 0x5Bu)) | v8;
  v10 = v2 - a1 + 2057737816 - 1790939281 * (((&v10 | 0x2EAAB504) - (&v10 & 0x2EAAB504)) ^ 0xD6769545);
  v11 = v9;
  (*(v3 + 8 * (v2 - a1 + 2057738542)))(&v10);
  v10 = 2057738330 - 1790939281 * ((((2 * &v10) | 0x898B68CA) - &v10 - 1153807461) ^ 0xBC199424) + v4;
  v11 = v6;
  (*(v3 + 8 * (v4 ^ 0x855965D0)))(&v10);
  return 0;
}

uint64_t sub_1969E4D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, uint64_t a17, int *a18, unsigned int a19, unsigned int a20)
{
  v27 = *v20;
  v28 = (v23 + 960206865) & 0xC6C467EC;
  v29 = ((&a16 - 1109901648 - 2 * (&a16 & 0xBDD83EB0)) ^ 0xBD4E6D87) * v24;
  a16 = v26;
  LODWORD(a17) = v25 + v29 + 10;
  HIDWORD(a17) = (v23 + 4218) ^ v29;
  (*(v22 + 8 * (v23 ^ 0x1F3E)))(&a16);
  v30 = *(v21 + 16) + 730960721 - ((2 * *(v21 + 16)) & 0x572331AA) + 1412;
  v31 = 1575331711 * ((-2096424475 - (&a16 | 0x830B19E5) + (&a16 | 0x7CF4E61A)) ^ 0x10AF7318);
  a17 = v21 + 80;
  LODWORD(a16) = v30 ^ v31;
  LODWORD(a18) = v23 - 1989036853 + v31;
  (*(v22 + 8 * (v23 ^ 0x1F63)))(&a16);
  v32 = v28 + *(v21 + 20) + 730960721 - ((2 * *(v21 + 20)) & 0x572331AA);
  v33 = 1575331711 * ((((&a16 | 0xDDD02E32) ^ 0xFFFFFFFE) - (~&a16 | 0x222FD1CD)) ^ 0x4E7444CF);
  LODWORD(a18) = v23 - 1989036853 + v33;
  LODWORD(a16) = v32 ^ v33;
  a17 = v21 + 84;
  (*(v22 + 8 * (v23 ^ 0x1F63)))(&a16);
  v34 = 489239129 * ((177793942 - (&a16 | 0xA98EB96) + (&a16 | 0xF5671469)) ^ 0x4C4F375F);
  a16 = &a12;
  a18 = v26;
  a19 = v34 + 426488402;
  a20 = v34 ^ 0x99603FFC;
  LODWORD(a17) = v34 + v23 + 2759;
  (*(v22 + 8 * (v23 ^ 0x1F4E)))(&a16);
  v35 = *(v21 + 4);
  *v21 += a12;
  *(v21 + 4) = v35 + a13;
  v36 = *(v21 + 12);
  *(v21 + 8) += a14;
  *(v21 + 12) = v36 + a15;
  a16 = v26;
  a18 = v21;
  LODWORD(a17) = v23 + 1738598062 + 1068996913 * (((&a16 | 0xB3520367) - (&a16 & 0xB3520367)) ^ 0x66BCE2F6);
  (*(v22 + 8 * (v23 ^ 0x1F2A)))(&a16);
  v37 = 1825732043 * (&a16 ^ 0x965337);
  LODWORD(a17) = v37 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v37;
  a16 = v21;
  (*(v22 + 8 * (v23 + 5426)))(&a16);
  *v27 = *v21 - ((2 * *v21) & 0xD8) - 20;
  v27[1] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xD8) - 20;
  v27[2] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xD8) - 20;
  v27[3] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xD8) - 20;
  v27[4] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xD8) - 20;
  v27[5] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xD8) - 20;
  v27[6] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xD8) - 20;
  v27[7] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xD8) - 20;
  v27[8] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xD8) - 20;
  v27[9] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xD8) - 20;
  v27[10] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xD8) - 20;
  v27[11] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xD8) - 20;
  v27[12] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xD8) - 20;
  v27[13] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xD8) - 20;
  v27[14] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xD8) - 20;
  v27[15] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xD8) - 20;
  v38 = 1825732043 * ((((2 * &a16) | 0x8233B3F0) - &a16 - 1092213240) ^ 0x418F8ACF);
  a16 = v21;
  LODWORD(a17) = v38 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v38;
  (*(v22 + 8 * (v23 + 5426)))(&a16);
  a16 = v26;
  a18 = v21;
  LODWORD(a17) = v23 + 1738598062 + 1068996913 * (&a16 ^ 0xD5EEE191);
  (*(v22 + 8 * (v23 ^ 0x1F2A)))(&a16);
  v39 = 1825732043 * ((&a16 & 0x5366CB58 | ~(&a16 | 0x5366CB58)) ^ 0xAC0F6790);
  a16 = v21;
  LODWORD(a17) = v39 + 1865116593;
  HIDWORD(a17) = (v23 + 4218) ^ v39;
  v40 = (*(v22 + 8 * (v23 ^ 0x1F3E)))(&a16);
  v27[4] = *v21 - ((2 * *v21) & 0xD8) - 20;
  v27[5] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xD8) - 20;
  v27[6] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xD8) - 20;
  v27[7] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xD8) - 20;
  v27[8] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xD8) - 20;
  v27[9] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xD8) - 20;
  v27[10] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xD8) - 20;
  v27[11] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xD8) - 20;
  v27[12] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xD8) - 20;
  v27[13] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xD8) - 20;
  v27[14] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xD8) - 20;
  v27[15] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xD8) - 20;
  v27[16] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xD8) - 20;
  v27[17] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xD8) - 20;
  v27[18] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xD8) - 20;
  v27[19] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xD8) - 20;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  return (*(v22 + 8 * (v28 ^ (2 * (((v28 + 1140656762) & 0xBC02FB5F) != 2942)))))(v40);
}

uint64_t sub_1969E5478()
{
  *v3 = ((v0 + 32) & 0xDB ^ 0x5B) & v1;
  v4 = __rev16(*(v3 + 6)) | ((*(v3 + 2) << ((((((v0 + 32) & 0xDB) + 117) & 0xBD) + 76) ^ 0xF1u)) + (((((v0 - 1607825632) & 0x5FD56FDB ^ 0x5B) & v1) << 56) | (*(v3 + 1) << 48)) + (*(v3 + 3) << 32) + (*(v3 + 4) << 24) + (*(v3 + 5) << 16));
  return (*(v2 + 8 * ((7 * (((((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0xE5D8DC1BF255B353) + 0x1A2723E40DAA4CADLL) ^ (((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0xCAA0FB35A1BE535ELL) + 0x355F04CA5E41ACA2) ^ (((v4 + 0x1F6D1F4CEF332AFALL - ((2 * v4) & 0x3EDA3E99DE6655F4)) ^ 0x30153862BCD8CAF7) - 0x30153862BCD8CAF7)) + 0x1F6D1F4CEF332AFALL < 0xE)) ^ (v0 - 1607825632) & 0x5FD56FDB)))();
}

uint64_t sub_1969E56C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (v9 == 41591)
  {
    return (*(a6 + 8 * ((a8 - 5022) ^ ((2 * (v11 == -1720256289)) | ((v11 == -1720256289) << 6)))))();
  }

  if (v9 != 26075 && v9 != 45445)
  {
    LODWORD(STACK[0x414]) = v10;
    STACK[0x6F8] = *(a6 + 8 * (a8 - 5476));
    JUMPOUT(0x1969CE4D0);
  }

  STACK[0x818] = v8;
  return (*(a6 + 8 * ((4487 * (v9 == (15 * (a8 ^ 0x1638) - 25460))) ^ (a8 - 3611))))();
}

uint64_t sub_1969E5868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a6 + 8 * (((v7 ^ 0xBA2) + 1309) | (8 * (((v6 != 0x9976F8DB) ^ (121 * (((v7 ^ 0xA2) + 29) ^ 0xD2))) & 1)))))();
}

uint64_t sub_1969E58C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, unsigned int a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19)
{
  v25 = v24 + a13;
  *v19 += a13;
  a17 = v22;
  a18 = &a11;
  a19 = v23 + 1621291457 * (((&a14 ^ 0xFB17A6A0) & 0x6511E70B | ~(&a14 ^ 0xFB17A6A0 | 0x6511E70B)) ^ 0x57EE3FCD) + 3293;
  a14 = v25;
  a16 = v20;
  v26 = (*(v21 + 8 * (v23 ^ 0x13F9)))(&a14);
  return (*(v21 + 8 * (((a15 == (((v23 - 2233) | 0x844) ^ 0x719F84B0)) * (((v23 + 525444770) & 0xE0AE5FF6) - 3301)) ^ v23)))(v26);
}

void sub_1969E59A0()
{
  LODWORD(STACK[0x4F0]) = 0;
  LODWORD(STACK[0x588]) = 244766;
  LODWORD(STACK[0x570]) = 245548;
  LODWORD(STACK[0x56C]) = 246330;
  LODWORD(STACK[0x568]) = 247112;
  LODWORD(STACK[0x564]) = 249458;
  LODWORD(STACK[0x560]) = 250240;
  LODWORD(STACK[0x4EC]) = 251022;
  LODWORD(STACK[0x558]) = 251804;
  LODWORD(STACK[0x4E8]) = 253368;
  LODWORD(STACK[0x554]) = 498916;
  LODWORD(STACK[0x548]) = 499698;
  LODWORD(STACK[0x544]) = 500480;
  LODWORD(STACK[0x540]) = 502044;
  LODWORD(STACK[0x53C]) = 502826;
  LODWORD(STACK[0x538]) = 503608;
  LODWORD(STACK[0x534]) = 505172;
  LODWORD(STACK[0x528]) = 506736;
  LODWORD(STACK[0x524]) = 507518;
  LODWORD(STACK[0x520]) = 708;
  LODWORD(STACK[0x4B0]) = v0 + 4453;
  LODWORD(STACK[0x598]) = 475 * ((v0 + 4453) ^ 0x1874);
  LODWORD(STACK[0x518]) = 248676;
  LODWORD(STACK[0x514]) = 501262;
  LODWORD(STACK[0x510]) = 505954;
  LODWORD(STACK[0x50C]) = 252586;
  JUMPOUT(0x1969E5B08);
}

void sub_1969E69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = (((2 * v9) & 0x3BB79277EAE3FF00) + (v9 ^ 0x1DDBC93BF571FF80) + v8 - 0x1DDBC93BF571FF80);
  v11 = (*v10 << ((a8 + 93) ^ 0xA2)) | (v10[1] << 16) | (v10[2] << 8);
  LODWORD(STACK[0x6D4]) = (v11 | v10[3]) - 1720256293 - 2 * ((v11 | v10[3]) & 0x1976F8DF ^ v10[3] & 4);
  JUMPOUT(0x1968C8F00);
}

uint64_t sub_1969E6EB0@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = (v15 + 4 * v13);
  v20 = HIDWORD(v12) + (*v19 ^ v10) + HIDWORD(v14) + v18 * (*(*(a10 + 8) + 4 * v13) ^ v10);
  *(v19 - 1) = v20 + v10 - ((v20 << (v16 ^ 0x73)) & a2);
  return (*(v17 + 8 * ((v13 + 1 == a3) ^ v16)))(a1, v16 ^ v11);
}

void sub_1969E712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v26 - 128) = v25;
  *(v26 - 120) = &a14;
  *(v26 - 112) = &a22;
  *(v26 - 104) = a12;
  *(v26 - 136) = v23 + ((((2 * (v26 - 144)) | 0x164C400C) - (v26 - 144) - 187047942) ^ 0x44FE2331) * v22 + 3553;
  *(v26 - 144) = &a14;
  (*(v24 + 8 * (v23 ^ 0x18C0)))(v26 - 144);
  JUMPOUT(0x19699D7ACLL);
}

uint64_t sub_1969E72EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 | 0x27951E1F) - (&a13 & 0x27951E1F)) ^ 0xA33C96F3);
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 - 1793516106;
  a16 = a10;
  a17 = &a11;
  a18 = v21 + v20 - 1795305885;
  v22 = (*(v19 + 8 * (v20 ^ 0x10C6)))(&a13);
  return (*(v19 + 8 * ((6985 * (a14 == ((v20 + 2434) ^ 0x1B5D ^ (v18 - 2186)))) ^ v20)))(v22);
}

uint64_t sub_1969E7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5603));
  v7 = STACK[0x290] + STACK[0x200] - 0x2D6560F450244D3ELL;
  v8 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v48) & 0xFBFFFFFFFFFFFFFFLL;
  v9 = v8 ^ 0x4DE9423B6F16E7D2;
  v8 ^= 0xE5AFA7ACF6E0968ELL;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v12 = (v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0xF5A2F1B9B5D0B209;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xB8A665E197C7F47ELL) - (v15 + v14) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x1D3A72000429358 - ((v18 + v17) | 0x1D3A72000429358) + ((v18 + v17) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x25583E6B392D1AC8 - ((v21 + v20) | 0x25583E6B392D1AC8) + ((v21 + v20) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x272BFFDC1C3FC546 - ((v24 + v23) | 0x272BFFDC1C3FC546) + ((v24 + v23) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((2 * (v27 + v26)) | 0xC355F3281D11914) - (v27 + v26) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v7 & 7u))) ^ *v7;
  v29 = *++v7;
  v30 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((0x6AF7234D0CC131D4 - v30) | 0x1A41569DA1CC8FFALL) + ((v30 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v32 = v31 ^ 0x53A814A6CEDA6828;
  v31 ^= 0xFBEEF131572C1974;
  v33 = __ROR8__(v32, 8);
  v34 = (((2 * (v33 + v31)) & 0xF2BD014CC6D06D4ALL) - (v33 + v31) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xF5A2F1B9B5D0B209;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (0xFF7817662BD390FALL - ((v37 + v38) | 0xFF7817662BD390FALL) + ((v37 + v38) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x61459D2AF01F24F7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x64C31C027084DE6CLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0xD96EC6C1FDF6D5E3 - ((v45 + v44) | 0xD96EC6C1FDF6D5E3) + ((v45 + v44) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v44) = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ v29;
  return v6(a1, (v44 | (v28 << 8)) - 2 * ((v44 & 5 | (v28 << 8) & 0x3505) ^ v44 & 5) + 13568);
}

uint64_t sub_1969E782C()
{
  v3 = (*(v2 + 8 * (v1 + 5008)))();
  LODWORD(STACK[0x688]) = v0;
  return (*(v2 + 8 * (((v0 == (((v1 + 3967) | 0x1CB) ^ 0x719F9B0F)) * ((v1 + 1639084366) & 0x9E4D9FFB ^ 0x8EB)) ^ v1)))(v3);
}

uint64_t sub_1969E7984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  return (*(a6 + 8 * ((((a8 + 1937094732) & 0x8C8A31FF ^ 0x11D) * (a1 == 0)) ^ (a8 - 427))))();
}

uint64_t sub_1969E79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a19 = (v20 - 2301) ^ ((((&a18 | 0x83C56AD1) - &a18 + (&a18 & 0x7C3A9528)) ^ 0x835339E6) * v23);
  a18 = v21 + 8 * v22;
  a20 = a13;
  v25 = (*(v24 + 8 * (v20 + 1322)))(&a18);
  return (*(v24 + 8 * (((a12 <= (v22 + 1)) * (v20 - 5476)) ^ v20)))(v25);
}

void fp_dh_67cc14da6f7a20a08ae60e9e1b18b373(_DWORD *a1)
{
  v1 = *a1 - 1575331711 * (((a1 | 0xE98C942D) - (a1 & 0xE98C942D)) ^ 0x85D7012F);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1969E7BF4()
{
  v2 = v0 ^ 0x1A81ECC59515547FLL;
  v6 = *(v2 - 0x1A81ECC595155467);
  v5[1] = 998242381 * ((((2 * v5) | 0x330963C) - v5 - 26757918) ^ 0xABF7D3C8) + 5723;
  (*(v1 + 55320))(v5);
  v3 = v5[0];
  (*(v1 + 53768))(v2 - 0x1A81ECC59515547FLL);
  return (v3 - 1906281716);
}

uint64_t sub_1969E7D70@<X0>(int a1@<W0>, _OWORD *a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (a9 + a3);
  v12 = a2[1];
  *(v11 - 1) = *a2;
  *v11 = v12;
  return (*(v10 + 8 * ((22 * (((((v9 - 113) & 0x66) + 3) ^ ((((v9 - 140226417) & 0x85BAF66 ^ 0xC06) & a1) == 32)) & 1)) ^ (v9 - 140226417) & 0x85BAF66u)))();
}

void sub_1969E7DD8(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v4 = (((a3[1] ^ 0xECLL) << ((a1 - 49) ^ 0x92u)) + ((*a3 ^ 0xECu) << 56) + ((a3[2] ^ 0xECu) << 40) + ((a3[3] ^ 0xECu) << 32) + ((a3[4] ^ 0xECLL) << 24) + ((a3[5] ^ 0xECLL) << 16) + ((a3[6] ^ 0xECLL) << 8)) | a3[7] ^ 0xECLL;
  **v3 = (v4 - ((2 * v4) & 0xF5EE6A28855A7980) - 0x508CAEBBD52C340) ^ 0xFAF7351442AD3CC0;
  JUMPOUT(0x1969E7E88);
}

void sub_1969E7ED0(uint64_t a1, unint64_t a2)
{
  STACK[0x978] = a2;
  v2 = STACK[0x4C8];
  *(v2 + 112) = -1720256293;
  *(v2 + 116) = -1720256293;
  *(v2 + 108) = 0;
  *(v2 + 104) = 0;
  JUMPOUT(0x1969E7EECLL);
}

uint64_t sub_1969E7FC8@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 4 * v3);
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((27 * (v3 + (v4 + 4676) - (v1 & 0x1FFFFFFF8) == 5671)) ^ v4)))();
}

uint64_t sub_1969E8034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, int a15)
{
  a15 = v16 - ((&a13 + 872034014 - 2 * (&a13 & 0x33FA2EDE)) ^ 0x336C7DE9) * v17 - 3380;
  a14 = &a11;
  v18 = (*(v15 + 8 * (v16 ^ 0x924)))(&a13);
  return (*(v15 + 8 * ((1037 * (a13 == (v16 ^ 0x3CB) + 1906277423)) ^ v16)))(v18);
}

uint64_t sub_1969E810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v3 + 247);
  v7 = v5 - v4 + v9 - 745 >= ((v3 + 250) ^ 0x324uLL);
  return (*(v6 + 8 * ((v7 | (4 * v7)) ^ v9)))(a1, a2, a3);
}

uint64_t sub_1969E81A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a15;
  a19 = v20 - 1825732043 * (&a17 ^ 0x965337) - 24;
  v23 = (*(v19 + 8 * (v20 ^ 0x1FD8)))(&a17);
  return (*(v19 + 8 * (((a17 != v22) * ((v21 + (v20 ^ 0x5F5) + 1227) ^ (v21 + 1226))) ^ v20)))(v23);
}

uint64_t sub_1969E8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v8 ^ 0x165F) << 7;
  v10 = (v9 + 4985) | 0x204;
  STACK[0x808] = STACK[0x3D8];
  STACK[0x6F8] = *(a6 + 8 * v9);
  STACK[0x508] = &STACK[0x808];
  v6 = STACK[0x808];
  STACK[0x5A8] = STACK[0x808];
  return (*(a6 + 8 * ((197 * (((v6 == 0) ^ (v10 - 76)) & 1)) ^ v10)))();
}

uint64_t sub_1969E8934@<X0>(uint64_t a1@<X8>)
{
  *(*(a1 + 8) + 4 * (((v3 + 850) ^ v2) + v5)) = v6 ^ (v4 + 1871);
  v7 = (v3 - 646026238) & 0x26819BDD;
  *(a1 + 4) = v5 + 1;
  v8 = -2835 - (v5 - 676345803 + v7);
  if (v5 - 676345803 + v7 + 2835 >= 0)
  {
    v8 = v5 - 676345803 + v7 + 2835;
  }

  return (*(v1 + 8 * ((60 * ((v2 + (v8 ^ 0x7C50B9DF) - 1409325315 + ((2 * v8) & 0xF8A173BE) + 1720) <= ((v7 - 3037) | 0x672) - 1651)) ^ v7)))();
}

void sub_1969E8A3C()
{
  v0 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v1 = STACK[0xAA0] + (((v5 + 725) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v1 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v1) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v2 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v3 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v4 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v0 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v0 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v2 + 10;
  STACK[0x290] = v3 + 10;
  STACK[0x310] = v4;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_1969E8A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  a14 = ((v16 ^ 0xFE3FF57BB6DFBAFBLL) + 0x7DD6BFB7CF36CFD5 + ((2 * v16) & 0xFC7FEAF76DBF75F6)) ^ (1068996913 * ((((2 * (v19 ^ 0x1AD187012A517088)) | 0x25B475B7C8A48894) - (v19 ^ 0x1AD187012A517088) - 0x12DA3ADBE452444ALL) ^ 0x9C6A89491BEDD553));
  a16 = a10;
  a15 = 6365 - 1068996913 * ((((2 * (v19 ^ 0x2A517088)) | 0xC8A48894) - (v19 ^ 0x2A517088) + 464370614) ^ 0x1BEDD553);
  v20 = (*(v18 + 54528))(&a13);
  return (*(v18 + 8 * ((4191 * (a13 == v17)) ^ 0xA41u)))(v20);
}

uint64_t sub_1969E8B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  v22 = v20 || *(a1 + 16) == 0;
  return (*(a2 + 8 * ((203 * ((v22 ^ (v18 - 20)) & 1)) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_1969E8BF4()
{
  LODWORD(STACK[0x3BC]) = STACK[0x634];
  LODWORD(STACK[0x79C]) = STACK[0x3BC];
  JUMPOUT(0x1969F9E14);
}

uint64_t sub_1969E8C0C()
{
  STACK[0x508] = 0;
  STACK[0x4A0] = 0;
  return (*(v0 + 8 * ((2724 * (LODWORD(STACK[0x784]) == (v1 ^ 0x719F82E8))) ^ (v1 - 3198))))();
}

void sub_1969E8C5C(unint64_t a1, unint64_t a2, unint64_t a3)
{
  STACK[0x280] = v3;
  *&STACK[0x3D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(v6);
  *&STACK[0x3C0] = vdupq_n_s64(a3);
  *&STACK[0x410] = vdupq_n_s64(a1);
  *&STACK[0x390] = vdupq_n_s64(a2);
  *&STACK[0x3A0] = vdupq_n_s64(0xE788DD3012A091E0);
  *&STACK[0x370] = vdupq_n_s64(v4);
  *&STACK[0x380] = vdupq_n_s64(0xBD8F7CFD1E07971BLL);
  *&STACK[0x350] = vdupq_n_s64(0x84EBA188CFF32DABLL);
  *&STACK[0x360] = vdupq_n_s64(0x7960F2B616996E9FuLL);
  *&STACK[0x330] = vdupq_n_s64(0xA77DA4D51E01EB11);
  *&STACK[0x340] = vdupq_n_s64(0xADBA7ED07AC0689ALL);
  *&STACK[0x310] = vdupq_n_s64(0x67ECAB24E0949C16uLL);
  *&STACK[0x320] = vdupq_n_s64(v5);
  *&STACK[0x2F0] = vdupq_n_s64(0x3DBB3B5844776955uLL);
  *&STACK[0x300] = vdupq_n_s64(0x4C09AA6D8FB5B1F5uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x87C0804202802uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x7068FDEC8CEB6B27uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x701021320009051uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8F970213731494D8);
  *&STACK[0x2A0] = vdupq_n_s64(0x56B23F6A8BCD7E7AuLL);
  *&STACK[0x290] = xmmword_196EBFAE0;
  JUMPOUT(0x1969E8E78);
}

uint64_t sub_1969E93EC()
{
  v1 = STACK[0x36C];
  v2 = LODWORD(STACK[0x36C]) - 2577;
  *STACK[0x770] = STACK[0x908];
  return (*(STACK[0x370] + 8 * ((157 * (LODWORD(STACK[0x914]) == v0 + ((v1 - 533) | 0x215) - 5049 - 676)) ^ v2)))();
}

uint64_t sub_1969E944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unint64_t a14, int a15, uint64_t a16)
{
  a15 = 6365 - 1068996913 * ((v19 - 2 * (v19 & 0xE19B3F02) - 509919486) ^ 0x3475DE93);
  a16 = a10;
  a14 = (((2 * v16) & 0xF8FFFF6FEDFF75A2) - 0x694A8470E93001 + (v16 ^ 0x7C7FFFB7F6FFBAD1)) ^ (1068996913 * ((v19 - 2 * (v19 & 0x79F6D086E19B3F02) + 0x79F6D086E19B3F02) ^ 0xED97E4153475DE93));
  v20 = (*(v18 + 54528))(&a13);
  return (*(v18 + 8 * ((76 * (((a13 == v17) ^ 0x8F) & 1)) ^ 0xB8Fu)))(v20);
}

uint64_t sub_1969E9574@<X0>(int a1@<W8>)
{
  v4 = (((a1 - v1 + 1861793159) ^ 0xB7EACE14) + 653100167) ^ (a1 - v1 + 1861793159) ^ (((a1 - v1 + 1861793159) ^ 0x7194B3F) - 1776418386) ^ (((a1 - v1 + 1861793159) ^ 0xFFFEDBFF) + 1861849454) ^ (((((v2 + 1352732103) & 0xAF5EEE5F) + 569761181) ^ (a1 - v1 + 1861793159)) - 1326276308);
  LODWORD(STACK[0x5C8]) = v4 ^ 0xF78E4DB6;
  v5 = (*(v3 + 8 * (v2 + 2200)))(v4 ^ 0x6EF8B56D, 0x100004077774924);
  STACK[0x700] = v5;
  return (*(v3 + 8 * ((1019 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969E9674@<X0>(int a1@<W8>)
{
  v7 = ((-990739875 - (v3 | 0xC4F2825D) + (v3 | 0x3B0D7DA2)) ^ 0x82255E94) * v5;
  *(v6 - 184) = 0;
  *(v6 - 192) = (v2 + 2973) ^ v7;
  *(v6 - 176) = a1 + v7;
  *(v6 - 208) = &STACK[0x604];
  *(v6 - 200) = &STACK[0x4A8];
  v8 = (*(v4 + 8 * (v2 + 6020)))(v6 - 208);
  v9 = *(v6 - 172);
  STACK[0x410] = v1;
  return (*(v4 + 8 * (((v9 == 7 * (v2 ^ 0x4B) + 1906275577) * (126 * (v2 ^ 0x30B) - 1518)) ^ v2)))(v8, 1906281716, 48, 1906239693, 4356, STACK[0x370], 95, 4290432414);
}

uint64_t sub_1969E9834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v14 = ((a12 + 443173274) ^ 0x2CD4876D) & (2 * ((a12 + 443173274) & 0x8C95264E)) ^ (a12 + 443173274) & 0x8C95264E;
  v15 = ((((a12 + 443173274) ^ 0x35DC8FE5) << ((v12 + 38) ^ 0x8B)) ^ 0x72935356) & ((a12 + 443173274) ^ 0x35DC8FE5) ^ (((a12 + 443173274) ^ 0x35DC8FE5) << ((v12 + 38) ^ 0x8B)) & 0xB949A9AA;
  v16 = v15 ^ 0x8948A8A9;
  v17 = (v15 ^ 0x30010100) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0xE526A6AC) & v16 ^ (4 * v16) & 0xB949A9A8;
  v19 = (v18 ^ 0xA100A0A0) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x18490903)) ^ 0x949A9AB0) & (v18 ^ 0x18490903) ^ (16 * (v18 ^ 0x18490903)) & 0xB949A9A0;
  v21 = v19 ^ 0xB949A9AB ^ (v20 ^ 0x90088800) & (v19 << 8);
  v22 = (a12 + 443173274) ^ (2 * ((v21 << 16) & 0x39490000 ^ v21 ^ ((v21 << 16) ^ 0x29AB0000) & (((v20 ^ 0x2941210B) << 8) & 0x39490000 ^ 0x30400000 ^ (((v20 ^ 0x2941210B) << 8) ^ 0x49A90000) & (v20 ^ 0x2941210B))));
  v24 = v22 != -1407945448 && (((321 * ((v12 - 1381083750) & 0x5251AA65 ^ 0x277)) ^ 0x17DC) & v22) == 8;
  return (*(v13 + 8 * ((45 * v24) ^ (v12 + 5926))))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1969E9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v38 = *(&a23 + (v35 >> ((v36 - 122) ^ 0x2A)) + 18);
  v39 = ((2 * v35) & 0xEFDB7DD0) + (v35 ^ 0x77EDBEEA) - 2012069610;
  *(a11 + v39) = v38 ^ 0x87;
  *(a11 + v39 + 1) = (BYTE1(v38) ^ 7) - ((2 * (BYTE1(v38) ^ 7)) & 0xD8) - 20;
  *(a11 + v39 + 2) = (BYTE2(v38) ^ 0x47) - ((2 * (BYTE2(v38) ^ 0x47)) & 0xD8) - 20;
  *(a11 + v39 + 3) = (HIBYTE(v38) ^ 0x7C) - 2 * ((HIBYTE(v38) ^ 0x7C) & 0x6D ^ HIBYTE(v38) & 1) - 20;
  return (*(v37 + 8 * ((4591 * (v35 + 4 < a35)) ^ v36)))();
}

uint64_t sub_1969E9AE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = v11 + a8;
  v20 = v11 + a8 + 9;
  v21 = __ROR8__(v20 & ((v12 + 4432) - 5733), 8);
  v22 = ((0x6AF7234D0CC131D4 - v21) & a1) + v21 - 0x6AF7234D0CC131D5 - ((v21 - 0x6AF7234D0CC131D5) & a2);
  v23 = __ROR8__(v22 ^ v14, 8);
  v24 = v22 ^ v15;
  v25 = (v9 - ((v23 + v24) | v9) + ((v23 + v24) | v17)) ^ v18;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (a3 - ((v27 + v26) | a3) + ((v27 + v26) | a5)) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5963B6C555D97F1FLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__(((v16 & (2 * (v32 + v31))) - (v32 + v31) + a7) ^ v13, 8);
  v34 = ((v16 & (2 * (v32 + v31))) - (v32 + v31) + a7) ^ v13 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v8 & (2 * (v37 + v36))) - (v37 + v36) + a4) ^ 0xC249F792A028E260;
  v39 = v11 - 1;
  *(v19 + 9) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61))) ^ 0xAB3042D228875C41) >> (8 * (v20 & 7u))) ^ *(v10 + v39);
  return (*(STACK[0x370] + 8 * ((4561 * (v39 == 0)) ^ v12)))();
}

uint64_t sub_1969E9CA0()
{
  result = (*(v3 + 8 * (v0 + 3109)))();
  *(v2 + 4) = v1;
  return result;
}

uint64_t sub_1969E9D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = STACK[0x3D8];
  if (STACK[0x7C8])
  {
    v6 = v10 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a6 + 8 * ((v7 * (v9 + 1540 + ((v9 + 1540) ^ 0xFFFFF919) + 4016)) ^ (v9 + 1540))))(v10);
}

void fp_dh_d9d49357479cf9154cdcf4590d1fdba0(uint64_t a1)
{
  v1 = 998242381 * (a1 ^ 0xAA6F98D6);
  v2 = *a1 ^ v1;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 4) - v1 == 2125716557;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969E9DE4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(result + 16);
  *a2 = 0;
  v4[291] = v2;
  *a2 += (4 * (v3 ^ 0x988)) ^ 0xA3C;
  v4[293] = v2 + 256;
  *a2 += 256;
  v4[295] = v2 + 512;
  *a2 += 256;
  v4[297] = v2 + 768;
  *a2 += 256;
  v4[299] = v2 + 1024;
  *a2 += 256;
  v4[301] = v2 + 1280;
  *a2 += 256;
  v4[303] = v2 + 1536;
  *a2 += 256;
  v4[305] = v2 + 1792;
  *a2 += 256;
  v4[307] = v2 + 2048;
  *a2 += 256;
  v4[309] = v2 + 2304;
  *a2 += 256;
  v4[311] = v2 + 2560;
  *a2 += 256;
  v4[313] = v2 + 2816;
  *a2 += 256;
  v4[315] = v2 + 3072;
  *a2 += 256;
  v4[317] = v2 + 3328;
  *a2 += 256;
  v4[319] = v2 + 3584;
  *a2 += 256;
  v4[321] = v2 + 3840;
  *a2 += 256;
  *(result + 8) = 1906281716;
  return result;
}

uint64_t sub_1969E9F48(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v135 = v124 - 8;
  v16 = v135 + v126 + a16;
  v17.i64[0] = v135 + v126 + 1;
  v17.i64[1] = v135 + v126;
  v18.i64[0] = v135 + v126 + 3;
  v18.i64[1] = v135 + v126 + 2;
  v19.i64[0] = v135 + v126 + 5;
  v19.i64[1] = v135 + v126 + 4;
  v20.i64[0] = v16 - 2105;
  v20.i64[1] = v135 + v126 + 6;
  v21 = vandq_s8(v20, a1);
  v22 = vandq_s8(v19, a1);
  v23 = vandq_s8(v18, a1);
  v24 = vandq_s8(v17, a1);
  v25 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL), a3);
  v26 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL), a3);
  v27 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), a3);
  v28 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), a3);
  v29 = veorq_s8(v28, a4);
  v30 = veorq_s8(v27, a4);
  v31 = veorq_s8(v26, a4);
  v32 = veorq_s8(v25, a4);
  v33 = veorq_s8(v25, a5);
  v34 = veorq_s8(v26, a5);
  v35 = veorq_s8(v27, a5);
  v36 = veorq_s8(v28, a5);
  v37 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v33), a6);
  v38 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v34), a6);
  v39 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v35), a6);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), v36), a6);
  v41 = vsraq_n_u64(vshlq_n_s64(v33, 3uLL), v33, 0x3DuLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v34, 3uLL), v34, 0x3DuLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL);
  v44 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v45 = veorq_s8(v39, v43);
  v46 = veorq_s8(v38, v42);
  v47 = veorq_s8(v37, v41);
  v48 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v47);
  v52 = veorq_s8(vaddq_s64(v48, v44), a7);
  v53 = veorq_s8(vaddq_s64(v49, v45), a7);
  v54 = veorq_s8(vaddq_s64(v50, v46), a7);
  v55 = veorq_s8(v51, a7);
  v56 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v59 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v60 = veorq_s8(v54, v58);
  v61 = veorq_s8(v53, v57);
  v62 = veorq_s8(v52, v56);
  v63 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v62);
  v67 = veorq_s8(vaddq_s64(v63, v59), a8);
  v68 = veorq_s8(vaddq_s64(v64, v60), a8);
  v69 = veorq_s8(vaddq_s64(v65, v61), a8);
  v70 = veorq_s8(v66, a8);
  v71 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v74 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v75 = veorq_s8(v69, v73);
  v76 = veorq_s8(v68, v72);
  v77 = veorq_s8(v67, v71);
  v78 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v77);
  v82 = veorq_s8(vaddq_s64(v78, v74), v128);
  v83 = veorq_s8(vaddq_s64(v79, v75), v128);
  v84 = veorq_s8(vaddq_s64(v80, v76), v128);
  v85 = veorq_s8(v81, v128);
  v86 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v89 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v90 = veorq_s8(v84, v88);
  v91 = veorq_s8(v83, v87);
  v92 = veorq_s8(v82, v86);
  v93 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v92);
  v97 = veorq_s8(vaddq_s64(v93, v89), v129);
  v98 = veorq_s8(vaddq_s64(v94, v90), v129);
  v99 = veorq_s8(vaddq_s64(v95, v91), v129);
  v100 = veorq_s8(v96, v129);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v104 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v105 = veorq_s8(v99, v103);
  v106 = veorq_s8(v98, v102);
  v107 = veorq_s8(v97, v101);
  v108 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v107);
  v112 = vaddq_s64(v110, v106);
  v113 = vaddq_s64(v109, v105);
  v114 = vaddq_s64(v108, v104);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v130)), v131), v132);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v130)), v131), v132);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), v130)), v131), v132);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v130)), v131), v132);
  v119 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL))), v134);
  v136.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), veorq_s8(v115, v119)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), a2)));
  v136.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, v120)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), a2)));
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), veorq_s8(v117, v121)), v134), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), a2)));
  v136.val[0] = vshlq_u64(v122, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), a2)));
  *(v16 - 2112) = vrev64_s8(*&vqtbl4q_s8(v136, v133));
  return (*(STACK[0x370] + 8 * (((a15 == v125 + 8) * v127) ^ a12)))();
}

uint64_t sub_1969E9FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, int a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v63 = v59 + 14;
  *(v62 - 128) = v63 + 1283153057 * ((2 * ((v62 - 144) & 0x1FD0F378) - (v62 - 144) - 533787514) ^ 0xAFF70FB1) + 3901;
  *(v62 - 144) = &a59 | 0xC;
  *(v62 - 136) = &a59;
  *(v62 - 104) = &a40;
  *(v62 - 120) = v61 + a38;
  (*(v60 + 8 * (v63 + 6849)))(v62 - 144);
  return (*(v60 + 8 * ((1329 * (*(v62 - 112) == ((v63 + 1149524066) & 0x1B7BA7AF ^ 0x719F8CD3))) ^ v63)))(a11);
}

uint64_t sub_1969EA0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, unsigned __int8 a62)
{
  STACK[0x248] = v62;
  v67 = *STACK[0x670] == (a62 ^ 0xEB) && LODWORD(STACK[0x658]) == 1672587722 && v63 == 97900968;
  return (*(v64 + 8 * (v67 | (16 * v67) | (a6 - 369))))();
}

uint64_t sub_1969EA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = 1498 - 1825732043 * ((((2 * &a19) | 0x22E7C410) - &a19 + 1854676472) ^ 0x91E5B13F);
  a20 = &a13;
  v23 = (*(v22 + 53584))(&a19);
  return (*(v22 + 8 * ((6878 * (a19 == 1906281716)) ^ v21)))(v23);
}

uint64_t sub_1969EA1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = STACK[0x410];
  v19 = v11 - 1;
  v20 = __ROR8__((v15 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = -2 - (((0x6AF7234D0CC131D4 - v20) | 0x6592086C7BEA8459) + ((v20 + 0x1508DCB2F33ECE2BLL) | 0x9A6DF79384157BA6));
  v22 = v21 ^ (((STACK[0x410] - 1008713004) & 0x3C1FBBF6) + 0x2C7B4A5714FC5099);
  v21 ^= 0x843DAFC08D0A12D7;
  v23 = __ROR8__(v22, 8);
  v24 = (((2 * (v23 + v21)) & 0x8C46C9FF8DC99742) - (v23 + v21) + 0x39DC9B00391B345ELL) ^ 0xDD41ECDFBE268B20;
  v25 = v24 ^ __ROR8__(v21, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x7EEEF60D967B2BE0) - (v26 + v25) + 0x408884F934C26A10) ^ 0x4AD58ABF7EED27F9;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0xA2BEB39B53A93B34) + 0x515F59CDA9D49D9ALL) ^ 0x83CEF08FC0DE285;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x7B6BB9E2F71526B0 - ((v32 + v31) | 0x7B6BB9E2F71526B0) + ((v32 + v31) | 0x8494461D08EAD94FLL)) ^ 0xE5D1DB37F8F5FDB8;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = __ROR8__((v13 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = -2 - (((v16 - v36) | v12) + ((v36 + 0xDEA8F311324A00DLL) | 0xF29226D18F0E1510));
  v39 = v38 ^ a2;
  v40 = __ROR8__(v35, 8);
  v41 = v38 ^ a3;
  v42 = __ROR8__(v39, 8);
  v43 = (((v42 + v41) ^ a4) - (a5 & (2 * ((v42 + v41) ^ a4))) + a6) ^ a7;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a8;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v14;
  v48 = __ROR8__(v47, 8);
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = (((2 * (v40 + v37)) & 0x8BD794260C56C500) - (v40 + v37) + 0x3A1435ECF9D49D7FLL) ^ 0x203EDE08BB87327CLL;
  v51 = (v48 + v49 - (v17 & (2 * (v48 + v49))) + v8) ^ v9;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x60B83CEF67356D1BLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v37, 61));
  v56 = __ROR8__(v53, 8);
  v57 = (v56 + v54 - (v10 & (2 * (v56 + v54))) + 0x715A94BD6AF46B8ELL) ^ 0x7AEF220226ADDE8CLL;
  v58 = v57 ^ __ROR8__(v54, 61);
  v59 = __ROR8__(v57, 8);
  *(v13 + v19) = ((v55 ^ 0xAB3042D228875C41) >> (8 * ((v15 + v19) & 7))) ^ (((v59 + v58 - ((2 * (v59 + v58)) & 0xEF0989440325BE54) - 0x87B3B5DFE6D20D6) ^ 0x4EED5A497390D0E3) >> (8 * ((v13 + v19) & 7))) ^ *(v15 + v19);
  return (*(STACK[0x248] + 8 * ((430 * (v19 == 0)) ^ v18)))();
}

uint64_t sub_1969EA664()
{
  v0 = *STACK[0x3F0];
  v1 = __ROR8__((v0 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v2 = (0x2AF7234D0CC131D4 - v1) & 0x2A199E3A6C7C6131 | (v1 + v37) & 0xD1E661C593839ECELL;
  v3 = v2 ^ 0x67F0DC01036A86E3;
  v2 ^= 0xCFB639969A9CF7BFLL;
  v4 = __ROR8__(v3, 8);
  v5 = (((2 * (v4 + v2)) | 0x1ED977F0C520FDA0) - (v4 + v2) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v6 = v5 ^ __ROR8__(v2, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) & 0xAB878F6F884E2F0ELL) - (v7 + v6) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = __ROR8__((0x32FA8FDF7E2CED0CLL - ((v10 + v9) | 0x32FA8FDF7E2CED0CLL) + ((v10 + v9) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v12 = (0x32FA8FDF7E2CED0CLL - ((v10 + v9) | 0x32FA8FDF7E2CED0CLL) + ((v10 + v9) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v9, 61);
  v13 = (((2 * (v11 + v12)) | 0xC9AD8CEC88B7F32) - (v11 + v12) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x64C31C027084DE6CLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = *(STACK[0x248] + 8 * (v38 - 3514));
  v19 = (((v17 + v16) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v17 + v16) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v20 = v19 ^ __ROR8__(v16, 61);
  v21 = __ROR8__(v19, 8);
  *(v0 + 4) = v36 ^ 0xDD ^ (((0xB80DBCCEE227D4F9 - ((v21 + v20) | 0xB80DBCCEE227D4F9) + ((v21 + v20) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * ((v0 + 4) & 7)));
  v22 = __ROR8__((v0 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 + v37) ^ 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__((v22 + v37) ^ 0x49E9423B6F16E7D2, 8) + v23) ^ 0xE49D77DF873DBF7ELL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x64C31C027084DE6CLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v39;
  *(v0 + 5) = (((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v0 + 5) & 7))) ^ 0xDB;
  return v18();
}

uint64_t sub_1969EA678(uint64_t a1)
{
  v5 = *(&STACK[0x29C] + v1 + 72);
  v6 = ((2 * v1) & 0xDFEFF6F8) + (v1 ^ 0xEFF7FB7E) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0x7C) - ((((v3 + 34) | 0x90) + 72) & (2 * (HIBYTE(v5) ^ 0x7C))) - 20;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x47) - ((2 * (BYTE2(v5) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 7) - ((2 * (BYTE1(v5) ^ 7)) & 0xD8) - 20;
  *(a1 + v6 + 3) = v5 ^ 0x87;
  return (*(v4 + 8 * ((2055 * (v1 + 4 < LODWORD(STACK[0x2F8]))) ^ v3)))();
}

void fp_dh_fc56a011a5790d42ac13f5f1f4b1390e(uint64_t a1)
{
  v1 = 753662761 * ((((2 * a1) | 0x82D06364) - a1 + 1050136142) ^ 0xA472CAF9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969EA8D8()
{
  v5 = (v4 + 2102056027) & 0x27FB;
  v15 = v12;
  v16 = &v11;
  LODWORD(v14) = v4 - ((99601374 - (&v14 | 0x5EFCBDE) + (&v14 | 0xFA103421)) ^ 0x964BA123) * v2 - 731;
  (*(v3 + 8 * (v4 ^ 0x1132u)))(&v14);
  HIDWORD(v15) = v4 - 489239129 * (((&v14 | 0x7CF5416E) - (&v14 & 0x7CF5416E)) ^ 0xC5DD6258) - 2067;
  v14 = v12;
  (*(v3 + 8 * (v4 ^ 0x112Cu)))(&v14);
  if (v15 == v1)
  {
    v6 = -100663297;
  }

  else
  {
    v6 = 1910497278;
  }

  if (v15 == v1)
  {
    v7 = -201326594;
  }

  else
  {
    v7 = -473972740;
  }

  if (v15 == v1)
  {
    v8 = 2006945013;
  }

  else
  {
    v8 = -4215562;
  }

  v9 = (v6 ^ v11) + v8 + ((v11 << (v5 + 14)) & v7);
  LODWORD(v14) = v4 - (((&v14 | 0x48278EBB) + (~&v14 | 0xB7D87144)) ^ 0xB0FBAEFB) * v0 + 3129;
  v15 = v12;
  (*(v3 + 8 * (v4 ^ 0x1137u)))(&v14);
  v15 = v13;
  LODWORD(v14) = v5 - ((&v14 - 908005400 - 2 * (&v14 & 0xC9E0EFE8)) ^ 0x313CCFA9) * v0 + 4066;
  (*(v3 + 8 * (v5 + 4792)))(&v14);
  return (v9 - 1906281716);
}

void sub_1969EAB54()
{
  if (v0 == 1143350500)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *v1 = v2;
}

uint64_t sub_1969EABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 1283153057 * ((v8 - 120) ^ 0x4FD80337);
  *(v8 - 112) = v6;
  *(v8 - 120) = a5 + v9 - 1374402255;
  *(v8 - 104) = (v7 - 572) ^ v9;
  return (*(v5 + 8 * (v7 ^ 0x1753)))(v8 - 120);
}

uint64_t sub_1969EACE0(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x350]) = a1;
  STACK[0x340] = v8;
  return (*(a6 + 8 * (((((v7 + a4) & a5 ^ a7) + v7 + 3093) * (*v8 != 0)) ^ v7)))();
}

uint64_t sub_1969EAD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a11;
  a15 = 1498 - 1825732043 * (((&a13 ^ 0x6F8B46B3 | 0x9F8EDC9F) - ((&a13 ^ 0x6F8B46B3) & 0x9F8EDC9F)) ^ 0xF093C91B);
  v18 = (*(v16 + 53584))(&a13);
  return (*(v16 + 8 * ((5950 * (a13 == v15)) ^ v17)))(v18);
}

uint64_t sub_1969EAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = STACK[0x3E8];
  v8 = (LODWORD(STACK[0x3BC]) - 763604091);
  STACK[0x4F8] = v8;
  return (*(v6 + 8 * ((14 * (v8 == ((a6 - 3113) ^ 0xBD2))) ^ (a6 - 3113))))(v7);
}

uint64_t sub_1969EAF64@<X0>(int a1@<W8>)
{
  v8 = v4 + v2;
  v9 = v4 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v5) ^ a1)))();
}

uint64_t sub_1969EB0C4()
{
  v3 = ((((v1 + 3196) | 0x258u) + 787) ^ 0xFFFFFFFFFFFFEA94) + v0;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * (((4 * v5) | (32 * v5)) ^ (v1 + 465))))();
}

uint64_t sub_1969EB118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  *v6 = a1;
  return (*(a6 + 8 * (((STACK[0x478] == 0) * (((v7 - 665) | 0x14) + ((v7 - 2261) | 0x650) - 10951)) ^ v7)))();
}

uint64_t sub_1969EB164@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v3);
  LODWORD(STACK[0x994]) = 1684334801;
  STACK[0x998] = &STACK[0x390];
  return (*(a1 + 8 * (((((((v3 ^ 0x24) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * ((((((v3 ^ 0x24) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ v3 ^ 0x1024)))();
}

uint64_t sub_1969EB1F8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((6690 * (v7 == (v5 - a2) - 2007)) ^ (v5 + v3))))();
}

void sub_1969EB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0x2E0]);
  switch(v9)
  {
    case 41591:
      (*(a6 + 8 * ((a8 - 4621) ^ (7377 * (v8 == -1720256289)))))();
      break;
    case 26075:
      STACK[0x7D8] = STACK[0x7A8] + STACK[0x270];
      JUMPOUT(0x1969EB4FCLL);
    case 45445:
      (*(a6 + 8 * ((5180 * (v8 == (a8 ^ 0x1DBD) - 1720259341)) ^ (a8 - 4621))))();
      break;
    default:
      sub_1969CAE84(a1, a2, a3, a4, a5, a6);
      break;
  }
}

uint64_t sub_1969EBEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = vrev64q_s8(**(v11 + 24));
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0x4F4F4F4F4F4F4F4FLL;
  v16.i64[1] = 0x4F4F4F4F4F4F4F4FLL;
  v17.i64[0] = 0xB0B0B0B0B0B0B0B0;
  v17.i64[1] = 0xB0B0B0B0B0B0B0B0;
  v18 = vaddq_s8(vorrq_s8(v15, v16), vorrq_s8(v15, v17));
  v16.i64[0] = 0xB1B1B1B1B1B1B1B1;
  v16.i64[1] = 0xB1B1B1B1B1B1B1B1;
  v17.i64[0] = 0x8787878787878787;
  v17.i64[1] = 0x8787878787878787;
  v19 = vrev64q_s8(veorq_s8(vmlaq_s8(v17, v18, v16), xmmword_196EBFAF0));
  *(v12 - 104) = vextq_s8(v19, v19, 8uLL);
  return (*(v13 + 8 * (a2 ^ (21 * (a9 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, v11);
}

uint64_t sub_1969EBFA8@<X0>(int a1@<W0>, uint64_t a2@<X3>, int a3@<W5>, int a4@<W8>)
{
  v8 = (v6 + 4 * v5);
  v9 = v5 + 1;
  *v8 = v8[397] ^ (a4 + a3) ^ *(a2 + 4 * (*(v6 + 4 * v9) & 1)) ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | v4 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v9 == 227) * a1) ^ a4)))();
}

uint64_t sub_1969EC000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5593));
  v7 = STACK[0x2B0] + STACK[0x240] - 0x2D6560F450244D3ELL;
  v8 = (__ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8) + v48) & 0xFBFFFFFFFFFFFFFFLL;
  v9 = v8 ^ 0x4DE9423B6F16E7D2;
  v8 ^= 0xE5AFA7ACF6E0968ELL;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v12 = (v10 + v8 - ((2 * (v10 + v8)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0xF5A2F1B9B5D0B209;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xB8A665E197C7F47ELL) - (v15 + v14) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x1D3A72000429358 - ((v18 + v17) | 0x1D3A72000429358) + ((v18 + v17) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0x25583E6B392D1AC8 - ((v21 + v20) | 0x25583E6B392D1AC8) + ((v21 + v20) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0x272BFFDC1C3FC546 - ((v24 + v23) | 0x272BFFDC1C3FC546) + ((v24 + v23) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((((2 * (v27 + v26)) | 0xC355F3281D11914) - (v27 + v26) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v7 & 7u))) ^ *v7;
  v29 = *++v7;
  v30 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((0x6AF7234D0CC131D4 - v30) | 0x1A41569DA1CC8FFALL) + ((v30 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v32 = v31 ^ 0x53A814A6CEDA6828;
  v31 ^= 0xFBEEF131572C1974;
  v33 = __ROR8__(v32, 8);
  v34 = (((2 * (v33 + v31)) & 0xF2BD014CC6D06D4ALL) - (v33 + v31) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v35 = v34 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xF5A2F1B9B5D0B209;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (0xFF7817662BD390FALL - ((v37 + v38) | 0xFF7817662BD390FALL) + ((v37 + v38) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x61459D2AF01F24F7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x64C31C027084DE6CLL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0xD96EC6C1FDF6D5E3 - ((v45 + v44) | 0xD96EC6C1FDF6D5E3) + ((v45 + v44) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v44) = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0xAB3042D228875C41) >> (8 * (v7 & 7u))) ^ v29;
  return v6(a1, (v44 | (v28 << 8)) - 2 * ((v44 & 5 | (v28 << 8) & 0x3505) ^ v44 & 5) + 13568);
}