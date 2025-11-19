@interface _INPBPair
- (BOOL)isEqual:(id)a3;
- (_INPBPair)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPairCurrencyAmountValue:(id)a3;
- (void)addPairCustomObject:(id)a3;
- (void)addPairDataString:(id)a3;
- (void)addPairDataValue:(id)a3;
- (void)addPairDistanceValue:(id)a3;
- (void)addPairDoubleValue:(id)a3;
- (void)addPairImageValue:(id)a3;
- (void)addPairIntegerValue:(id)a3;
- (void)addPairLocationValue:(id)a3;
- (void)addPairPaymentMethodValue:(id)a3;
- (void)addPairPersonValue:(id)a3;
- (void)addPairStringValue:(id)a3;
- (void)addPairTemperatureValue:(id)a3;
- (void)addPairUrlValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
- (void)setPairCurrencyAmountValues:(id)a3;
- (void)setPairCustomObjects:(id)a3;
- (void)setPairDataStrings:(id)a3;
- (void)setPairDataValues:(id)a3;
- (void)setPairDistanceValues:(id)a3;
- (void)setPairDoubleValues:(id)a3;
- (void)setPairImageValues:(id)a3;
- (void)setPairIntegerValues:(id)a3;
- (void)setPairLocationValues:(id)a3;
- (void)setPairPaymentMethodValues:(id)a3;
- (void)setPairPersonValues:(id)a3;
- (void)setPairStringValues:(id)a3;
- (void)setPairTemperatureValues:(id)a3;
- (void)setPairUrlValues:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBPair

