@interface _INPBMessage
- (BOOL)isEqual:(id)a3;
- (_INPBMessage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAttributes:(id)a3;
- (int)StringAsEffect:(id)a3;
- (int)StringAsType:(id)a3;
- (unint64_t)hash;
- (void)addAttachmentFile:(id)a3;
- (void)addAttribute:(int)a3;
- (void)addInlineGlyphContent:(id)a3;
- (void)addRecipient:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAttachmentFiles:(id)a3;
- (void)setContent:(id)a3;
- (void)setConversationIdentifier:(id)a3;
- (void)setEffect:(int)a3;
- (void)setFileExtension:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setInlineGlyphContents:(id)a3;
- (void)setLocationName:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setServiceName:(id)a3;
- (void)setTranslatedToLanguage:(id)a3;
- (void)setType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBMessage

- (void)dealloc
{
  [(_INPBMessage *)self clearAttributes];
  v3.receiver = self;
  v3.super_class = _INPBMessage;
  [(_INPBMessage *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_attachmentFiles count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v5 = self->_attachmentFiles;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v83 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"attachmentFile"];
  }

  if (self->_attributes.count)
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBMessage attributesCount](self, "attributesCount")}];
    if ([(_INPBMessage *)self attributesCount])
    {
      v12 = 0;
      do
      {
        v13 = self->_attributes.list[v12] - 1;
        if (v13 >= 5)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attributes.list[v12]];
        }

        else
        {
          v14 = *(&off_1E727E7A8 + v13);
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < [(_INPBMessage *)self attributesCount]);
    }

    [v3 setObject:v11 forKeyedSubscript:@"attribute"];
  }

  v15 = [(_INPBMessage *)self audioMessageFile];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"audioMessageFile"];

  if (self->_content)
  {
    v17 = [(_INPBMessage *)self content];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"content"];
  }

  if (self->_conversationIdentifier)
  {
    v19 = [(_INPBMessage *)self conversationIdentifier];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"conversationIdentifier"];
  }

  v21 = [(_INPBMessage *)self dateLastMessageRead];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"dateLastMessageRead"];

  v23 = [(_INPBMessage *)self dateSent];
  v24 = [v23 dictionaryRepresentation];
  [v3 setObject:v24 forKeyedSubscript:@"dateSent"];

  if ([(_INPBMessage *)self hasEffect])
  {
    v25 = [(_INPBMessage *)self effect];
    if ((v25 - 1) >= 0xD)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
    }

    else
    {
      v26 = *(&off_1E727E7D0 + (v25 - 1));
    }

    [v3 setObject:v26 forKeyedSubscript:@"effect"];
  }

  if (self->_fileExtension)
  {
    v27 = [(_INPBMessage *)self fileExtension];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"fileExtension"];
  }

  if (self->_groupName)
  {
    v29 = [(_INPBMessage *)self groupName];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"groupName"];
  }

  if (self->_identifier)
  {
    v31 = [(_INPBMessage *)self identifier];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"identifier"];
  }

  if ([(NSArray *)self->_inlineGlyphContents count])
  {
    v33 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v34 = self->_inlineGlyphContents;
    v35 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v80;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v80 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v79 + 1) + 8 * j) dictionaryRepresentation];
          [v33 addObject:v39];
        }

        v36 = [(NSArray *)v34 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v36);
    }

    [v3 setObject:v33 forKeyedSubscript:@"inlineGlyphContent"];
  }

  v40 = [(_INPBMessage *)self linkMetadata];
  v41 = [v40 dictionaryRepresentation];
  [v3 setObject:v41 forKeyedSubscript:@"linkMetadata"];

  v42 = [(_INPBMessage *)self location];
  v43 = [v42 dictionaryRepresentation];
  [v3 setObject:v43 forKeyedSubscript:@"location"];

  if (self->_locationName)
  {
    v44 = [(_INPBMessage *)self locationName];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"locationName"];
  }

  v46 = [(_INPBMessage *)self numberOfAttachments];
  v47 = [v46 dictionaryRepresentation];
  [v3 setObject:v47 forKeyedSubscript:@"numberOfAttachments"];

  v48 = [(_INPBMessage *)self paymentAmount];
  v49 = [v48 dictionaryRepresentation];
  [v3 setObject:v49 forKeyedSubscript:@"paymentAmount"];

  v50 = [(_INPBMessage *)self reaction];
  v51 = [v50 dictionaryRepresentation];
  [v3 setObject:v51 forKeyedSubscript:@"reaction"];

  if ([(NSArray *)self->_recipients count])
  {
    v52 = [MEMORY[0x1E695DF70] array];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v53 = self->_recipients;
    v54 = [(NSArray *)v53 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v76;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v76 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = [*(*(&v75 + 1) + 8 * k) dictionaryRepresentation];
          [v52 addObject:v58];
        }

        v55 = [(NSArray *)v53 countByEnumeratingWithState:&v75 objects:v87 count:16];
      }

      while (v55);
    }

    [v3 setObject:v52 forKeyedSubscript:@"recipient"];
  }

  v59 = [(_INPBMessage *)self referencedMessage];
  v60 = [v59 dictionaryRepresentation];
  [v3 setObject:v60 forKeyedSubscript:@"referencedMessage"];

  v61 = [(_INPBMessage *)self sender];
  v62 = [v61 dictionaryRepresentation];
  [v3 setObject:v62 forKeyedSubscript:@"sender"];

  if (self->_serviceName)
  {
    v63 = [(_INPBMessage *)self serviceName];
    v64 = [v63 copy];
    [v3 setObject:v64 forKeyedSubscript:@"serviceName"];
  }

  v65 = [(_INPBMessage *)self speakableGroupName];
  v66 = [v65 dictionaryRepresentation];
  [v3 setObject:v66 forKeyedSubscript:@"speakableGroupName"];

  v67 = [(_INPBMessage *)self sticker];
  v68 = [v67 dictionaryRepresentation];
  [v3 setObject:v68 forKeyedSubscript:@"sticker"];

  if (self->_translatedToLanguage)
  {
    v69 = [(_INPBMessage *)self translatedToLanguage];
    v70 = [v69 copy];
    [v3 setObject:v70 forKeyedSubscript:@"translatedToLanguage"];
  }

  if ([(_INPBMessage *)self hasType])
  {
    v71 = [(_INPBMessage *)self type];
    if ((v71 - 1) >= 0x23)
    {
      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v71];
    }

    else
    {
      v72 = *(&off_1E727E838 + (v71 - 1));
    }

    [v3 setObject:v72 forKeyedSubscript:@"type"];
  }

  v73 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v29 = [(NSArray *)self->_attachmentFiles hash];
  v28 = PBRepeatedInt32Hash();
  v27 = [(_INPBFile *)self->_audioMessageFile hash];
  v26 = [(NSString *)self->_content hash];
  v25 = [(NSString *)self->_conversationIdentifier hash];
  v24 = [(_INPBDateTime *)self->_dateLastMessageRead hash];
  v23 = [(_INPBDateTime *)self->_dateSent hash];
  if ([(_INPBMessage *)self hasEffect])
  {
    v22 = 2654435761 * self->_effect;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_fileExtension hash];
  v20 = [(NSString *)self->_groupName hash];
  v19 = [(NSString *)self->_identifier hash];
  v18 = [(NSArray *)self->_inlineGlyphContents hash];
  v17 = [(_INPBMessageLinkMetadata *)self->_linkMetadata hash];
  v16 = [(_INPBLocation *)self->_location hash];
  v15 = [(NSString *)self->_locationName hash];
  v14 = [(_INPBInteger *)self->_numberOfAttachments hash];
  v3 = [(_INPBCurrencyAmountValue *)self->_paymentAmount hash];
  v4 = [(_INPBMessageReaction *)self->_reaction hash];
  v5 = [(NSArray *)self->_recipients hash];
  v6 = [(_INPBMessage *)self->_referencedMessage hash];
  v7 = [(_INPBContact *)self->_sender hash];
  v8 = [(NSString *)self->_serviceName hash];
  v9 = [(_INPBDataString *)self->_speakableGroupName hash];
  v10 = [(_INPBSticker *)self->_sticker hash];
  v11 = [(NSString *)self->_translatedToLanguage hash];
  if ([(_INPBMessage *)self hasType])
  {
    v12 = 2654435761 * self->_type;
  }

  else
  {
    v12 = 0;
  }

  return v28 ^ v29 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  v5 = [(_INPBMessage *)self attachmentFiles];
  v6 = [v4 attachmentFiles];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v7 = [(_INPBMessage *)self attachmentFiles];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBMessage *)self attachmentFiles];
    v10 = [v4 attachmentFiles];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_122;
  }

  v5 = [(_INPBMessage *)self audioMessageFile];
  v6 = [v4 audioMessageFile];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v12 = [(_INPBMessage *)self audioMessageFile];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBMessage *)self audioMessageFile];
    v15 = [v4 audioMessageFile];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v17 = [(_INPBMessage *)self content];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBMessage *)self content];
    v20 = [v4 content];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self conversationIdentifier];
  v6 = [v4 conversationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v22 = [(_INPBMessage *)self conversationIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBMessage *)self conversationIdentifier];
    v25 = [v4 conversationIdentifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self dateLastMessageRead];
  v6 = [v4 dateLastMessageRead];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v27 = [(_INPBMessage *)self dateLastMessageRead];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBMessage *)self dateLastMessageRead];
    v30 = [v4 dateLastMessageRead];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self dateSent];
  v6 = [v4 dateSent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v32 = [(_INPBMessage *)self dateSent];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBMessage *)self dateSent];
    v35 = [v4 dateSent];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v37 = [(_INPBMessage *)self hasEffect];
  if (v37 != [v4 hasEffect])
  {
    goto LABEL_122;
  }

  if ([(_INPBMessage *)self hasEffect])
  {
    if ([v4 hasEffect])
    {
      effect = self->_effect;
      if (effect != [v4 effect])
      {
        goto LABEL_122;
      }
    }
  }

  v5 = [(_INPBMessage *)self fileExtension];
  v6 = [v4 fileExtension];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v39 = [(_INPBMessage *)self fileExtension];
  if (v39)
  {
    v40 = v39;
    v41 = [(_INPBMessage *)self fileExtension];
    v42 = [v4 fileExtension];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v44 = [(_INPBMessage *)self groupName];
  if (v44)
  {
    v45 = v44;
    v46 = [(_INPBMessage *)self groupName];
    v47 = [v4 groupName];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v49 = [(_INPBMessage *)self identifier];
  if (v49)
  {
    v50 = v49;
    v51 = [(_INPBMessage *)self identifier];
    v52 = [v4 identifier];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self inlineGlyphContents];
  v6 = [v4 inlineGlyphContents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v54 = [(_INPBMessage *)self inlineGlyphContents];
  if (v54)
  {
    v55 = v54;
    v56 = [(_INPBMessage *)self inlineGlyphContents];
    v57 = [v4 inlineGlyphContents];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self linkMetadata];
  v6 = [v4 linkMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v59 = [(_INPBMessage *)self linkMetadata];
  if (v59)
  {
    v60 = v59;
    v61 = [(_INPBMessage *)self linkMetadata];
    v62 = [v4 linkMetadata];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v64 = [(_INPBMessage *)self location];
  if (v64)
  {
    v65 = v64;
    v66 = [(_INPBMessage *)self location];
    v67 = [v4 location];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self locationName];
  v6 = [v4 locationName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v69 = [(_INPBMessage *)self locationName];
  if (v69)
  {
    v70 = v69;
    v71 = [(_INPBMessage *)self locationName];
    v72 = [v4 locationName];
    v73 = [v71 isEqual:v72];

    if (!v73)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self numberOfAttachments];
  v6 = [v4 numberOfAttachments];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v74 = [(_INPBMessage *)self numberOfAttachments];
  if (v74)
  {
    v75 = v74;
    v76 = [(_INPBMessage *)self numberOfAttachments];
    v77 = [v4 numberOfAttachments];
    v78 = [v76 isEqual:v77];

    if (!v78)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self paymentAmount];
  v6 = [v4 paymentAmount];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v79 = [(_INPBMessage *)self paymentAmount];
  if (v79)
  {
    v80 = v79;
    v81 = [(_INPBMessage *)self paymentAmount];
    v82 = [v4 paymentAmount];
    v83 = [v81 isEqual:v82];

    if (!v83)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self reaction];
  v6 = [v4 reaction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v84 = [(_INPBMessage *)self reaction];
  if (v84)
  {
    v85 = v84;
    v86 = [(_INPBMessage *)self reaction];
    v87 = [v4 reaction];
    v88 = [v86 isEqual:v87];

    if (!v88)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self recipients];
  v6 = [v4 recipients];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v89 = [(_INPBMessage *)self recipients];
  if (v89)
  {
    v90 = v89;
    v91 = [(_INPBMessage *)self recipients];
    v92 = [v4 recipients];
    v93 = [v91 isEqual:v92];

    if (!v93)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self referencedMessage];
  v6 = [v4 referencedMessage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v94 = [(_INPBMessage *)self referencedMessage];
  if (v94)
  {
    v95 = v94;
    v96 = [(_INPBMessage *)self referencedMessage];
    v97 = [v4 referencedMessage];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self sender];
  v6 = [v4 sender];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v99 = [(_INPBMessage *)self sender];
  if (v99)
  {
    v100 = v99;
    v101 = [(_INPBMessage *)self sender];
    v102 = [v4 sender];
    v103 = [v101 isEqual:v102];

    if (!v103)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self serviceName];
  v6 = [v4 serviceName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v104 = [(_INPBMessage *)self serviceName];
  if (v104)
  {
    v105 = v104;
    v106 = [(_INPBMessage *)self serviceName];
    v107 = [v4 serviceName];
    v108 = [v106 isEqual:v107];

    if (!v108)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self speakableGroupName];
  v6 = [v4 speakableGroupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v109 = [(_INPBMessage *)self speakableGroupName];
  if (v109)
  {
    v110 = v109;
    v111 = [(_INPBMessage *)self speakableGroupName];
    v112 = [v4 speakableGroupName];
    v113 = [v111 isEqual:v112];

    if (!v113)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self sticker];
  v6 = [v4 sticker];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_121;
  }

  v114 = [(_INPBMessage *)self sticker];
  if (v114)
  {
    v115 = v114;
    v116 = [(_INPBMessage *)self sticker];
    v117 = [v4 sticker];
    v118 = [v116 isEqual:v117];

    if (!v118)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v5 = [(_INPBMessage *)self translatedToLanguage];
  v6 = [v4 translatedToLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_121:

    goto LABEL_122;
  }

  v119 = [(_INPBMessage *)self translatedToLanguage];
  if (v119)
  {
    v120 = v119;
    v121 = [(_INPBMessage *)self translatedToLanguage];
    v122 = [v4 translatedToLanguage];
    v123 = [v121 isEqual:v122];

    if (!v123)
    {
      goto LABEL_122;
    }
  }

  else
  {
  }

  v126 = [(_INPBMessage *)self hasType];
  if (v126 == [v4 hasType])
  {
    if (!-[_INPBMessage hasType](self, "hasType") || ![v4 hasType] || (type = self->_type, type == objc_msgSend(v4, "type")))
    {
      v124 = 1;
      goto LABEL_123;
    }
  }

LABEL_122:
  v124 = 0;
LABEL_123:

  return v124;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBMessage allocWithZone:](_INPBMessage init];
  v6 = [(NSArray *)self->_attachmentFiles copyWithZone:a3];
  [(_INPBMessage *)v5 setAttachmentFiles:v6];

  PBRepeatedInt32Copy();
  v7 = [(_INPBFile *)self->_audioMessageFile copyWithZone:a3];
  [(_INPBMessage *)v5 setAudioMessageFile:v7];

  v8 = [(NSString *)self->_content copyWithZone:a3];
  [(_INPBMessage *)v5 setContent:v8];

  v9 = [(NSString *)self->_conversationIdentifier copyWithZone:a3];
  [(_INPBMessage *)v5 setConversationIdentifier:v9];

  v10 = [(_INPBDateTime *)self->_dateLastMessageRead copyWithZone:a3];
  [(_INPBMessage *)v5 setDateLastMessageRead:v10];

  v11 = [(_INPBDateTime *)self->_dateSent copyWithZone:a3];
  [(_INPBMessage *)v5 setDateSent:v11];

  if ([(_INPBMessage *)self hasEffect])
  {
    [(_INPBMessage *)v5 setEffect:[(_INPBMessage *)self effect]];
  }

  v12 = [(NSString *)self->_fileExtension copyWithZone:a3];
  [(_INPBMessage *)v5 setFileExtension:v12];

  v13 = [(NSString *)self->_groupName copyWithZone:a3];
  [(_INPBMessage *)v5 setGroupName:v13];

  v14 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBMessage *)v5 setIdentifier:v14];

  v15 = [(NSArray *)self->_inlineGlyphContents copyWithZone:a3];
  [(_INPBMessage *)v5 setInlineGlyphContents:v15];

  v16 = [(_INPBMessageLinkMetadata *)self->_linkMetadata copyWithZone:a3];
  [(_INPBMessage *)v5 setLinkMetadata:v16];

  v17 = [(_INPBLocation *)self->_location copyWithZone:a3];
  [(_INPBMessage *)v5 setLocation:v17];

  v18 = [(NSString *)self->_locationName copyWithZone:a3];
  [(_INPBMessage *)v5 setLocationName:v18];

  v19 = [(_INPBInteger *)self->_numberOfAttachments copyWithZone:a3];
  [(_INPBMessage *)v5 setNumberOfAttachments:v19];

  v20 = [(_INPBCurrencyAmountValue *)self->_paymentAmount copyWithZone:a3];
  [(_INPBMessage *)v5 setPaymentAmount:v20];

  v21 = [(_INPBMessageReaction *)self->_reaction copyWithZone:a3];
  [(_INPBMessage *)v5 setReaction:v21];

  v22 = [(NSArray *)self->_recipients copyWithZone:a3];
  [(_INPBMessage *)v5 setRecipients:v22];

  v23 = [(_INPBMessage *)self->_referencedMessage copyWithZone:a3];
  [(_INPBMessage *)v5 setReferencedMessage:v23];

  v24 = [(_INPBContact *)self->_sender copyWithZone:a3];
  [(_INPBMessage *)v5 setSender:v24];

  v25 = [(NSString *)self->_serviceName copyWithZone:a3];
  [(_INPBMessage *)v5 setServiceName:v25];

  v26 = [(_INPBDataString *)self->_speakableGroupName copyWithZone:a3];
  [(_INPBMessage *)v5 setSpeakableGroupName:v26];

  v27 = [(_INPBSticker *)self->_sticker copyWithZone:a3];
  [(_INPBMessage *)v5 setSticker:v27];

  v28 = [(NSString *)self->_translatedToLanguage copyWithZone:a3];
  [(_INPBMessage *)v5 setTranslatedToLanguage:v28];

  if ([(_INPBMessage *)self hasType])
  {
    [(_INPBMessage *)v5 setType:[(_INPBMessage *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBMessage *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBMessage *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v5 = self->_attachmentFiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v77;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v77 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v76 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v7);
  }

  if (self->_attributes.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_attributes.list[v11];
      PBDataWriterWriteInt32Field();
      ++v11;
    }

    while (v11 < self->_attributes.count);
  }

  v13 = [(_INPBMessage *)self audioMessageFile];

  if (v13)
  {
    v14 = [(_INPBMessage *)self audioMessageFile];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBMessage *)self content];

  if (v15)
  {
    content = self->_content;
    PBDataWriterWriteStringField();
  }

  v17 = [(_INPBMessage *)self conversationIdentifier];

  if (v17)
  {
    conversationIdentifier = self->_conversationIdentifier;
    PBDataWriterWriteStringField();
  }

  v19 = [(_INPBMessage *)self dateLastMessageRead];

  if (v19)
  {
    v20 = [(_INPBMessage *)self dateLastMessageRead];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBMessage *)self dateSent];

  if (v21)
  {
    v22 = [(_INPBMessage *)self dateSent];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBMessage *)self hasEffect])
  {
    effect = self->_effect;
    PBDataWriterWriteInt32Field();
  }

  v24 = [(_INPBMessage *)self fileExtension];

  if (v24)
  {
    fileExtension = self->_fileExtension;
    PBDataWriterWriteStringField();
  }

  v26 = [(_INPBMessage *)self groupName];

  if (v26)
  {
    groupName = self->_groupName;
    PBDataWriterWriteStringField();
  }

  v28 = [(_INPBMessage *)self identifier];

  if (v28)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = self->_inlineGlyphContents;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v73;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v73 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v72 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v32);
  }

  v36 = [(_INPBMessage *)self linkMetadata];

  if (v36)
  {
    v37 = [(_INPBMessage *)self linkMetadata];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(_INPBMessage *)self location];

  if (v38)
  {
    v39 = [(_INPBMessage *)self location];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(_INPBMessage *)self locationName];

  if (v40)
  {
    locationName = self->_locationName;
    PBDataWriterWriteStringField();
  }

  v42 = [(_INPBMessage *)self numberOfAttachments];

  if (v42)
  {
    v43 = [(_INPBMessage *)self numberOfAttachments];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(_INPBMessage *)self paymentAmount];

  if (v44)
  {
    v45 = [(_INPBMessage *)self paymentAmount];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(_INPBMessage *)self reaction];

  if (v46)
  {
    v47 = [(_INPBMessage *)self reaction];
    PBDataWriterWriteSubmessage();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v48 = self->_recipients;
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v69;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v69 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v68 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v50);
  }

  v54 = [(_INPBMessage *)self referencedMessage];

  if (v54)
  {
    v55 = [(_INPBMessage *)self referencedMessage];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(_INPBMessage *)self sender];

  if (v56)
  {
    v57 = [(_INPBMessage *)self sender];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(_INPBMessage *)self serviceName];

  if (v58)
  {
    serviceName = self->_serviceName;
    PBDataWriterWriteStringField();
  }

  v60 = [(_INPBMessage *)self speakableGroupName];

  if (v60)
  {
    v61 = [(_INPBMessage *)self speakableGroupName];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(_INPBMessage *)self sticker];

  if (v62)
  {
    v63 = [(_INPBMessage *)self sticker];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(_INPBMessage *)self translatedToLanguage];

  if (v64)
  {
    translatedToLanguage = self->_translatedToLanguage;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBMessage *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TEXT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AUDIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DIGITAL_TOUCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HANDWRITING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"STICKER"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TAPBACK_LIKED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TAPBACK_DISLIKED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"TAPBACK_EMPHASIZED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TAPBACK_LOVED"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TAPBACK_QUESTIONED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TAPBACK_LAUGHED"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_CALENDAR"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_LOCATION"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_ADDRESS_CARD"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_IMAGE"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_VIDEO"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_PASS"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_AUDIO"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"PAYMENT_SENT"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"PAYMENT_REQUEST"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"PAYMENT_NOTE"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"ANIMOJI"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_SNIPPET"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"FILE"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"LINK"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"MESSAGE_REACTION"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"SAFETY_MONITOR"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"LOCATION_REQUEST"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"SHARED_LOCATION"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"FIND_MY"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"SCREEN_TIME_REQUEST"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"ASK_TO"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"MEDIA_TYPE_ANIMATED_IMAGE"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"THIRD_PARTY_ATTACHMENT"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"POLL"])
  {
    v4 = 35;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_type = a3;
  }
}

- (void)setTranslatedToLanguage:(id)a3
{
  v4 = [a3 copy];
  translatedToLanguage = self->_translatedToLanguage;
  self->_translatedToLanguage = v4;

  MEMORY[0x1EEE66BB8](v4, translatedToLanguage);
}

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x1EEE66BB8](v4, serviceName);
}