- (id)dictionaryRepresentation
{
  v177 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_key)
  {
    v4 = [(_INPBPair *)self key];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"key"];
  }

  if ([(NSArray *)self->_pairCurrencyAmountValues count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v7 = self->_pairCurrencyAmountValues;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v159 objects:v176 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v160;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v160 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v159 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v159 objects:v176 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"pairCurrencyAmountValue"];
  }

  if ([(NSArray *)self->_pairCustomObjects count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v14 = self->_pairCustomObjects;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v155 objects:v175 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v156;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v156 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v155 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v155 objects:v175 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"pairCustomObject"];
  }

  if ([(NSArray *)self->_pairDataStrings count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v21 = self->_pairDataStrings;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v151 objects:v174 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v152;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v152 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v151 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v151 objects:v174 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"pairDataString"];
  }

  if ([(NSArray *)self->_pairDataValues count])
  {
    v27 = [MEMORY[0x1E695DF70] array];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v28 = self->_pairDataValues;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v147 objects:v173 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v148;
      do
      {
        for (m = 0; m != v30; ++m)
        {
          if (*v148 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v147 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v147 objects:v173 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKeyedSubscript:@"pairDataValue"];
  }

  if ([(NSArray *)self->_pairDistanceValues count])
  {
    v34 = [MEMORY[0x1E695DF70] array];
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v35 = self->_pairDistanceValues;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v143 objects:v172 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v144;
      do
      {
        for (n = 0; n != v37; ++n)
        {
          if (*v144 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v143 + 1) + 8 * n) dictionaryRepresentation];
          [v34 addObject:v40];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v143 objects:v172 count:16];
      }

      while (v37);
    }

    [v3 setObject:v34 forKeyedSubscript:@"pairDistanceValue"];
  }

  if ([(NSArray *)self->_pairDoubleValues count])
  {
    v41 = [MEMORY[0x1E695DF70] array];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v42 = self->_pairDoubleValues;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v139 objects:v171 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v140;
      do
      {
        for (ii = 0; ii != v44; ++ii)
        {
          if (*v140 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v139 + 1) + 8 * ii) dictionaryRepresentation];
          [v41 addObject:v47];
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v139 objects:v171 count:16];
      }

      while (v44);
    }

    [v3 setObject:v41 forKeyedSubscript:@"pairDoubleValue"];
  }

  if ([(NSArray *)self->_pairImageValues count])
  {
    v48 = [MEMORY[0x1E695DF70] array];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v49 = self->_pairImageValues;
    v50 = [(NSArray *)v49 countByEnumeratingWithState:&v135 objects:v170 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v136;
      do
      {
        for (jj = 0; jj != v51; ++jj)
        {
          if (*v136 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v135 + 1) + 8 * jj) dictionaryRepresentation];
          [v48 addObject:v54];
        }

        v51 = [(NSArray *)v49 countByEnumeratingWithState:&v135 objects:v170 count:16];
      }

      while (v51);
    }

    [v3 setObject:v48 forKeyedSubscript:@"pairImageValue"];
  }

  if ([(NSArray *)self->_pairIntegerValues count])
  {
    v55 = [MEMORY[0x1E695DF70] array];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v56 = self->_pairIntegerValues;
    v57 = [(NSArray *)v56 countByEnumeratingWithState:&v131 objects:v169 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v132;
      do
      {
        for (kk = 0; kk != v58; ++kk)
        {
          if (*v132 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = [*(*(&v131 + 1) + 8 * kk) dictionaryRepresentation];
          [v55 addObject:v61];
        }

        v58 = [(NSArray *)v56 countByEnumeratingWithState:&v131 objects:v169 count:16];
      }

      while (v58);
    }

    [v3 setObject:v55 forKeyedSubscript:@"pairIntegerValue"];
  }

  if ([(NSArray *)self->_pairLocationValues count])
  {
    v62 = [MEMORY[0x1E695DF70] array];
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v63 = self->_pairLocationValues;
    v64 = [(NSArray *)v63 countByEnumeratingWithState:&v127 objects:v168 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v128;
      do
      {
        for (mm = 0; mm != v65; ++mm)
        {
          if (*v128 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v68 = [*(*(&v127 + 1) + 8 * mm) dictionaryRepresentation];
          [v62 addObject:v68];
        }

        v65 = [(NSArray *)v63 countByEnumeratingWithState:&v127 objects:v168 count:16];
      }

      while (v65);
    }

    [v3 setObject:v62 forKeyedSubscript:@"pairLocationValue"];
  }

  if ([(NSArray *)self->_pairPaymentMethodValues count])
  {
    v69 = [MEMORY[0x1E695DF70] array];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v70 = self->_pairPaymentMethodValues;
    v71 = [(NSArray *)v70 countByEnumeratingWithState:&v123 objects:v167 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v124;
      do
      {
        for (nn = 0; nn != v72; ++nn)
        {
          if (*v124 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = [*(*(&v123 + 1) + 8 * nn) dictionaryRepresentation];
          [v69 addObject:v75];
        }

        v72 = [(NSArray *)v70 countByEnumeratingWithState:&v123 objects:v167 count:16];
      }

      while (v72);
    }

    [v3 setObject:v69 forKeyedSubscript:@"pairPaymentMethodValue"];
  }

  if ([(NSArray *)self->_pairPersonValues count])
  {
    v76 = [MEMORY[0x1E695DF70] array];
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v77 = self->_pairPersonValues;
    v78 = [(NSArray *)v77 countByEnumeratingWithState:&v119 objects:v166 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v120;
      do
      {
        for (i1 = 0; i1 != v79; ++i1)
        {
          if (*v120 != v80)
          {
            objc_enumerationMutation(v77);
          }

          v82 = [*(*(&v119 + 1) + 8 * i1) dictionaryRepresentation];
          [v76 addObject:v82];
        }

        v79 = [(NSArray *)v77 countByEnumeratingWithState:&v119 objects:v166 count:16];
      }

      while (v79);
    }

    [v3 setObject:v76 forKeyedSubscript:@"pairPersonValue"];
  }

  if ([(NSArray *)self->_pairStringValues count])
  {
    v83 = [MEMORY[0x1E695DF70] array];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v84 = self->_pairStringValues;
    v85 = [(NSArray *)v84 countByEnumeratingWithState:&v115 objects:v165 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v116;
      do
      {
        for (i2 = 0; i2 != v86; ++i2)
        {
          if (*v116 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = [*(*(&v115 + 1) + 8 * i2) dictionaryRepresentation];
          [v83 addObject:v89];
        }

        v86 = [(NSArray *)v84 countByEnumeratingWithState:&v115 objects:v165 count:16];
      }

      while (v86);
    }

    [v3 setObject:v83 forKeyedSubscript:@"pairStringValue"];
  }

  if ([(NSArray *)self->_pairTemperatureValues count])
  {
    v90 = [MEMORY[0x1E695DF70] array];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v91 = self->_pairTemperatureValues;
    v92 = [(NSArray *)v91 countByEnumeratingWithState:&v111 objects:v164 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v112;
      do
      {
        for (i3 = 0; i3 != v93; ++i3)
        {
          if (*v112 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = [*(*(&v111 + 1) + 8 * i3) dictionaryRepresentation];
          [v90 addObject:v96];
        }

        v93 = [(NSArray *)v91 countByEnumeratingWithState:&v111 objects:v164 count:16];
      }

      while (v93);
    }

    [v3 setObject:v90 forKeyedSubscript:@"pairTemperatureValue"];
  }

  if ([(NSArray *)self->_pairUrlValues count])
  {
    v97 = [MEMORY[0x1E695DF70] array];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v98 = self->_pairUrlValues;
    v99 = [(NSArray *)v98 countByEnumeratingWithState:&v107 objects:v163 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v108;
      do
      {
        for (i4 = 0; i4 != v100; ++i4)
        {
          if (*v108 != v101)
          {
            objc_enumerationMutation(v98);
          }

          v103 = [*(*(&v107 + 1) + 8 * i4) dictionaryRepresentation];
          [v97 addObject:v103];
        }

        v100 = [(NSArray *)v98 countByEnumeratingWithState:&v107 objects:v163 count:16];
      }

      while (v100);
    }

    [v3 setObject:v97 forKeyedSubscript:@"pairUrlValue"];
  }

  if ([(_INPBPair *)self hasRepeated])
  {
    v104 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBPair repeated](self, "repeated")}];
    [v3 setObject:v104 forKeyedSubscript:@"repeated"];
  }

  v105 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_key hash];
  v18 = [(NSArray *)self->_pairCurrencyAmountValues hash];
  v17 = [(NSArray *)self->_pairCustomObjects hash];
  v16 = [(NSArray *)self->_pairDataStrings hash];
  v15 = [(NSArray *)self->_pairDataValues hash];
  v14 = [(NSArray *)self->_pairDistanceValues hash];
  v3 = [(NSArray *)self->_pairDoubleValues hash];
  v4 = [(NSArray *)self->_pairImageValues hash];
  v5 = [(NSArray *)self->_pairIntegerValues hash];
  v6 = [(NSArray *)self->_pairLocationValues hash];
  v7 = [(NSArray *)self->_pairPaymentMethodValues hash];
  v8 = [(NSArray *)self->_pairPersonValues hash];
  v9 = [(NSArray *)self->_pairStringValues hash];
  v10 = [(NSArray *)self->_pairTemperatureValues hash];
  v11 = [(NSArray *)self->_pairUrlValues hash];
  if ([(_INPBPair *)self hasRepeated])
  {
    v12 = 2654435761 * self->_repeated;
  }

  else
  {
    v12 = 0;
  }

  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(_INPBPair *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(_INPBPair *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBPair *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairCurrencyAmountValues];
  v6 = [v4 pairCurrencyAmountValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(_INPBPair *)self pairCurrencyAmountValues];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBPair *)self pairCurrencyAmountValues];
    v15 = [v4 pairCurrencyAmountValues];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairCustomObjects];
  v6 = [v4 pairCustomObjects];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(_INPBPair *)self pairCustomObjects];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBPair *)self pairCustomObjects];
    v20 = [v4 pairCustomObjects];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairDataStrings];
  v6 = [v4 pairDataStrings];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v22 = [(_INPBPair *)self pairDataStrings];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBPair *)self pairDataStrings];
    v25 = [v4 pairDataStrings];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairDataValues];
  v6 = [v4 pairDataValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v27 = [(_INPBPair *)self pairDataValues];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBPair *)self pairDataValues];
    v30 = [v4 pairDataValues];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairDistanceValues];
  v6 = [v4 pairDistanceValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v32 = [(_INPBPair *)self pairDistanceValues];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBPair *)self pairDistanceValues];
    v35 = [v4 pairDistanceValues];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairDoubleValues];
  v6 = [v4 pairDoubleValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v37 = [(_INPBPair *)self pairDoubleValues];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBPair *)self pairDoubleValues];
    v40 = [v4 pairDoubleValues];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairImageValues];
  v6 = [v4 pairImageValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v42 = [(_INPBPair *)self pairImageValues];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBPair *)self pairImageValues];
    v45 = [v4 pairImageValues];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairIntegerValues];
  v6 = [v4 pairIntegerValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v47 = [(_INPBPair *)self pairIntegerValues];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBPair *)self pairIntegerValues];
    v50 = [v4 pairIntegerValues];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairLocationValues];
  v6 = [v4 pairLocationValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v52 = [(_INPBPair *)self pairLocationValues];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBPair *)self pairLocationValues];
    v55 = [v4 pairLocationValues];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairPaymentMethodValues];
  v6 = [v4 pairPaymentMethodValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v57 = [(_INPBPair *)self pairPaymentMethodValues];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBPair *)self pairPaymentMethodValues];
    v60 = [v4 pairPaymentMethodValues];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairPersonValues];
  v6 = [v4 pairPersonValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v62 = [(_INPBPair *)self pairPersonValues];
  if (v62)
  {
    v63 = v62;
    v64 = [(_INPBPair *)self pairPersonValues];
    v65 = [v4 pairPersonValues];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairStringValues];
  v6 = [v4 pairStringValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v67 = [(_INPBPair *)self pairStringValues];
  if (v67)
  {
    v68 = v67;
    v69 = [(_INPBPair *)self pairStringValues];
    v70 = [v4 pairStringValues];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairTemperatureValues];
  v6 = [v4 pairTemperatureValues];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v72 = [(_INPBPair *)self pairTemperatureValues];
  if (v72)
  {
    v73 = v72;
    v74 = [(_INPBPair *)self pairTemperatureValues];
    v75 = [v4 pairTemperatureValues];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_INPBPair *)self pairUrlValues];
  v6 = [v4 pairUrlValues];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  v77 = [(_INPBPair *)self pairUrlValues];
  if (v77)
  {
    v78 = v77;
    v79 = [(_INPBPair *)self pairUrlValues];
    v80 = [v4 pairUrlValues];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v84 = [(_INPBPair *)self hasRepeated];
  if (v84 == [v4 hasRepeated])
  {
    if (!-[_INPBPair hasRepeated](self, "hasRepeated") || ![v4 hasRepeated] || (repeated = self->_repeated, repeated == objc_msgSend(v4, "repeated")))
    {
      v82 = 1;
      goto LABEL_78;
    }
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBPair allocWithZone:](_INPBPair init];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  [(_INPBPair *)v5 setKey:v6];

  v7 = [(NSArray *)self->_pairCurrencyAmountValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairCurrencyAmountValues:v7];

  v8 = [(NSArray *)self->_pairCustomObjects copyWithZone:a3];
  [(_INPBPair *)v5 setPairCustomObjects:v8];

  v9 = [(NSArray *)self->_pairDataStrings copyWithZone:a3];
  [(_INPBPair *)v5 setPairDataStrings:v9];

  v10 = [(NSArray *)self->_pairDataValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairDataValues:v10];

  v11 = [(NSArray *)self->_pairDistanceValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairDistanceValues:v11];

  v12 = [(NSArray *)self->_pairDoubleValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairDoubleValues:v12];

  v13 = [(NSArray *)self->_pairImageValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairImageValues:v13];

  v14 = [(NSArray *)self->_pairIntegerValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairIntegerValues:v14];

  v15 = [(NSArray *)self->_pairLocationValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairLocationValues:v15];

  v16 = [(NSArray *)self->_pairPaymentMethodValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairPaymentMethodValues:v16];

  v17 = [(NSArray *)self->_pairPersonValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairPersonValues:v17];

  v18 = [(NSArray *)self->_pairStringValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairStringValues:v18];

  v19 = [(NSArray *)self->_pairTemperatureValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairTemperatureValues:v19];

  v20 = [(NSArray *)self->_pairUrlValues copyWithZone:a3];
  [(_INPBPair *)v5 setPairUrlValues:v20];

  if ([(_INPBPair *)self hasRepeated])
  {
    [(_INPBPair *)v5 setRepeated:[(_INPBPair *)self repeated]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBPair *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBPair *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v163 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBPair *)self key];

  if (v5)
  {
    key = self->_key;
    PBDataWriterWriteStringField();
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v7 = self->_pairCurrencyAmountValues;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v145 objects:v162 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v146;
    do
    {
      v11 = 0;
      do
      {
        if (*v146 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v145 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v145 objects:v162 count:16];
    }

    while (v9);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v13 = self->_pairCustomObjects;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v141 objects:v161 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v142;
    do
    {
      v17 = 0;
      do
      {
        if (*v142 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v141 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v141 objects:v161 count:16];
    }

    while (v15);
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v19 = self->_pairDataStrings;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v137 objects:v160 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v138;
    do
    {
      v23 = 0;
      do
      {
        if (*v138 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v137 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v137 objects:v160 count:16];
    }

    while (v21);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v25 = self->_pairDataValues;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v133 objects:v159 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v134;
    do
    {
      v29 = 0;
      do
      {
        if (*v134 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v133 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v133 objects:v159 count:16];
    }

    while (v27);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v31 = self->_pairDistanceValues;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v129 objects:v158 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v130;
    do
    {
      v35 = 0;
      do
      {
        if (*v130 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v129 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v129 objects:v158 count:16];
    }

    while (v33);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v37 = self->_pairDoubleValues;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v125 objects:v157 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v126;
    do
    {
      v41 = 0;
      do
      {
        if (*v126 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v125 + 1) + 8 * v41);
        PBDataWriterWriteSubmessage();
        ++v41;
      }

      while (v39 != v41);
      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v125 objects:v157 count:16];
    }

    while (v39);
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v43 = self->_pairImageValues;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v121 objects:v156 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v122;
    do
    {
      v47 = 0;
      do
      {
        if (*v122 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v121 + 1) + 8 * v47);
        PBDataWriterWriteSubmessage();
        ++v47;
      }

      while (v45 != v47);
      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v121 objects:v156 count:16];
    }

    while (v45);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v49 = self->_pairIntegerValues;
  v50 = [(NSArray *)v49 countByEnumeratingWithState:&v117 objects:v155 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v118;
    do
    {
      v53 = 0;
      do
      {
        if (*v118 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v117 + 1) + 8 * v53);
        PBDataWriterWriteSubmessage();
        ++v53;
      }

      while (v51 != v53);
      v51 = [(NSArray *)v49 countByEnumeratingWithState:&v117 objects:v155 count:16];
    }

    while (v51);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v55 = self->_pairLocationValues;
  v56 = [(NSArray *)v55 countByEnumeratingWithState:&v113 objects:v154 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v114;
    do
    {
      v59 = 0;
      do
      {
        if (*v114 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v113 + 1) + 8 * v59);
        PBDataWriterWriteSubmessage();
        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSArray *)v55 countByEnumeratingWithState:&v113 objects:v154 count:16];
    }

    while (v57);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v61 = self->_pairPaymentMethodValues;
  v62 = [(NSArray *)v61 countByEnumeratingWithState:&v109 objects:v153 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v110;
    do
    {
      v65 = 0;
      do
      {
        if (*v110 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v109 + 1) + 8 * v65);
        PBDataWriterWriteSubmessage();
        ++v65;
      }

      while (v63 != v65);
      v63 = [(NSArray *)v61 countByEnumeratingWithState:&v109 objects:v153 count:16];
    }

    while (v63);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v67 = self->_pairPersonValues;
  v68 = [(NSArray *)v67 countByEnumeratingWithState:&v105 objects:v152 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v106;
    do
    {
      v71 = 0;
      do
      {
        if (*v106 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v105 + 1) + 8 * v71);
        PBDataWriterWriteSubmessage();
        ++v71;
      }

      while (v69 != v71);
      v69 = [(NSArray *)v67 countByEnumeratingWithState:&v105 objects:v152 count:16];
    }

    while (v69);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v73 = self->_pairStringValues;
  v74 = [(NSArray *)v73 countByEnumeratingWithState:&v101 objects:v151 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v102;
    do
    {
      v77 = 0;
      do
      {
        if (*v102 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v101 + 1) + 8 * v77);
        PBDataWriterWriteSubmessage();
        ++v77;
      }

      while (v75 != v77);
      v75 = [(NSArray *)v73 countByEnumeratingWithState:&v101 objects:v151 count:16];
    }

    while (v75);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v79 = self->_pairTemperatureValues;
  v80 = [(NSArray *)v79 countByEnumeratingWithState:&v97 objects:v150 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v98;
    do
    {
      v83 = 0;
      do
      {
        if (*v98 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v97 + 1) + 8 * v83);
        PBDataWriterWriteSubmessage();
        ++v83;
      }

      while (v81 != v83);
      v81 = [(NSArray *)v79 countByEnumeratingWithState:&v97 objects:v150 count:16];
    }

    while (v81);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v85 = self->_pairUrlValues;
  v86 = [(NSArray *)v85 countByEnumeratingWithState:&v93 objects:v149 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v94;
    do
    {
      v89 = 0;
      do
      {
        if (*v94 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = *(*(&v93 + 1) + 8 * v89);
        PBDataWriterWriteSubmessage();
        ++v89;
      }

      while (v87 != v89);
      v87 = [(NSArray *)v85 countByEnumeratingWithState:&v93 objects:v149 count:16];
    }

    while (v87);
  }

  if ([(_INPBPair *)self hasRepeated])
  {
    repeated = self->_repeated;
    PBDataWriterWriteBOOLField();
  }

  v92 = *MEMORY[0x1E69E9840];
}

- (void)addPairUrlValue:(id)a3
{
  v4 = a3;
  pairUrlValues = self->_pairUrlValues;
  v8 = v4;
  if (!pairUrlValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairUrlValues;
    self->_pairUrlValues = v6;

    v4 = v8;
    pairUrlValues = self->_pairUrlValues;
  }

  [(NSArray *)pairUrlValues addObject:v4];
}

- (void)setPairUrlValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairUrlValues = self->_pairUrlValues;
  self->_pairUrlValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairUrlValues);
}

- (void)addPairTemperatureValue:(id)a3
{
  v4 = a3;
  pairTemperatureValues = self->_pairTemperatureValues;
  v8 = v4;
  if (!pairTemperatureValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairTemperatureValues;
    self->_pairTemperatureValues = v6;

    v4 = v8;
    pairTemperatureValues = self->_pairTemperatureValues;
  }

  [(NSArray *)pairTemperatureValues addObject:v4];
}

- (void)setPairTemperatureValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairTemperatureValues = self->_pairTemperatureValues;
  self->_pairTemperatureValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairTemperatureValues);
}

- (void)addPairStringValue:(id)a3
{
  v4 = a3;
  pairStringValues = self->_pairStringValues;
  v8 = v4;
  if (!pairStringValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairStringValues;
    self->_pairStringValues = v6;

    v4 = v8;
    pairStringValues = self->_pairStringValues;
  }

  [(NSArray *)pairStringValues addObject:v4];
}

- (void)setPairStringValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairStringValues = self->_pairStringValues;
  self->_pairStringValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairStringValues);
}

- (void)addPairPersonValue:(id)a3
{
  v4 = a3;
  pairPersonValues = self->_pairPersonValues;
  v8 = v4;
  if (!pairPersonValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairPersonValues;
    self->_pairPersonValues = v6;

    v4 = v8;
    pairPersonValues = self->_pairPersonValues;
  }

  [(NSArray *)pairPersonValues addObject:v4];
}

- (void)setPairPersonValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairPersonValues = self->_pairPersonValues;
  self->_pairPersonValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairPersonValues);
}

- (void)addPairPaymentMethodValue:(id)a3
{
  v4 = a3;
  pairPaymentMethodValues = self->_pairPaymentMethodValues;
  v8 = v4;
  if (!pairPaymentMethodValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairPaymentMethodValues;
    self->_pairPaymentMethodValues = v6;

    v4 = v8;
    pairPaymentMethodValues = self->_pairPaymentMethodValues;
  }

  [(NSArray *)pairPaymentMethodValues addObject:v4];
}