- (void)addRecipient:(id)a3
{
  v4 = a3;
  recipients = self->_recipients;
  v8 = v4;
  if (!recipients)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = v6;

    v4 = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:v4];
}

- (void)setRecipients:(id)a3
{
  v4 = [a3 mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (void)setLocationName:(id)a3
{
  v4 = [a3 copy];
  locationName = self->_locationName;
  self->_locationName = v4;

  MEMORY[0x1EEE66BB8](v4, locationName);
}

- (void)addInlineGlyphContent:(id)a3
{
  v4 = a3;
  inlineGlyphContents = self->_inlineGlyphContents;
  v8 = v4;
  if (!inlineGlyphContents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_inlineGlyphContents;
    self->_inlineGlyphContents = v6;

    v4 = v8;
    inlineGlyphContents = self->_inlineGlyphContents;
  }

  [(NSArray *)inlineGlyphContents addObject:v4];
}

- (void)setInlineGlyphContents:(id)a3
{
  v4 = [a3 mutableCopy];
  inlineGlyphContents = self->_inlineGlyphContents;
  self->_inlineGlyphContents = v4;

  MEMORY[0x1EEE66BB8](v4, inlineGlyphContents);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

- (void)setGroupName:(id)a3
{
  v4 = [a3 copy];
  groupName = self->_groupName;
  self->_groupName = v4;

  MEMORY[0x1EEE66BB8](v4, groupName);
}

- (void)setFileExtension:(id)a3
{
  v4 = [a3 copy];
  fileExtension = self->_fileExtension;
  self->_fileExtension = v4;

  MEMORY[0x1EEE66BB8](v4, fileExtension);
}

- (int)StringAsEffect:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HAPPY_BIRTHDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONFETTI"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LASERS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FIREWORKS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SHOOTING_STAR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"INVISBLE_INK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"GENTLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LOUD"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"IMPACT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SPARKLES"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HEART"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ECHO"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SPOTLIGHT"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setEffect:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_effect = a3;
  }
}

- (void)setConversationIdentifier:(id)a3
{
  v4 = [a3 copy];
  conversationIdentifier = self->_conversationIdentifier;
  self->_conversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, conversationIdentifier);
}

- (void)setContent:(id)a3
{
  v4 = [a3 copy];
  content = self->_content;
  self->_content = v4;

  MEMORY[0x1EEE66BB8](v4, content);
}

- (int)StringAsAttributes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addAttribute:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

- (void)addAttachmentFile:(id)a3
{
  v4 = a3;
  attachmentFiles = self->_attachmentFiles;
  v8 = v4;
  if (!attachmentFiles)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_attachmentFiles;
    self->_attachmentFiles = v6;

    v4 = v8;
    attachmentFiles = self->_attachmentFiles;
  }

  [(NSArray *)attachmentFiles addObject:v4];
}

- (void)setAttachmentFiles:(id)a3
{
  v4 = [a3 mutableCopy];
  attachmentFiles = self->_attachmentFiles;
  self->_attachmentFiles = v4;

  MEMORY[0x1EEE66BB8](v4, attachmentFiles);
}

@end