- (void)setPairPaymentMethodValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairPaymentMethodValues = self->_pairPaymentMethodValues;
  self->_pairPaymentMethodValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairPaymentMethodValues);
}

- (void)addPairLocationValue:(id)a3
{
  v4 = a3;
  pairLocationValues = self->_pairLocationValues;
  v8 = v4;
  if (!pairLocationValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairLocationValues;
    self->_pairLocationValues = v6;

    v4 = v8;
    pairLocationValues = self->_pairLocationValues;
  }

  [(NSArray *)pairLocationValues addObject:v4];
}

- (void)setPairLocationValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairLocationValues = self->_pairLocationValues;
  self->_pairLocationValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairLocationValues);
}

- (void)addPairIntegerValue:(id)a3
{
  v4 = a3;
  pairIntegerValues = self->_pairIntegerValues;
  v8 = v4;
  if (!pairIntegerValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairIntegerValues;
    self->_pairIntegerValues = v6;

    v4 = v8;
    pairIntegerValues = self->_pairIntegerValues;
  }

  [(NSArray *)pairIntegerValues addObject:v4];
}

- (void)setPairIntegerValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairIntegerValues = self->_pairIntegerValues;
  self->_pairIntegerValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairIntegerValues);
}

- (void)addPairImageValue:(id)a3
{
  v4 = a3;
  pairImageValues = self->_pairImageValues;
  v8 = v4;
  if (!pairImageValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairImageValues;
    self->_pairImageValues = v6;

    v4 = v8;
    pairImageValues = self->_pairImageValues;
  }

  [(NSArray *)pairImageValues addObject:v4];
}

- (void)setPairImageValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairImageValues = self->_pairImageValues;
  self->_pairImageValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairImageValues);
}

- (void)addPairDoubleValue:(id)a3
{
  v4 = a3;
  pairDoubleValues = self->_pairDoubleValues;
  v8 = v4;
  if (!pairDoubleValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDoubleValues;
    self->_pairDoubleValues = v6;

    v4 = v8;
    pairDoubleValues = self->_pairDoubleValues;
  }

  [(NSArray *)pairDoubleValues addObject:v4];
}

- (void)setPairDoubleValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairDoubleValues = self->_pairDoubleValues;
  self->_pairDoubleValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDoubleValues);
}

- (void)addPairDistanceValue:(id)a3
{
  v4 = a3;
  pairDistanceValues = self->_pairDistanceValues;
  v8 = v4;
  if (!pairDistanceValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDistanceValues;
    self->_pairDistanceValues = v6;

    v4 = v8;
    pairDistanceValues = self->_pairDistanceValues;
  }

  [(NSArray *)pairDistanceValues addObject:v4];
}

- (void)setPairDistanceValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairDistanceValues = self->_pairDistanceValues;
  self->_pairDistanceValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDistanceValues);
}

- (void)addPairDataValue:(id)a3
{
  v4 = a3;
  pairDataValues = self->_pairDataValues;
  v8 = v4;
  if (!pairDataValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDataValues;
    self->_pairDataValues = v6;

    v4 = v8;
    pairDataValues = self->_pairDataValues;
  }

  [(NSArray *)pairDataValues addObject:v4];
}

- (void)setPairDataValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairDataValues = self->_pairDataValues;
  self->_pairDataValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairDataValues);
}

- (void)addPairDataString:(id)a3
{
  v4 = a3;
  pairDataStrings = self->_pairDataStrings;
  v8 = v4;
  if (!pairDataStrings)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairDataStrings;
    self->_pairDataStrings = v6;

    v4 = v8;
    pairDataStrings = self->_pairDataStrings;
  }

  [(NSArray *)pairDataStrings addObject:v4];
}

- (void)setPairDataStrings:(id)a3
{
  v4 = [a3 mutableCopy];
  pairDataStrings = self->_pairDataStrings;
  self->_pairDataStrings = v4;

  MEMORY[0x1EEE66BB8](v4, pairDataStrings);
}

- (void)addPairCustomObject:(id)a3
{
  v4 = a3;
  pairCustomObjects = self->_pairCustomObjects;
  v8 = v4;
  if (!pairCustomObjects)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairCustomObjects;
    self->_pairCustomObjects = v6;

    v4 = v8;
    pairCustomObjects = self->_pairCustomObjects;
  }

  [(NSArray *)pairCustomObjects addObject:v4];
}

- (void)setPairCustomObjects:(id)a3
{
  v4 = [a3 mutableCopy];
  pairCustomObjects = self->_pairCustomObjects;
  self->_pairCustomObjects = v4;

  MEMORY[0x1EEE66BB8](v4, pairCustomObjects);
}

- (void)addPairCurrencyAmountValue:(id)a3
{
  v4 = a3;
  pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  v8 = v4;
  if (!pairCurrencyAmountValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pairCurrencyAmountValues;
    self->_pairCurrencyAmountValues = v6;

    v4 = v8;
    pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  }

  [(NSArray *)pairCurrencyAmountValues addObject:v4];
}

- (void)setPairCurrencyAmountValues:(id)a3
{
  v4 = [a3 mutableCopy];
  pairCurrencyAmountValues = self->_pairCurrencyAmountValues;
  self->_pairCurrencyAmountValues = v4;

  MEMORY[0x1EEE66BB8](v4, pairCurrencyAmountValues);
}

- (void)setKey:(id)a3
{
  v4 = [a3 copy];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x1EEE66BB8](v4, key);
}

@end